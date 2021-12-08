require "application_system_test_case"

class GameReviewsTest < ApplicationSystemTestCase
  setup do
    @game_review = game_reviews(:one)
  end

  test "visiting the index" do
    visit game_reviews_url
    assert_selector "h1", text: "Game Reviews"
  end

  test "creating a Game review" do
    visit game_reviews_url
    click_on "New Game Review"

    fill_in "Game", with: @game_review.game_id
    fill_in "Review", with: @game_review.review
    fill_in "User", with: @game_review.user_id
    click_on "Create Game review"

    assert_text "Game review was successfully created"
    click_on "Back"
  end

  test "updating a Game review" do
    visit game_reviews_url
    click_on "Edit", match: :first

    fill_in "Game", with: @game_review.game_id
    fill_in "Review", with: @game_review.review
    fill_in "User", with: @game_review.user_id
    click_on "Update Game review"

    assert_text "Game review was successfully updated"
    click_on "Back"
  end

  test "destroying a Game review" do
    visit game_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Game review was successfully destroyed"
  end
end
