require 'nokogiri'
require 'active_support/core_ext'
require 'yaml'

path =  'xsd/POCD_MT000040_SDTC.xsd'

doc = Nokogiri::XML(open(path).read).tap do |d|
  d.remove_namespaces!
end

db  = doc.xpath('//complexType').each_with_object({}) do |ct, acc|
  acc[ct[:name]] =  {
    attributes: ct.xpath('./attribute').map{|e| e[:name]}.sort,
    elements: ct.xpath('./sequence/element').to_a
  }
end

missed_types = []

attrs = Hash.new(0)
db.each do |name, ct|
  if ct[:attributes] != attrs
    attrs[ct[:attributes].join(",")] += 1
  end
end

puts missed_types.compact.uniq.sort.join("\n")

db.each do |name, ct|
  puts <<-RUBY
  class #{name.camelize}
  #{ct[:elements].map{|e| "   attribute :#{e[:name].try(:underscore) || e[:ref]}, #{e[:type]}"}.join("\n")}
  end
  RUBY
end

