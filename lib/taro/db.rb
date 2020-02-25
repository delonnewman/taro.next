module Taro
  module DB
  end

  class InMemoryDB < Hash
    def initialize
      @time = 0
      @eavt = EAVT.new
      @aevt = AEVT.new
      @avet = AVET.new
    end

    def store(fact)
      @time += 1
      super(fact.entity, fact.to_record(@time))
    end

    class EAVT < Hash
      def store(fact, time)
        super(fact.entity_id, fact.to_record(time))
      end
    end
  end
end
