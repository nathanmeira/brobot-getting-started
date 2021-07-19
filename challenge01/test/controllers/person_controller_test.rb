require 'test_helper'

class PersonControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get person_index_url
    assert_response :success
  end

  test "should get show" do
    get person_show_url
    assert_response :success
  end

  test "should get new" do
    get person_new_url
    assert_response :success
  end

  test "should get edit" do
    get person_edit_url
    assert_response :success
  end

  test "should get full_name" do
    get person_full_name_url
    assert_response :success
  end

  test "should get imc" do
    get person_imc_url
    assert_response :success
  end

end
