require 'test_helper'

class ExercisesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should mark empty request as wrong" do
    get grade_path(exercises(:one).id)
    assert_response :success
    assert_equal false, JSON.parse(@response.body)["correct"]
  end
  
  test "should mark incorrect translation as wrong" do
    get grade_path(exercises(:one).id), params: { translation: "bogus" }
    assert_response :success
    assert_equal false, JSON.parse(@response.body)["correct"]
  end
  
  test "should mark correct translation as correct" do
    get grade_path(exercises(:one).id), params: { translation: exercises(:one).translation } 
    assert_response :success
    assert_equal true, JSON.parse(@response.body)["correct"]
  end
  
  test "should be case insensitive for latin alphabet" do
    get grade_path(exercises(:one).id), params: { translation: exercises(:one).translation.upcase }
    assert_response :success
    assert_equal true, JSON.parse(@response.body)["correct"]
  end
  
  test "should be case insensitive for cyrillic alphabet" do
    get grade_path(exercises(:ru).id), params: { translation: exercises(:ru).translation.mb_chars.upcase.to_s }
    assert_response :success
    assert_equal true, JSON.parse(@response.body)["correct"]
  end
end
