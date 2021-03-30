# WxBizDataCrypt

The Ruby Gem for Wechat Descrypt Data Algorithm
https://developers.weixin.qq.com/miniprogram/dev/framework/open-ability/signature.html#%E5%8A%A0%E5%AF%86%E6%95%B0%E6%8D%AE%E8%A7%A3%E5%AF%86%E7%AE%97%E6%B3%95


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'wx_biz_data_crypt'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install wx_biz_data_crypt

## Usage
Run `bin/console`, and try code below:
```ruby
app_id = 'wx4f4bc4dec97d474b'
encoded_session_key = 'tiihtNczf5v6AKRyjwEUhQ=='
encoded_encrypted_data = 'CiyLU1Aw2KjvrjMdj8YKliAjtP4gsMZMQmRzooG2xrDcvSnxIMXFufNstNGTyaGS9uT5geRa0W4oTOb1WT7fJlAC+oNPdbB+3hVbJSRgv+4lGOETKUQz6OYStslQ142dNCuabNPGBzlooOmB231qMM85d2/fV6ChevvXvQP8Hkue1poOFtnEtpyxVLW1zAo6/1Xx1COxFvrc2d7UL/lmHInNlxuacJXwu0fjpXfz/YqYzBIBzD6WUfTIF9GRHpOn/Hz7saL8xz+W//FRAUid1OksQaQx4CMs8LOddcQhULW4ucetDf96JcR3g0gfRK4PC7E/r7Z6xNrXd2UIeorGj5Ef7b1pJAYB6Y5anaHqZ9J6nKEBvB4DnNLIVWSgARns/8wR2SiRS7MNACwTyrGvt9ts8p12PKFdlqYTopNHR1Vf7XjfhQlVsAJdNiKdYmYVoKlaRv85IfVunYzO0IKXsyl7JCUjCpoG20f0a04COwfneQAGGwd5oa+T8yO5hzuyDb/XcxxmK01EpqOyuxINew=='
encoded_iv = 'r7BXXKkLb8qrSNn05n0qiA=='

# way 1:
WxBizDataCrypt::Base.new(app_id, encoded_session_key).decrypt(encoded_encrypted_data, encoded_iv)

# way 2:
## this way would not invoke the app_id and thus it does not ensure the correction of app_id
WxBizDataCrypt.decrypt(encoded_session_key, encoded_encrypted_data, encoded_iv)
```



## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/wx_biz_data_crypt. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/wx_biz_data_crypt/blob/master/CODE_OF_CONDUCT.md).


## Code of Conduct

Everyone interacting in the WxBizDataCrypt project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/wx_biz_data_crypt/blob/master/CODE_OF_CONDUCT.md).
