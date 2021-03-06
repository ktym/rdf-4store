#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

GEMSPEC = Gem::Specification.new do |gem|
  gem.version            = File.read('VERSION').chomp
  gem.date               = File.mtime('VERSION').strftime('%Y-%m-%d')

  gem.name               = 'rdf-4store'
  gem.homepage           = 'http://github.com/fumi/rdf-4store'
  gem.license            = 'Public Domain' if gem.respond_to?(:license=)
  gem.summary            = '4store adapter for RDF.rb.'
  gem.description        = 'RDF.rb plugin providing 4store storage adapter.'
  gem.rubyforge_project  = 'rdf'

  gem.authors            = ['Fumihiro Kato']
  gem.email              = 'fumi@fumi.me'

  gem.platform           = Gem::Platform::RUBY
  gem.files              = %w(AUTHORS README UNLICENSE VERSION) + Dir.glob('lib/**/*.rb')
  gem.bindir             = %q(bin)
  gem.executables        = %w()
  gem.default_executable = gem.executables.first
  gem.require_paths      = %w(lib)
  gem.extensions         = %w()
  gem.test_files         = %w()
  gem.has_rdoc           = false

  gem.required_ruby_version      = '>= 1.8.7'
  gem.requirements               = ['4store 1.0.3 or greater']
  gem.add_development_dependency 'rdf-spec',    '>= 0.3.0'
  gem.add_development_dependency 'rspec',       '>= 2.1.0'
  gem.add_runtime_dependency     'rdf',         '>= 0.3.0'
  gem.add_runtime_dependency     'nokogiri',         '>= 1.4.1'
  gem.add_runtime_dependency     'sparql-client',         '>= 0.0.7'
  gem.post_install_message       = nil
end
