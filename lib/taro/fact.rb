module Taro
  class Fact
    attr_reader :entity_id, :property, :value

    def initialize(entity_id, property, value)
      @entity = entity
      @property = property
      @value = value
    end

    def to_record(time)
      Record.new(entity, property, value, time)
    end
  end
end
