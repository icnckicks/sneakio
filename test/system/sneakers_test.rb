require "application_system_test_case"

class SneakersTest < ApplicationSystemTestCase
  setup do
    @sneaker = sneakers(:one)
  end

  test "visiting the index" do
    visit sneakers_url
    assert_selector "h1", text: "Sneakers"
  end

  test "should create sneaker" do
    visit sneakers_url
    click_on "New sneaker"

    fill_in "Brand", with: @sneaker.brand
    fill_in "Name", with: @sneaker.name
    fill_in "Purchase date", with: @sneaker.purchase_date
    fill_in "Purchase price", with: @sneaker.purchase_price
    fill_in "Quantity", with: @sneaker.quantity
    fill_in "Size", with: @sneaker.size
    fill_in "Size category", with: @sneaker.size_category
    click_on "Create Sneaker"

    assert_text "Sneaker was successfully created"
    click_on "Back"
  end

  test "should update Sneaker" do
    visit sneaker_url(@sneaker)
    click_on "Edit this sneaker", match: :first

    fill_in "Brand", with: @sneaker.brand
    fill_in "Name", with: @sneaker.name
    fill_in "Purchase date", with: @sneaker.purchase_date
    fill_in "Purchase price", with: @sneaker.purchase_price
    fill_in "Quantity", with: @sneaker.quantity
    fill_in "Size", with: @sneaker.size
    fill_in "Size category", with: @sneaker.size_category
    click_on "Update Sneaker"

    assert_text "Sneaker was successfully updated"
    click_on "Back"
  end

  test "should destroy Sneaker" do
    visit sneaker_url(@sneaker)
    click_on "Destroy this sneaker", match: :first

    assert_text "Sneaker was successfully destroyed"
  end
end
