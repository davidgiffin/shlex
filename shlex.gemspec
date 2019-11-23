Gem::Specification.new do |s|
  s.extensions << 'ext/Rakefile'
  s.name = 'shlex'
  s.version = '0.0.1'
  s.files = %w(shlex.gemspec) + Dir.glob("{lib,spec,ext}/**/*")
  s.summary = %q{Write a short summary, because Rubygems requires one.}
  s.authors = ['David Giffin']
  s.email   = 'david@giffin.org'
  s.add_dependency 'rake'
  s.add_dependency 'json'
  s.add_dependency 'ostruct'
end
