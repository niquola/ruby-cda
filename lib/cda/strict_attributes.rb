module Cda
  module StrictAttributes
    #noinspection RubySuperCallWithoutSuperclassInspection
    def initialize(attributes = nil)
      check_attributes_allowed(attributes) if !attributes.nil? && attributes.is_a?(Hash)
      super
    end

    def check_attributes_allowed(attributes)
      wrong_attributes = attributes.keys.reject { |attr| allowed_writer_methods.include?("#{attr}=") }
      unless wrong_attributes.empty?
        raise ArgumentError, "You have invalid attributes in initialization hash (for #{self.class.name}): #{wrong_attributes.join(', ')}"
      end
    end
  end
end