#!/usr/bin/env rake
require "bundler/gem_tasks"

require "rspec/core/rake_task"

RSpec::Core::RakeTask.new do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rspec_opts = ['--backtrace']
end

$: << File.expand_path("lib", File.dirname(__FILE__))
Dir["#{File.dirname(__FILE__)}/lib/wareki/tasks/**/*.rake"].sort.each { |ext| load ext }
