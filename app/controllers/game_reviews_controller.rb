class GameReviewsController < ApplicationController
  before_action :set_game_review, only: [:show, :edit, :update, :destroy]

  # GET /game_reviews or /game_reviews.json
  def index
    @game_reviews = GameReview.all
  end

  # GET /game_reviews/1 or /game_reviews/1.json
  def show
  end

  # GET /game_reviews/new
  def new
    @game_review = GameReview.new
  end

  # GET /game_reviews/1/edit
  def edit
  end

  # POST /game_reviews or /game_reviews.json
  def create
    @game_review = GameReview.new(game_review_params)
    @game_review.user_id = current_user.id

    respond_to do |format|
      if @game_review.save
        url = "/games/" + @game_review.game_id.to_s
        format.html { redirect_to url, notice: 'Game review was successfully created.' }
        format.json { render :show, status: :created, location: @game_review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @game_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_reviews/1 or /game_reviews/1.json
  def update
    respond_to do |format|
      if @game_review.update(game_review_params)
        format.html { redirect_to @game_review, notice: "Game review was successfully updated." }
        format.json { render :show, status: :ok, location: @game_review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @game_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_reviews/1 or /game_reviews/1.json
  def destroy
    @game_review.destroy
    respond_to do |format|
      format.html { redirect_to game_reviews_url, notice: "Game review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_review
      @game_review = GameReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_review_params
      params.require(:game_review).permit(:user_id, :game_id, :review)
    end
end
