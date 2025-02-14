lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'date'

require 'seccomp-tools/version'

Gem::Specification.new do |s|
  s.name          = 'seccomp-tools'
  s.version       = ::SeccompTools::VERSION
  s.date          = Date.today.to_s
  s.summary       = 'seccomp-tools'
  s.description   = <<-EOS
Provide useful tools to analyze seccomp rules.
Visit https://github.com/david942j/seccomp-tools for more details.
  EOS
  s.license       = 'MIT'
  s.authors       = ['david942j']
  s.email         = ['david942j@gmail.com']
  s.files         = Dir['lib/**/*.rb'] + Dir['lib/seccomp-tools/templates/*'] + Dir['bin/*'] + Dir['ext/**/*'] + %w(README.md)
  s.extensions    = %w[ext/ptrace/extconf.rb]
  s.executables   = 'seccomp-tools'

  s.metadata = {
    'bug_tracker_uri' => 'https://github.com/david942j/seccomp-tools/issues',
    'documentation_uri' => 'https://www.rubydoc.info/github/david942j/seccomp-tools/master',
    'homepage_uri' => 'https://github.com/david942j/seccomp-tools',
    'source_code_uri' => 'https://github.com/david942j/seccomp-tools'
  }

  s.required_ruby_version = '>= 2.3'

  s.add_development_dependency 'pry', '~> 0.10'
  s.add_development_dependency 'rake', '~> 12.0'
  s.add_development_dependency 'rake-compiler', '~> 1.0'
  s.add_development_dependency 'rspec', '~> 3.7'
  s.add_development_dependency 'rubocop', '~> 0.59'
  s.add_development_dependency 'simplecov', '~> 0.17.0'
  s.add_development_dependency 'yard', '~> 0.9'
end
