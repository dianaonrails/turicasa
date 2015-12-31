class EntriesReviewsController < ApplicationController

	def show
	end	

	def new
		@entries_reviews = EntriesReview.new
	end	

	def create
		@entries_review = EntriesReview.new(entries_review_params)

	    respond_to do |format|
	      if @entries_review.save
	        format.html { redirect_to entry_path(@entries_review.entrie), notice: 'Review was created' }
	        #format.json { render :show, status: :created, location: entry_path(@entries_review.entrie) }
	      else
	        format.html { render :new }
	        format.json { render json: @entries_review.errors, status: :unprocessable_entity }
	      end
	    end
	end	


	private

	def entries_review_params
		params[:entries_review].permit(:id,:entrie, :review)
	end	
end