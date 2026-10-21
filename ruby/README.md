# User Agent Generator API - Ruby Gem

User Agent Generator creates realistic user agent strings for desktop, mobile, and tablet devices. Each request outputs the complete string with parsed browser and operating system names and versions, while paid plans add engine and CPU details.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_useragentgenerator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_useragentgenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_useragentgenerator'

# Initialize the client
client = APIVerve::Useragentgenerator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ device: "desktop" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ device: "desktop" })
  puts response["data"]
rescue APIVerve::Useragentgenerator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Useragentgenerator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Useragentgenerator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "ua": "Mozilla/5.0 (Windows NT 6.4) AppleWebKit/537.36.0 (KHTML, like Gecko) Chrome/94.0.0.0 Safari/537.36.0",
    "browser": {
      "name": "Chrome",
      "version": "94.0.0.0",
      "major": "94"
    },
    "engine": {
      "name": "Blink",
      "version": "94.0.0.0"
    },
    "os": {
      "name": "Windows",
      "version": "10"
    },
    "device": {},
    "cpu": {}
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/useragentgenerator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/useragentgenerator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/useragentgenerator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
