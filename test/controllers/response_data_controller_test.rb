require 'test_helper'

class ResponseDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @response_datum = response_data(:one)
  end

  test "should get index" do
    get response_data_url, as: :json
    assert_response :success
  end

  test "should create response_datum" do
    assert_difference('ResponseDatum.count') do
      post response_data_url, params: { response_datum: { response: @response_datum.response, uuid: @response_datum.uuid } }, as: :json
    end

    assert_response 201
  end

  test "should show response_datum" do
    get response_datum_url(@response_datum), as: :json
    assert_response :success
  end

  test "should update response_datum" do
    patch response_datum_url(@response_datum), params: { response_datum: { response: @response_datum.response, uuid: @response_datum.uuid } }, as: :json
    assert_response 200
  end

  test "should destroy response_datum" do
    assert_difference('ResponseDatum.count', -1) do
      delete response_datum_url(@response_datum), as: :json
    end

    assert_response 204
  end
end
