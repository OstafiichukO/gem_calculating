# frozen_string_literal: true

require_relative "lib/gem_calculating/version"

Gem::Specification.new do |spec|
  spec.name = "gem_calculating"
  spec.version = GemCalculating::VERSION
  spec.authors = ["Oleksii Ostafiichuk"]
  spec.email = ["issimo333@gmail.com"]

  spec.summary = "Simple calculator gem that can add, subtract, multiply, and divide."
  spec.description = "Calculator gem that can add, subtract, multiply, and divide"
  spec.homepage = "https://github.com/OstafiichukO/gem_calculating"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/OstafiichukO/gem_calculating"
  spec.metadata["changelog_uri"] = "https://github.com/OstafiichukO/gem_calculating/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'rspec', '~> 3.11.0'
  spec.add_development_dependency 'rubocop', '~> 1.21'
end
