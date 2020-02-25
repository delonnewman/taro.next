module Taro
  class Record
    attr_reader :entity, :property, :value, :time

    def initialize(entity, property, value, time)
      @entity = entity
      @property = property
      @value = value
      @time = time
    end
  end
end
