# -*- encoding: utf-8 -*-
# stub: jekyll-theme-hydeout 4.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-theme-hydeout".freeze
  s.version = "4.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "plugin_type" => "theme" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Andrew Fong".freeze]
  s.bindir = "exe".freeze
  s.date = "2021-02-02"
  s.email = ["id@andrewfong.com".freeze]
  s.homepage = "https://github.com/fongandrew/hydeout".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.22".freeze
  s.summary = "The Hyde theme for Jekyll, refreshed.".freeze

  s.installed_by_version = "3.2.22" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<jekyll>.freeze, [">= 3.6", "< 5.0"])
    s.add_runtime_dependency(%q<jekyll-gist>.freeze, ["~> 1.4"])
    s.add_runtime_dependency(%q<jekyll-paginate>.freeze, ["~> 1.1"])
    s.add_runtime_dependency(%q<jekyll-feed>.freeze, ["~> 0.6"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 2.1", ">= 2.1.4"])
    s.add_development_dependency(%q<wdm>.freeze, ["~> 0.1"])
  else
    s.add_dependency(%q<jekyll>.freeze, [">= 3.6", "< 5.0"])
    s.add_dependency(%q<jekyll-gist>.freeze, ["~> 1.4"])
    s.add_dependency(%q<jekyll-paginate>.freeze, ["~> 1.1"])
    s.add_dependency(%q<jekyll-feed>.freeze, ["~> 0.6"])
    s.add_dependency(%q<bundler>.freeze, ["~> 2.1", ">= 2.1.4"])
    s.add_dependency(%q<wdm>.freeze, ["~> 0.1"])
  end
end
