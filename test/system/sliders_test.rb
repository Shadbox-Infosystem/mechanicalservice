require "application_system_test_case"

class SlidersTest < ApplicationSystemTestCase
  setup do
    @slider = sliders(:one)
  end

  test "visiting the index" do
    visit sliders_url
    assert_selector "h1", text: "Sliders"
  end

  test "should create slider" do
    visit sliders_url
    click_on "New slider"

    fill_in "Description", with: @slider.description
    fill_in "Title", with: @slider.title
    click_on "Create Slider"

    assert_text "Slider was successfully created"
    click_on "Back"
  end

  test "should update Slider" do
    visit slider_url(@slider)
    click_on "Edit this slider", match: :first

    fill_in "Description", with: @slider.description
    fill_in "Title", with: @slider.title
    click_on "Update Slider"

    assert_text "Slider was successfully updated"
    click_on "Back"
  end

  test "should destroy Slider" do
    visit slider_url(@slider)
    click_on "Destroy this slider", match: :first

    assert_text "Slider was successfully destroyed"
  end
end
