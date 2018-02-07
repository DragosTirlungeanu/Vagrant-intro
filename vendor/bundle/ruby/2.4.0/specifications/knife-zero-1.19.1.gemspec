# -*- encoding: utf-8 -*-
# stub: knife-zero 1.19.1 ruby lib

Gem::Specification.new do |s|
  s.name = "knife-zero".freeze
  s.version = "1.19.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["sawanoboly".freeze]
  s.date = "2018-01-04"
  s.description = "Run chef-client at remote node with chef-zero(local-mode) via HTTP over SSH port fowarding.".freeze
  s.email = ["sawanoboriyu@higanworks.com".freeze]
  s.homepage = "http://knife-zero.github.io".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Run chef-client at remote node with chef-zero(local-mode) via HTTP over SSH port fowarding.".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.6"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<test-unit>.freeze, [">= 0"])
      s.add_development_dependency(%q<test-unit-rr>.freeze, [">= 0"])
      s.add_development_dependency(%q<test-unit-notify>.freeze, [">= 0"])
      s.add_development_dependency(%q<guard>.freeze, [">= 0"])
      s.add_development_dependency(%q<guard-shell>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov-rcov>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<chef>.freeze, [">= 12.6"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<test-unit>.freeze, [">= 0"])
      s.add_dependency(%q<test-unit-rr>.freeze, [">= 0"])
      s.add_dependency(%q<test-unit-notify>.freeze, [">= 0"])
      s.add_dependency(%q<guard>.freeze, [">= 0"])
      s.add_dependency(%q<guard-shell>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov-rcov>.freeze, [">= 0"])
      s.add_dependency(%q<chef>.freeze, [">= 12.6"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit-rr>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit-notify>.freeze, [">= 0"])
    s.add_dependency(%q<guard>.freeze, [">= 0"])
    s.add_dependency(%q<guard-shell>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov-rcov>.freeze, [">= 0"])
    s.add_dependency(%q<chef>.freeze, [">= 12.6"])
  end
end
