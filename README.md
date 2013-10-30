# ipinfodb

Ruby gem for IP address geolocation via API calls to [IPInfoDB.com](http://ipinfodb.com/).


## Installation

```
gem install ipinfodb
```


## Usage

```ruby
Ipinfodb.api_key = "your_api_key_here"
Ipinfodb.lookup('153.19.48.1')
```

You will receive the following `Hash` as a response (for successful lookups):

```ruby
{
  "statusCode"    : "OK",
  "statusMessage" : "",
  "ipAddress"     : "153.19.48.1",
  "countryCode"   : "PL",
  "countryName"   : "POLAND"
}
```


## Running tests

```
IPINFODB_API_KEY=<apikey> rake test
```

Copyright © 2011-2013 Tomasz Mazur, released under the MIT license
