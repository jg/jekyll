Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'

  s.name              = 'jekyll'
  s.version           = '0.10.0'
  s.date              = '2010-12-16'
  s.rubyforge_project = 'jekyll'

  s.summary     = "A simple, blog aware, static site generator."
  s.description = "Jekyll is a simple, blog aware, static site generator."

  s.authors  = ["Tom Preston-Werner"]
  s.email    = 'tom@mojombo.com'
  s.homepage = 'http://github.com/mojombo/jekyll'

  s.require_paths = %w[lib]

  s.executables = ["jekyll"]
  s.default_executable = 'jekyll'

  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = %w[README.textile LICENSE]

  s.add_runtime_dependency('liquid', [">= 1.9.0"])
  s.add_runtime_dependency('classifier', [">= 1.3.1"])
  s.add_runtime_dependency('directory_watcher', [">= 1.1.1"])
  s.add_runtime_dependency('maruku', [">= 0.5.9"])

  s.add_development_dependency('redgreen', [">= 4.2.1"])
  s.add_development_dependency('shoulda', [">= 4.2.1"])
  s.add_development_dependency('rr', [">= 4.2.1"])
  s.add_development_dependency('cucumber', [">= 4.2.1"])
  s.add_development_dependency('RedCloth', [">= 4.2.1"])
  s.add_development_dependency('kramdown', [">= 0.12.0"])

  # = MANIFEST =
  s.files = %w[
    History.txt
    LICENSE
    README.textile
    Rakefile
    bin/jekyll
    cucumber.yml
    jekyll.gemspec
  ]
  # = MANIFEST =
  s.files += Dir['features/**/*.rb']
  s.files += Dir['test/**/*.rb']
  s.files += Dir['lib/**/*.rb']

  s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
end
