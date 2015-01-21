Gem::Specification.new do |s|
  s.name        = 'coverageval'
  s.version     = '0.1'
  s.date        = '2015-01-21'
  s.summary     = ""
  s.description = "This gem will check if a coverage file meets the expected level. If it doesn't it will exit with a exit code of 1. This can be used in tools such as Jenkins to check if the coverage meets the expected level."
  s.authors     = ["Andrew Moore"]
  s.email       = 'mooreandrew@gmail.com'
  s.homepage    =
    'https://github.com/mooreandrew/coverageval'
  s.license       = 'MIT'
  s.add_dependency 'nokogiri', '>= 1.3.15'
  s.files            = ["lib/coverageval.rb", "README.md", "LICENSE"]
  s.executables      = ["coverageval"]
  s.require_path     = "lib"
end
