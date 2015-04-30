class ReviewsController < ApplicationController

  def create
    review = Review.new
    review.place_id = params["place_id"]
    review.rating = params["rating"]
    review.desc = params["desc"]
    review.save
    redirect_to "/places/#{review.place_id}"
  end

end
