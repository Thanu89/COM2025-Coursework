require 'test_helper'

class OptionalModulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @optional_module = optional_modules(:one)
  end

  test "should get index" do
    get optional_modules_url
    assert_response :success
  end

  test "should get new" do
    get new_optional_module_url
    assert_response :success
  end

  test "should create optional_module" do
    assert_difference('OptionalModule.count') do
      post optional_modules_url, params: { optional_module: { description: @optional_module.description, name: @optional_module.name } }
    end

    assert_redirected_to optional_module_url(OptionalModule.last)
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

  test "should destroy optional_module" do
    assert_difference('OptionalModule.count', -1) do
      delete optional_module_url(@optional_module)
    end

    assert_redirected_to optional_modules_url
  end
end
