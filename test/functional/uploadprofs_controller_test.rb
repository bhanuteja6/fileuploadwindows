require 'test_helper'

class UploadprofsControllerTest < ActionController::TestCase
  setup do
    @uploadprof = uploadprofs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uploadprofs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uploadprof" do
    assert_difference('Uploadprof.count') do
      post :create, uploadprof: { email: @uploadprof.email, name: @uploadprof.name, photo: @uploadprof.photo, resume: @uploadprof.resume }
    end

    assert_redirected_to uploadprof_path(assigns(:uploadprof))
  end

  test "should show uploadprof" do
    get :show, id: @uploadprof
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uploadprof
    assert_response :success
  end

  test "should update uploadprof" do
    put :update, id: @uploadprof, uploadprof: { email: @uploadprof.email, name: @uploadprof.name, photo: @uploadprof.photo, resume: @uploadprof.resume }
    assert_redirected_to uploadprof_path(assigns(:uploadprof))
  end

  test "should destroy uploadprof" do
    assert_difference('Uploadprof.count', -1) do
      delete :destroy, id: @uploadprof
    end

    assert_redirected_to uploadprofs_path
  end
end
