module TempoDB
  class DataPoint
    attr_accessor :ts, :value

    def initialize(ts, value)
      @ts = ts
      @value = value
    end

    def to_json(*a)
      {"t" => ts.iso8601(3), "v" => value}
    end

    def self.from_json(m)
      new(Time.parse(m["t"]), m["v"])
    end
  end
end

