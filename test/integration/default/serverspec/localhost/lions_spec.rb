require 'spec_helper'

describe 'lions site' do
  it 'responds on port 8080' do
    expect(port 8080).to be_listening 'tcp'
  end

  it 'returns lions in the HTML body' do
    expect((command 'curl localhost:8080').stdout).to match(/lions/)
  end
end
