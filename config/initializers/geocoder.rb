# config/initializers/geocoder.rb

Geocoder.configure(
  
      # name of geocoding service (symbol)
      :lookup => :bing,

      # API key for geocoding service
      :api_key => "AkCFUIHpL0aDgQvmmK1aHsx51iY_Q5eWUF6u0FXaiwdtd9QK0Hq5D5FR16pEaNg7",

      # geocoding service timeout (secs)
      :timeout => 5,

      # ISO-639 language code
      # [:language, :en],

      # use HTTPS for lookup requests? (if supported)
      # [:use_https, false],

      # HTTP proxy server (user:pass@host:port)
      # [:http_proxy, nil],

      # HTTPS proxy server (user:pass@host:port)
      # [:https_proxy, nil],

      # cache object (must respond to #[], #[]=, and #keys)
      # [:cache, nil],

      # prefix (string) to use for all cache keys
      # [:cache_prefix, "geocoder:"],

      # exceptions that should not be rescued by default
      # (if you want to implement custom error handling);
      # supports SocketError and TimeoutError
      # [:always_raise, []]
  )
#	Geocoder::Configuration.timeout = 5
#	Geocoder::Configuration.cache = Redis.new