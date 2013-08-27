require 'test_helper'

class MicsropostsControllerTest < ActionController::TestCase
  setup do
    @micsropost = micsroposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micsroposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micsropost" do
    assert_difference('Micsropost.count') do
      post :create, micsropost: { content: @micsropost.content, user_id: @micsropost.user_id }
    end

    assert_redirected_to micsropost_path(assigns(:micsropost))
  end

  test "should show micsropost" do
    get :show, id: @micsropost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micsropost
    assert_response :success
  end

  test "should update micsropost" do
    put :update, id: @micsropost, micsropost: { content: @micsropost.content, user_id: @micsropost.user_id }
    assert_redirected_to micsropost_path(assigns(:micsropost))
  end

  test "should destroy micsropost" do
    assert_difference('Micsropost.count', -1) do
      delete :destroy, id: @micsropost
    end

    assert_redirected_to micsroposts_path
  end
end
