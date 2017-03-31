require 'test_helper'

class MapgsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mapg = mapgs(:one)
  end

  test "should get index" do
    get mapgs_url
    assert_response :success
  end

  test "should get new" do
    get new_mapg_url
    assert_response :success
  end

  test "should create mapg" do
    assert_difference('Mapg.count') do
      post mapgs_url, params: { mapg: { adress: @mapg.adress, latitude: @mapg.latitude, longitude: @mapg.longitude, memories_id: @mapg.memories_id } }
    end

    assert_redirected_to mapg_url(Mapg.last)
  end

  test "should show mapg" do
    get mapg_url(@mapg)
    assert_response :success
  end

  test "should get edit" do
    get edit_mapg_url(@mapg)
    assert_response :success
  end

  test "should update mapg" do
    patch mapg_url(@mapg), params: { mapg: { adress: @mapg.adress, latitude: @mapg.latitude, longitude: @mapg.longitude, memories_id: @mapg.memories_id } }
    assert_redirected_to mapg_url(@mapg)
  end

  test "should destroy mapg" do
    assert_difference('Mapg.count', -1) do
      delete mapg_url(@mapg)
    end

    assert_redirected_to mapgs_url
  end
end
