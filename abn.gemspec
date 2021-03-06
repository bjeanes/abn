Gem::Specification.new do |s|
  s.name              = "abn"
  s.version           = "1.2.0"
  s.summary           = "a (very) small library for working with Australian Business Numbers."
  s.description       = "a (very) small library for working with Australian Business Numbers."
  s.author            = "James Healy"
  s.email             = "jimmy@deefa.com"
  s.homepage          = "http://github.com/yob/abn/tree/master"
  s.has_rdoc          = true
  s.rdoc_options      << "--title" << "ABN" << "--line-numbers"
  s.rubyforge_project = "yob-projects"
  s.add_dependency      'soap4r', '>= 1.5.8' # at least this is what i am devving with
  s.test_files        = [ "spec/abn_spec.rb" ]
  s.files             = [ "lib/abn.rb", "MIT-LICENSE", "README.rdoc" ]
end
