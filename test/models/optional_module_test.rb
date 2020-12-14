require 'test_helper'

class OptionalModuleTest < ActiveSupport::TestCase
  
  test "should not save invalid optional module" do
    optional_module = OptionalModule.new
    assert_not optional_module.save
  end

  test "should save valid optional module" do
    optional_module = optional_modules(:one)
    assert optional_module.save
  end
end
