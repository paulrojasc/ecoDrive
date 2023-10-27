require "application_system_test_case"

class CarsTest < ApplicationSystemTestCase
  setup do
    @car = cars(:one)
  end

  test "visiting the index" do
    visit cars_url
    assert_selector "h1", text: "Cars"
  end

  test "should create car" do
    visit cars_url
    click_on "New car"

    fill_in "Brand", with: @car.brand_id
    fill_in "Driving range", with: @car.driving_range
    fill_in "Feature", with: @car.feature_id
    fill_in "Image", with: @car.image
    fill_in "Modelcar", with: @car.modelcar_id
    fill_in "Rental price", with: @car.rental_price
    check "Rented" if @car.rented
    fill_in "User", with: @car.user_id
    fill_in "Year production", with: @car.year_production
    click_on "Create Car"

    assert_text "Car was successfully created"
    click_on "Back"
  end

  test "should update Car" do
    visit car_url(@car)
    click_on "Edit this car", match: :first

    fill_in "Brand", with: @car.brand_id
    fill_in "Driving range", with: @car.driving_range
    fill_in "Feature", with: @car.feature_id
    fill_in "Image", with: @car.image
    fill_in "Modelcar", with: @car.modelcar_id
    fill_in "Rental price", with: @car.rental_price
    check "Rented" if @car.rented
    fill_in "User", with: @car.user_id
    fill_in "Year production", with: @car.year_production
    click_on "Update Car"

    assert_text "Car was successfully updated"
    click_on "Back"
  end

  test "should destroy Car" do
    visit car_url(@car)
    click_on "Destroy this car", match: :first

    assert_text "Car was successfully destroyed"
  end
end
