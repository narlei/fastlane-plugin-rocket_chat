# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/rocket_chat/version'

Gem::Specification.new do |s|
  s.name          = 'fastlane-plugin-rocket_chat'
  s.version       = Fastlane::RocketChat::VERSION
  s.platform      = Gem::Platform::RUBY
  s.author        = %q{Thiago Felix}
  s.email         = %q{thiago@thiagofelix.com}

  s.summary       = %q{Send message to Rocket.Chat right from fastlane}
  s.homepage      = "https://github.com/thiagofelix/fastlane-plugin-rocket_chat"
  s.license       = "MIT"

  s.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  s.test_files    = s.files.grep(%r{^(test|s|features)/})
  s.require_paths = ['lib']

  s.add_dependency 'rocket-chat-notifier', '~> 0.1.0'

  s.add_development_dependency 'pry'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'fastlane', '>= 1.96.0'
end
