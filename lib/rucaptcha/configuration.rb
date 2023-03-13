module RuCaptcha
  class Configuration
    # Store Captcha code where, this config more like Rails config.cache_store
    # default: Rails application config.cache_store
    attr_accessor :cache_store
    # rucaptcha expire time, default 2 minutes
    attr_accessor :expires_in
    # Chars length: default 5, allows: [3..7]
    attr_accessor :length
    # Hard mode, default: 5, allows: [1..10]
    attr_accessor :difficulty
    # skip_cache_store_check, default: false
    attr_accessor :skip_cache_store_check
    # 自定义验证码字符集
    attr_accessor :captcha_char
  end
end
