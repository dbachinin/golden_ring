require 'test_helper'

class IndexpagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @indexpage = indexpages(:one)
  end

  test "should get index" do
    get indexpages_url
    assert_response :success
  end

  test "should get new" do
    get new_indexpage_url
    assert_response :success
  end

  test "should create indexpage" do
    assert_difference('Indexpage.count') do
      post indexpages_url, params: { indexpage: { description: @indexpage.description, foto: @indexpage.foto } }
    end

    assert_redirected_to indexpage_url(Indexpage.last)
  end

  test "should show indexpage" do
    get indexpage_url(@indexpage)
    assert_response :success
  end

  test "should get edit" do
    get edit_indexpage_url(@indexpage)
    assert_response :success
  end

  test "should update indexpage" do
    patch indexpage_url(@indexpage), params: { indexpage: { description: @indexpage.description, foto: @indexpage.foto } }
    assert_redirected_to indexpage_url(@indexpage)
  end

  test "should destroy indexpage" do
    assert_difference('Indexpage.count', -1) do
      delete indexpage_url(@indexpage)
    end

    assert_redirected_to indexpages_url
  end
end
