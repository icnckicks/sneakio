require "test_helper"

class SneakersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sneaker = sneakers(:one)
  end

  test "should get index" do
    get sneakers_url
    assert_response :success
  end

  test "should get new" do
    get new_sneaker_url
    assert_response :success
  end

  test "should create sneaker" do
    assert_difference("Sneaker.count") do
      post sneakers_url, params: { sneaker: { brand: @sneaker.brand, name: @sneaker.name, purchase_date: @sneaker.purchase_date, purchase_price: @sneaker.purchase_price, quantity: @sneaker.quantity, size: @sneaker.size, size_category: @sneaker.size_category } }
    end

    assert_redirected_to sneaker_url(Sneaker.last)
  end

  test "should show sneaker" do
    get sneaker_url(@sneaker)
    assert_response :success
  end

  test "should get edit" do
    get edit_sneaker_url(@sneaker)
    assert_response :success
  end

  test "should update sneaker" do
    patch sneaker_url(@sneaker), params: { sneaker: { brand: @sneaker.brand, name: @sneaker.name, purchase_date: @sneaker.purchase_date, purchase_price: @sneaker.purchase_price, quantity: @sneaker.quantity, size: @sneaker.size, size_category: @sneaker.size_category } }
    assert_redirected_to sneaker_url(@sneaker)
  end

  test "should destroy sneaker" do
    assert_difference("Sneaker.count", -1) do
      delete sneaker_url(@sneaker)
    end

    assert_redirected_to sneakers_url
  end
end
