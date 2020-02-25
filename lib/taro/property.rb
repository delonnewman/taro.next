module Taro
  class Property
    attr_reader :name, :namespace

    def initialize(name, namespace)
      @name = name
      @namespace = namespace
    end

    def to_sym
      :"#{namespace}/#{name}"
    end
  end
end
