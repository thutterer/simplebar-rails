Gem::Specification.new do |spec|
  spec.name          = "simplebar-rails"
  spec.version       = "2.5.0"

  spec.authors       = ["Thomas Hutterer"]
  spec.email         = ["thutterer@suse.de"]

  spec.summary       = 'The SimpleBar Javascript library for the Rails asset pipeline.'
  spec.description   = <<-EOF
    SimpleBar is a plugin that tries to solve a long time problem : how to get custom scrollbars for your web-app?
    This gem allows for its easy inclusion into the rails asset pipeline.
  EOF

  spec.homepage      = "https://github.com/thutterer/simplebar-rails"
  spec.license       = "MIT"

  spec.files         = Dir["{lib,vendor}/**/*"]

  spec.add_dependency "railties", ">= 3.1"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
