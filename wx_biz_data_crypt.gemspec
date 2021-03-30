require_relative 'lib/wx_biz_data_crypt/version'

Gem::Specification.new do |spec|
  spec.name          = "wx_biz_data_crypt"
  spec.version       = WxBizDataCrypt::VERSION
  spec.authors       = ["Yanying Wang"]
  spec.email         = ["yanyingwang1@gmail.com"]

  spec.summary       = %q{The Ruby Gem for Wechat Descrypt Data Algorithm.}
  spec.description   = %q{Write a short summary, because RubyGems.}
  spec.homepage      = "https://github.com/yanyingwang/wx_biz_data_crypt"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/yanyingwang/wx_biz_data_crypt"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
