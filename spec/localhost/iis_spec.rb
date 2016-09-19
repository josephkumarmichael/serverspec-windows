require 'spec_helper'
describe windows_feature('IIS-Webserver') do
  it{ should be_installed }
end
describe port(80) do
  it { should be_listening }
end
describe file('c:/website') do
  it { should be_directory }
end
