require 'bundler'
require 'rake/testtask'

Bundler::GemHelper.install_tasks

Rake::TestTask.new do |test|
  test.libs << 'test'
  test.pattern = 'test/*_test.rb'
end
