require "test_helper"

class CardsImportsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cards_imports_new_url
    assert_response :success
  end

  test "should get create" do
    get cards_imports_create_url
    assert_response :success
  end
end
