module Gen
  module Codeg
    def gklass(mod, name, parent, body)
      content = []
      content<< "module #{mod}" if mod
      content<< "class #{name}"
      content.last<< " < #{parent}" if parent
      content<< indent("include Virtus.model", 2)
      content<< indent(body, 2)
      content<< "end"
      content<< "end" if mod
      content.join("\n")
    end

    def gmodule(name, body)
      content = []
      content << "module #{name}"
      content << indent(body, 2)
      content << "end"
      content.join("\n")
    end

    def generate_attribute(aname, type, opts)
      if opts.delete :multiple
        type = "Array[#{type}]"
      end

      res = []
      comment = opts.delete(:comment)
      res << "# #{comment.gsub(/\s+$/,'')}" if comment.present?

      attr = ["attribute :#{Namings.normalize_name(aname)}", type, hash_to_str(opts).presence]
      res << attr.compact.join(', ')
      res.join("\n")
    end

    private

    def indent(str, size)
      str.split("\n")
      .map { |s| (' ' * size) + s}
      .join("\n")
    end

    def hash_to_str(hash)
      hash.map { |k,v| "#{k}: #{v.inspect}" }.join(', ')
    end
    extend self
  end
end
