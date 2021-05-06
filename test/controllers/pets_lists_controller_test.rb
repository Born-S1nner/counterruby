require "test_helper"

class PetsListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pets_list = pets_lists(:one)
  end

  test "should get index" do
    get pets_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_pets_list_url
    assert_response :success
  end

  test "should create pets_list" do
    assert_difference('PetsList.count') do
      post pets_lists_url, params: { pets_list: { owned_date: @pets_list.owned_date, owner: @pets_list.owner, pet_name: @pets_list.pet_name, specie: @pets_list.specie } }
    end

    assert_redirected_to pets_list_url(PetsList.last)
  end

  test "should show pets_list" do
    get pets_list_url(@pets_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_pets_list_url(@pets_list)
    assert_response :success
  end

  test "should update pets_list" do
    patch pets_list_url(@pets_list), params: { pets_list: { owned_date: @pets_list.owned_date, owner: @pets_list.owner, pet_name: @pets_list.pet_name, specie: @pets_list.specie } }
    assert_redirected_to pets_list_url(@pets_list)
  end

  test "should destroy pets_list" do
    assert_difference('PetsList.count', -1) do
      delete pets_list_url(@pets_list)
    end

    assert_redirected_to pets_lists_url
  end
end
