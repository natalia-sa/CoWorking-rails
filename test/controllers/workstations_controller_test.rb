require 'test_helper'

class WorkstationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workstation = workstations(:one)
  end

  test "should get index" do
    get workstations_url
    assert_response :success
  end

  test "should get new" do
    get new_workstation_url
    assert_response :success
  end

  test "should create workstation" do
    assert_difference('Workstation.count') do
      post workstations_url, params: { workstation: { description: @workstation.description, title: @workstation.title } }
    end

    assert_redirected_to workstation_url(Workstation.last)
  end

  test "should show workstation" do
    get workstation_url(@workstation)
    assert_response :success
  end

  test "should get edit" do
    get edit_workstation_url(@workstation)
    assert_response :success
  end

  test "should update workstation" do
    patch workstation_url(@workstation), params: { workstation: { description: @workstation.description, title: @workstation.title } }
    assert_redirected_to workstation_url(@workstation)
  end

  test "should destroy workstation" do
    assert_difference('Workstation.count', -1) do
      delete workstation_url(@workstation)
    end

    assert_redirected_to workstations_url
  end
end
