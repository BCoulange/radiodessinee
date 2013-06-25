require 'test_helper'

class SoireesControllerTest < ActionController::TestCase
  setup do
    @soiree = soirees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:soirees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create soiree" do
    assert_difference('Soiree.count') do
      post :create, soiree: { titre: @soiree.titre }
    end

    assert_redirected_to soiree_path(assigns(:soiree))
  end

  test "should show soiree" do
    get :show, id: @soiree
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @soiree
    assert_response :success
  end

  test "should update soiree" do
    put :update, id: @soiree, soiree: { titre: @soiree.titre }
    assert_redirected_to soiree_path(assigns(:soiree))
  end

  test "should destroy soiree" do
    assert_difference('Soiree.count', -1) do
      delete :destroy, id: @soiree
    end

    assert_redirected_to soirees_path
  end
end
