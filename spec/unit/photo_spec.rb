require 'spec_helper'

describe Photor::Photo do
  
  let(:photo) { described_class.new }

  it 'gets recent photos' do
    expect(photo.getRecent).not_to be_empty
  end

end