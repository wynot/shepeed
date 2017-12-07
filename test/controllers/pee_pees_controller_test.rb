require 'test_helper'

class PeePeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pee_pee = pee_pees(:one)
  end

  test "should get index" do
    get pee_pees_url
    assert_response :success
  end

  test "should get new" do
    get new_pee_pee_url
    assert_response :success
  end

  test "should create pee_pee" do
    assert_difference('PeePee.count') do
      post pee_pees_url, params: { pee_pee: { description: @pee_pee.description } }
    end

    assert_redirected_to pee_pee_url(PeePee.last)
  end

  test "should show pee_pee" do
    get pee_pee_url(@pee_pee)
    assert_response :success
  end

  test "should get edit" do
    get edit_pee_pee_url(@pee_pee)
    assert_response :success
  end

  test "should update pee_pee" do
    patch pee_pee_url(@pee_pee), params: { pee_pee: { description: @pee_pee.description } }
    assert_redirected_to pee_pee_url(@pee_pee)
  end

  test "should destroy pee_pee" do
    assert_difference('PeePee.count', -1) do
      delete pee_pee_url(@pee_pee)
    end

    assert_redirected_to pee_pees_url
  end
end
