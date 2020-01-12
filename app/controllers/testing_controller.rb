class TestingController < ApplicationController

    def client
        client = Cryptoexchange::Client.new
        pairs = client.pairs("bitflyer")
        pair = pairs.first
        @ticker = client.ticker(pair)

    end
end
