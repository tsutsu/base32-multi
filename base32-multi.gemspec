require File.expand_path("../lib/base32/version", __FILE__)

Gem::Specification.new do |s|
  s.name              = 'base32-multi'
  s.rubyforge_project = 'base32-multi'

  s.platform          = Gem::Platform::RUBY
  s.version           = Base32::VERSION.to_s

  s.summary           = "Multi-variant Base32 encoder and decoder"
  s.description       = "pure-ruby encoding and decoding of Base32 with support for zbase32 and Crockford's base32"
  s.license           = 'MIT'

  s.authors           = ["Sean Keith McAuley"]
  s.email             = 'tsu@peripia.com'
  s.homepage          = 'https://github.com/tsutsu/base32-multi'

  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables       = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths     = ["lib"]
end

