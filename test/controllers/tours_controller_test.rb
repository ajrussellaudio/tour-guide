require 'test_helper'

class ToursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tour = tours(:one)
  end

  test "should get index" do
    get tours_url, as: :json
    assert_response :success
  end

  test "should create tour" do
    assert_difference('Tour.count') do
      post tours_url, params: { tour: { info: @tour.info, name: @tour.name } }, as: :json
    end

    assert_response 201
  end

  test "should show tour" do
    get tour_url(@tour), as: :json
    assert_response :success
  end

  test "should update tour" do
    patch tour_url(@tour), params: { tour: { info: @tour.info, name: @tour.name } }, as: :json
    assert_response 200
  end

  test "should destroy tour" do
    assert_difference('Tour.count', -1) do
      delete tour_url(@tour), as: :json
    end

    assert_response 204
  end
end
