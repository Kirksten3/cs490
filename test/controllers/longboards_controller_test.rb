require 'test_helper'

class LongboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @longboard = longboards(:one)
  end

  test "should get index" do
    get longboards_url
    assert_response :success
  end

  test "should get new" do
    get new_longboard_url
    assert_response :success
  end

  test "should create longboard" do
    assert_difference('Longboard.count') do
      post longboards_url, params: { longboard: { is_available: @longboard.is_available, length: @longboard.length, manufacturer: @longboard.manufacturer, name: @longboard.name, purpose: @longboard.purpose, style: @longboard.style } }
    end

    assert_redirected_to longboard_url(Longboard.last)
  end

  test "should show longboard" do
    get longboard_url(@longboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_longboard_url(@longboard)
    assert_response :success
  end

  test "should update longboard" do
    patch longboard_url(@longboard), params: { longboard: { is_available: @longboard.is_available, length: @longboard.length, manufacturer: @longboard.manufacturer, name: @longboard.name, purpose: @longboard.purpose, style: @longboard.style } }
    assert_redirected_to longboard_url(@longboard)
  end

  test "should destroy longboard" do
    assert_difference('Longboard.count', -1) do
      delete longboard_url(@longboard)
    end

    assert_redirected_to longboards_url
  end
end
