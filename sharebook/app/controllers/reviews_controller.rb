class ReviewsController < ApplicationController
   def create
    @book = Book.find(params[:book_id])
    @comment = @book.reviews.create!(params[:review])
    redirect_to @book, :notice => "Review created!"
  end
end
