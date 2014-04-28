Kernel.load 'lib/mkvmuxer/version.rb'

Gem::Specification.new { |s|
  s.name          = 'mkvmuxer'
  s.version       = MkvMuxer::VERSION
  s.author        = 'Giovanni Capuano'
  s.email         = 'webmaster@giovannicapuano.net'
  s.homepage      = 'http://www.giovannicapuano.net'
  s.platform      = Gem::Platform::RUBY
  s.summary       = 'Wrapper for mkvmerge.'
  s.description   = 'Wrapper for mkvmerge (mkvtoolnix) to mux video, audio, subtitles, etc. in a Matroska container.' 
  s.licenses      = 'WTFPL'

  s.require_paths = ['lib']
  s.files         = Dir.glob('lib/**/*.rb')
  s.test_files    = Dir.glob('test/**/*_spec.rb')
  s.executables   = 'mkvmuxer'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
}