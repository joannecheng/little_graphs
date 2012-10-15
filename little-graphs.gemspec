Gem::Specification.new do |s|
  s.name      = 'little-graphs'
  s.version   = '0.0.0' 
  s.date      = '2012-10-15'
  s.summary   = 'Sparklines using rmagick'
  s.authors   = ['J. Cheng']
  s.email     = 'jcheng@absolute-performance.com'
  s.files     = [`git ls-files`.split($\)]
  s.test_files  = s.files.grep(%r{^(test|spec|features)/})

  s.add_dependency "rmagick"
end
