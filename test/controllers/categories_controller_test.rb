require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get alterna" do
    get categories_alterna_url
    assert_response :success
  end

  test "should get emo" do
    get categories_emo_url
    assert_response :success
  end

  test "should get gt_rock" do
    get categories_gt_rock_url
    assert_response :success
  end

  test "should get post_rock" do
    get categories_post_rock_url
    assert_response :success
  end

  test "should get rock" do
    get categories_rock_url
    assert_response :success
  end

  test "should get progre" do
    get categories_progre_url
    assert_response :success
  end

end
