require "test_helper"

class EntryTest < ActiveSupport::TestCase
  test "is valid woth valid attributes" do
    entry = Entry.new(meal_type: "Ebéd", carbohydrates: 35, proteins: 20, fats: 10, calories: 400)
    assert entry.save
  end

  
end
