require 'spec_helper'

describe IncomingCall do
  before(:each) do
    @caller_id = "14156667788"
    @user_id = 1
    @caller_name = "htc g1"
    @existing_contact = Contact.create({ :user_id => @user_id, :name => @caller_name, :number => @caller_id })
  end

  it "should set from_name for existing contact upon creation" do
    pending
    incoming = IncomingCall.create(:caller_id => @caller_id, :user_id => @user_id)
    incoming.caller_name.should == @caller_name
  end

  it "should set from_name to unknown caller for non-existing contact" do
    pending
    incoming = IncomingCall.create(:caller_id => "whatever caller", :user_id => @user_id)
    incoming.caller_name.should == "Unknown caller"
  end
end
