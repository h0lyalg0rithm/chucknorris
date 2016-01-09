Gem::Specification.new do |s|
  s.name        = 'chucknorris'
  s.version     = '0.0.2'
  s.date        = '2014-05-25'
  s.summary     = "ChuckNorris on ruby"
  s.description = "A ruby gem which displays random chuck norris jokes"
  s.authors     = ["Suraj Shirvankar"]
  s.email       = 'surajshirvankar@gmail.com'
  s.files       = ["lib/chucknorris.rb"]
  s.homepage    = 'https://github.com/h0lyalg0rithm/chucknorris'
  s.license     = 'MIT'
  s.add_development_dependency "bundler"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec", "~> 2.14.1"
  s.add_development_dependency "rspec-nc", "~> 0.0.6"
  s.add_development_dependency "guard"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "pry"
  s.add_development_dependency "pry-remote"
  s.add_development_dependency "pry-nav"
  s.add_development_dependency "growl"
  s.add_development_dependency "unirest"
end
