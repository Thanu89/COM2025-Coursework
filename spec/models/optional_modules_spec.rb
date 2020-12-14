require 'rails_helper'

RSpec.describe OptionalModule, type: :model do
  
  it "has account" do
    @optional_module = OptionalModule.create(name: "test1234", description: "A test module1234", id:12)
    @account = Account.create(:id => 1, :email => "test1233@email.com", :encrypted_password => "password1231", :name => "test12312")

    @account.optional_modules << @optional_module

    @account.optional_modules.should == [@optional_module]
  end

  it "should delete optional module association" do
    @optional_module = OptionalModule.create(name: "test1234", description: "A test module1234", id:21)
    @account = Account.create(:id => 17, :email => "test1233@email.com", :encrypted_password => "password1231", :name => "test12312")

    @account.optional_modules << @optional_module
    @account.optional_modules.delete(@optional_module)

    #@account.optional_modules.should.empty?
    @account.optional_modules.should == []
  end
end