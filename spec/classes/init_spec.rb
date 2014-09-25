require 'spec_helper'

describe 'deptest_profiles' do

  #before :each do
  #  Puppet.features.expects(:root?).returns(true).at_least_once
  #end

  it {
    #Puppet::Util::Log.level = :debug
    #Puppet::Util::Log.newdestination(:console)
    should compile
  }


end
