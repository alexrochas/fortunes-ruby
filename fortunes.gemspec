Gem::Specification.new do |s|
  s.name        = 'fortunes-ruby'
  s.version     = '0.0.1'
  s.date        = '2016-07-16'
  s.summary     = "Fortunes"
  s.description = "Debian fortunes port to ruby"
  s.authors     = ["Alex Rocha"]
  s.email       = 'alex.rochas@yahoo.com'
  s.files       = `git ls-files`.split($/)
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.homepage    = 'https://github.com/alexrochas/fortunes-ruby'
  s.license     = 'MIT'
  s.executables << 'fortunes-ruby'

  s.add_dependency "sinatra"
  s.add_dependency "pickup"
end