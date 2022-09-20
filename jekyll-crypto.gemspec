Gem::Specification.new do |spec|
  spec.name          = 'jekyll-crypto'
  spec.version       = '0.1.3'
  spec.authors       = %w[f]
  spec.email         = %w[f@sutty.nl]

  spec.summary       = 'Symmetrically encrypt posts'
  spec.description   = 'Encrypts post so only people with the password can decrypt them!'
  spec.homepage      = "https://0xacab.org/sutty/jekyll/#{spec.name}"
  spec.license       = 'GPL-3.0'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata = {
    'bug_tracker_uri' => "#{spec.homepage}/issues",
    'homepage_uri' => spec.homepage,
    'source_code_uri' => spec.homepage,
    'changelog_uri' => "#{spec.homepage}/-/blob/master/CHANGELOG.md",
    'documentation_uri' => "https://rubydoc.info/gems/#{spec.name}"
  }

  spec.files         = Dir['lib/**/*']
  spec.require_paths = %w[lib]

  spec.extra_rdoc_files = Dir['README.md', 'CHANGELOG.md', 'LICENSE.txt']
  spec.rdoc_options += [
    '--title', "#{spec.name} - #{spec.summary}",
    '--main', 'README.md',
    '--line-numbers',
    '--inline-source',
    '--quiet'
  ]

  spec.add_dependency 'jekyll', '~> 4'
  spec.add_dependency 'json', '~> 2.3'

  spec.add_development_dependency 'minima', '~> 2.5'
  spec.add_development_dependency 'pry', '~> 0.12'
  spec.add_development_dependency 'jekyll-relative-urls', '~> 0'
end
