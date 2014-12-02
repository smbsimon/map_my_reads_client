require 'minitest/autorun'
require 'minitest/pride'
require './lib/map_my_reads_client/client'

class ClientTest < Minitest::Test
  def test_it_exists
    assert MapMyReadsClient::Client
  end

  def test_it_finds_books
    client = MapMyReadsClient::Client.new('http://localhost:3000')
    book = client.find_books
    assert_equal "Eloquent Ruby", book.title
  end
end
