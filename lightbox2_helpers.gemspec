# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{lightbox2_helpers}
  s.version = "0.5.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Enrique Garcia Cota (egarcia)"]
  s.date = %q{2009-08-04}
  s.description = %q{lightbox2_helpers helpers for using lightbox2 on rails}
  s.email = %q{egarcia@splendeo.es}
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    "init.rb",
    "lib/lightbox2_helpers.rb",
    "lib/lightbox2_helpers/lightbox2_helpers.rb",
    "lib/lightbox2_helpers/form_helpers.rb",
    "lib/lightbox2_helpers/includes_helper.rb",
    "public/images/lightbox2_helpers/bullet.gif",
    "public/images/lightbox2_helpers/close.gif",
    "public/images/lightbox2_helpers/closelabel.gif",
    "public/images/lightbox2_helpers/download-icon.gif",
    "public/images/lightbox2_helpers/loading.gif",
    "public/images/lightbox2_helpers/nextlabel.gif",
    "public/images/lightbox2_helpers/prevlabel.gif",
    "public/javascripts/lightbox2_helpers/builder.js",
    "public/javascripts/lightbox2_helpers/effects.js",
    "public/javascripts/lightbox2_helpers/lightbox.js",
    "public/stylesheets/lightbox2_helpers/lightbox.css"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/splendeo/lightbox2_helpers}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{lightbox2_helpers helpers for using lightbox2 on rails}
  s.test_files = [ ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
