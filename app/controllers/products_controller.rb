class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @review = Review.new
  end

  def reviews
    ### Idea #1:
    # get the datas from the forms
    # make the damn thing
    # redirect to product page
  end

end


### Idea #2:
# Create a revicews controller
# change the routes.rb so that the product_reviews_path goes to that reviews ontroller's #create
# put the shit from IDea#1 into that place?
