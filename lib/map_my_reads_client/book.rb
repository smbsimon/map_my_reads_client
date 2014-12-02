module MapMyReadsClient
  class Book
    attr_reader :title

    def initialize(data)
      @title = data[0]["title"]
    end
  end
end
