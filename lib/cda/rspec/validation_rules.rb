module Cda
  module RSpec
    module ValidationRules
      def shall_contain_exactly_one(*xpath, &block)
        shall have(1).item, *(xpath + [{message: "Shall contain exactly one #{xpath}"}]) do |result|
          validate_rules_for result.first, &block if block_given?
        end
      end

      def shall_contain_at_least_one(*xpath, &block)
        shall have_at_least(1).item, *(xpath + [{message: "Shall contain at least one #{xpath}"}]) do |result|
          validate_rules_for result.first, &block if block_given?
        end
      end

      def shall_not_contain(*xpath)
        shall be_empty, *(xpath + [{message: "Shall not contain #{xpath}"}])
      end

      def shall(matcher, *args)
        opts = args.extract_options!
        result = find_by_xpath(*args)
        result.should matcher, opts[:message]
        yield result if block_given?
      end

      def find_by_xpath(*args)
        xpath = args.first
        if xpath.is_a?(Hash)
          xpath, condition = xpath.keys.first, xpath_condition(xpath.values.first)
        else
          condition = xpath_condition(args[1])
        end
        xpath = "#{xpath}[#{condition}]" if condition
        _element.xpath(xpath.to_s)
      end

      def xpath_condition(condition)
        case condition
        when Hash
          condition.map { |k, v| xpath_eq(k, v) }.join(' and ')
        when String
          %(text()="#{condition}")
        else
          nil
        end
      end

      def xpath_eq(name, value)
        if name.to_s.include?(':')
          _, ns_less_name = name.to_s.split(':')
          %(@#{ns_less_name}="#{value}")
        else
          %(@#{name}="#{value}")
        end
      end


      def _element
        @_element || document.root
      end

      def validate_rules_for(element)
        saved_element, @_element = @_element, element
        yield
      ensure
        @_element = saved_element
      end
    end
  end
end
