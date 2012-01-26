Gem::Specification.new do |s|
  s.name = "cls"
  s.version = "0.0.1"

  s.authors = ["Gary Bernhardt"]
  s.email = ["gary.bernhardt@gmail.com"]
  s.files = Dir.glob("lib/**/*") + ["README.md"]
  s.homepage = %q{https://github.com/garybernhardt/cls}
  s.require_paths = ["lib"]
  s.summary = "Cls: terse syntax for your classes"
  s.description = "Cls: terse syntax for your classes"

  s.add_development_dependency "rspec"

  s.require_path = "lib"
  s.required_rubygems_version = ">= 1.3.6"
end
