require 'spec_helper'

describe 'monitoring::_samba' do
  describe user('portaj') do
    it { should exist }

    describe file('/home/portaj/.ssh/authorized_keys') do
      it { should be_a_file }
    end
  end
end
