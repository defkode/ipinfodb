module Ipinfodb

  class << self
    attr_accessor :api_key
  end

  include HTTParty

  base_uri 'api.ipinfodb.com'

  def self.lookup(ip)
    params = {
      :format => 'json',
      :key    => api_key,
      :ip     => ip
    }

    body = get('/v3/ip-country/', :query => params).parsed_response

    if body['statusCode'] == 'OK'
      body
    else
      raise ArgumentError, body['statusMessage']
    end
  end

end
