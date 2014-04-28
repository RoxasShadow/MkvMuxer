#! /usr/bin/env ruby
require 'rake'

task :default => [ :build, :install, :test ]

task :build do
  sh 'gem build *.gemspec'
end

task :install do
  sh 'gem install *.gem'
end

task :test do
  sh 'gem install rspec --no-force'
  
  FileUtils.cd 'spec' do
    sh 'rspec mkvmuxer_spec.rb --backtrace --color --format doc'
  end
end