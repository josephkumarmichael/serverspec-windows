require 'spec_helper'
describe package('node.js') do
  it { should be_installed }
end
describe command('npm --help') do
  its(:stdout) { should match /Usage: npm <command>/ }
end
describe command('npm list -g jshint') do
  its(:stdout) { should match /jshint/ }
end
describe command('npm list -g semver') do
  its(:stdout) { should match /semver/ }
end
