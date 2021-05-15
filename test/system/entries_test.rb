require "application_system_test_case"

class EntriesTest < ApplicationSystemTestCase
  setup do
    @entry = entries(:reggeli)
  end

  test "visiting the index" do
    visit entries_url
    assert_selector "h1", text: "Étrend - #{DateTime.now.to_s(:nice_date)}"
  end

  test "creating a Entry" do
    visit entries_url
    click_on "Új étel hozzáadása"

    fill_in "Calories", with: @entry.calories
    fill_in "Carbohydrates", with: @entry.carbohydrates
    fill_in "Fats", with: @entry.fats
    fill_in "Meal type", with: @entry.meal_type
    fill_in "Proteins", with: @entry.proteins
    click_on "Create Entry"

    
   
  end

  test "updating a Entry" do
    visit entries_url
    click_on "Szerkeztés", match: :first

    fill_in "Calories", with: @entry.calories
    fill_in "Carbohydrates", with: @entry.carbohydrates
    fill_in "Fats", with: @entry.fats
    fill_in "Meal type", with: @entry.meal_type
    fill_in "Proteins", with: @entry.proteins
    click_on "Update Entry"

    assert_text "Entry was successfully updated"
    
  end

  test "destroying a Entry" do
    visit entries_url
    page.accept_confirm do
      click_on "Törlés", match: :first
    end

    assert_text "Entry was successfully destroyed"
  end
end
