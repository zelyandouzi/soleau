require 'test_helper'

class EvidencesControllerTest < ActionController::TestCase
  setup do
    @evidence = evidences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evidences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evidence" do
    assert_difference('Evidence.count') do
      post :create, evidence: { attached: @evidence.attached, body: @evidence.body, encoding: @evidence.encoding, envelop_id: @evidence.envelop_id }
    end

    assert_redirected_to evidence_path(assigns(:evidence))
  end

  test "should show evidence" do
    get :show, id: @evidence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evidence
    assert_response :success
  end

  test "should update evidence" do
    patch :update, id: @evidence, evidence: { attached: @evidence.attached, body: @evidence.body, encoding: @evidence.encoding, envelop_id: @evidence.envelop_id }
    assert_redirected_to evidence_path(assigns(:evidence))
  end

  test "should destroy evidence" do
    assert_difference('Evidence.count', -1) do
      delete :destroy, id: @evidence
    end

    assert_redirected_to evidences_path
  end
end
