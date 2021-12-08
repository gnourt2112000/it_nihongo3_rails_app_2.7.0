require "test_helper"

class GameReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_review = game_reviews(:one)
  end

  test "should get index" do
    get game_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_game_review_url
    assert_response :success
  end

  test "should create game_review" do
    assert_difference('GameReview.count') do
      post game_reviews_url, params: { game_review: { game_id: @game_review.game_id, review: @game_review.review, user_id: @game_review.user_id } }
    end

    assert_redirected_to game_review_url(GameReview.last)
  end

  test "should show game_review" do
    get game_review_url(@game_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_review_url(@game_review)
    assert_response :success
  end

  test "should update game_review" do
    patch game_review_url(@game_review), params: { game_review: { game_id: @game_review.game_id, review: @game_review.review, user_id: @game_review.user_id } }
    assert_redirected_to game_review_url(@game_review)
  end

  test "should destroy game_review" do
    assert_difference('GameReview.count', -1) do
      delete game_review_url(@game_review)
    end

    assert_redirected_to game_reviews_url
  end
end
