module Taro
  class Entity
    attr_reader :records, :properties

    def initialize(records)
      @records = records
      @properties = records.map { |r| [r.property, r.value] }.to_h
    end

    def [](property)
      prop = Property.ensure_property(property)
      @properties[prop]
    end

    alias to_h properties
  end
end
