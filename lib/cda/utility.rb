module Cda
  module Utility
    extend self

    def merge_json(x, y)
      hash_to_object object_to_hash(x).deep_merge(object_to_hash(y))
    end

    def hash_to_object(hash)
      return hash unless Hash === hash
      is_array = !hash.empty? && hash.keys.all? { |x| x.is_a?(Integer) }
      acc = is_array ? [] : {}
      hash.reduce(acc) { |acc, (k, v)| acc[k] = hash_to_object(v); acc }
    end

    def object_to_hash(object)
      case object
        when Array
          if object.size == 1
            value = object_to_hash(object[0])
            Hash.new { |h, k| k.is_a?(Integer) ? h[k] = value : nil }.merge(0 => value)
          else
            object.each_with_index.reduce({}) do |acc, (elem, index)|
              acc[index] = object_to_hash(elem)
              acc
            end
          end
        when Hash
          object.reduce({}) do |acc, (key, value)|
            acc[key] = object_to_hash(value)
            acc
          end
        else
          object
      end
    end

    def mk_class(attrs)
      return attrs unless attrs.is_a?(Hash)

      res = attrs.reduce({}) do |acc, (k, v)|
        acc[k.to_sym] = case v
                          when Hash
                            mk_class(v)
                          when Array
                            v.map { |vv| mk_class(vv) }
                          else
                            v
                        end
        acc
      end

      if res.key?(:_type)
        res.delete(:_type).constantize.new res
      else
        res
      end
    end
  end
end