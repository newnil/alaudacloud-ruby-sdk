require 'spec_helper'
describe Alauda do
  it 'show Hello Captain' do
    Alauda.api_key = "test"
    expect(Alauda.api_key).to eq "test"
  end
end
