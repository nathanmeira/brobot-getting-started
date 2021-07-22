require 'test_helper'

class RegiaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @regiao = regiaos(:one)
  end

  test "should get index" do
    get regiaos_url, as: :json
    assert_response :success
  end

  test "should create regiao" do
    assert_difference('Regiao.count') do
      post regiaos_url, params: { regiao: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show regiao" do
    get regiao_url(@regiao), as: :json
    assert_response :success
  end

  test "should update regiao" do
    patch regiao_url(@regiao), params: { regiao: {  } }, as: :json
    assert_response 200
  end

  test "should destroy regiao" do
    assert_difference('Regiao.count', -1) do
      delete regiao_url(@regiao), as: :json
    end

    assert_response 204
  end
end
