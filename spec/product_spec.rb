require 'spec_helper'

describe Product do
  it { should validate_presence_of :name }

  describe 'show' do
    it 'shows the picture stored in AWS' do

end

