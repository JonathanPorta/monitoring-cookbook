require 'spec_helper'

describe 'prometheus::autochef' do
  describe package('prometheus') do
    it { should be_installed }
  end
end
