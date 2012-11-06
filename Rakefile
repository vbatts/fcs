#!/usr/bin/env rake

require 'bundler/gem_tasks'
require 'rake/testtask'

# http://rake.rubyforge.org/classes/Rake/TestTask.html
Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/test*.rb']
  t.verbose = true
end

# vim: set sw=2 sts=2 ai et:
