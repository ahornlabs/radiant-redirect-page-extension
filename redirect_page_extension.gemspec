# encoding: UTF-8
require File.expand_path("../lib/redirect_page_extension.rb", __FILE__)

Gem::Specification.new do |s|
  s.name        = "redirect_page_extension"
  s.version     = RedirectPageExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = RedirectPageExtension::AUTHORS
  s.email       = RedirectPageExtension::EMAIL
  s.homepage    = RedirectPageExtension::HOMEPAGE
  s.description = RedirectPageExtension::DESCRIPTION
  s.summary     = RedirectPageExtension::SUMMARY
  s.files       = `git ls-files`.split("\n")
end
