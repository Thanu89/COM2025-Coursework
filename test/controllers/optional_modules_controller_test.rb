require 'test_helper'

class OptionalModulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @optional_module = optional_modules(:one)
  end

  test "should get new" do
    get new_optional_module_url
    assert_response :success
  end

  test "should show optional_module" do
    get optional_module_url(@optional_module)
    assert_response :success
  end

  test "should get edit" do
    get edit_optional_module_url(@optional_module)
    assert_response :success
  end

  test "should update optional_module" do
    patch optional_module_url(@optional_module), params: { optional_module: { description: @optional_module.description, name: @optional_module.name } }
    assert_redirected_to optional_module_url(@optional_module)
  end

  test "should fail optional_module validation" do
    @optional_module_validation = OptionalModule.create()
    @optional_module_validation.valid?
    assert_not @optional_module_validation.errors[:name].empty?
  end

  test "should fail account validation" do
    @account_validation = Account.new()
    @account_validation.valid?
    assert_not @account_validation.errors[:email].empty?
  end

end