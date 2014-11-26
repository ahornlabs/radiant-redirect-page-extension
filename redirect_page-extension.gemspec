# encoding: UTF-8
require File.expand_path("../lib/redirect_page-extension.rb", __FILE__)

Gem::Specification.new do |s|
  s.name        = "redirect_page-extension"
  s.version     = PageRedirect::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = PageRedirect::AUTHORS
  s.email       = PageRedirect::EMAIL
  s.homepage    = PageRedirect::HOMEPAGE
  s.description = PageRedirect::DESCRIPTION
  s.summary     = PageRedirect::SUMMARY
  s.files       = `git ls-files`.split("\n")
end
