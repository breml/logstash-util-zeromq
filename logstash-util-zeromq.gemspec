Gem::Specification.new do |s|

  s.name            = 'logstash-util-zeromq'
  s.version         = '2.0.0'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = "Utility functions for 0MQ in Logstash."
  s.description     = "This gem contains utility functions, used by 0MQ logstash plugins. This gem is not a stand-alone program"
  s.authors         = ["Elastic"]
  s.email           = 'info@elastic.co'
  s.homepage        = "http://www.elastic.co/guide/en/logstash/current/index.html"
  s.require_paths = ["lib"]

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Gem dependencies
  s.add_runtime_dependency "logstash-core", ">= 2.0.0", "< 3.0.0"

  s.add_runtime_dependency 'ffi-rzmq', '~> 2.0.4'

  s.add_development_dependency 'logstash-devutils'
end
