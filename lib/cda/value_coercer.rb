module Cda
  module ValueCoercer
    extend self

    def date_to_string(value)
      value.strftime('%Y%m%d')
    end

    def date_time_to_string(value)
      value.strftime('%Y%m%d%H%M%S%z')
    end

    def string_to_time(value)
      return if value.blank?
      DateTime.strptime(value, '%Y%m%d%H%M%S%z') rescue
        Date.strptime(value, '%Y%m%d') rescue
          Date.strptime(value, '%Y%m') rescue
            Date.strptime(value, '%Y')
    end
  end
end