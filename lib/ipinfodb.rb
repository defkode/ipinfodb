require 'httparty'

module Ipinfodb
  
  class << self
    attr_accessor :api_key
  end
  
  include HTTParty
  
  base_uri "api.ipinfodb.com"

  def self.lookup(ip)
    params = {
      :output => "json",
      :key    => api_key,
      :ip     => ip
    }
    
    body = get("/v2/ip_query_country.php", :query => params).parsed_response
    if body["Status"] == "OK"
      body
    else
      raise ArgumentError, body["Status"]
    end
  end
end
