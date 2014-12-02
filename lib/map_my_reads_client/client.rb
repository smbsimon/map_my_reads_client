require 'faraday'
require 'json'
require_relative 'book'

module MapMyReadsClient
  class Client
    attr_reader :connection

    def initialize(host)
      @connection = Faraday.new(:url => host)
    end

    def find_books
      data = JSON.parse( @connection.get("/api/v1/books.json").body )
      Book.new(data)
    end
  end
end
