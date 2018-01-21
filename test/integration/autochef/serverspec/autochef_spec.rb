require 'spec_helper'

describe 'monitoring::autochef' do
  describe package('monitoring') do
    it { should be_installed }
  end
end
