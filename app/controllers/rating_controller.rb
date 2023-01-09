class RatingController < ApplicationController
 def index
    @ratings = Rating.ratings
    render json: { status: 201, message: 'rating created successfully!',  rating: @ratings  }
 end

 def create
 end
end
