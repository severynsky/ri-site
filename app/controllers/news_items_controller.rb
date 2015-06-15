class NewsItemsController < ApplicationController
  before_action :find_newsitem, only:[:edit, :show, :update, :destroy]
  before_action :find_categories
  def index
    @news = NewsItem.order('created_at DESC').all
    # render :json
  end

  def new
    @newsItem = NewsItem.new
    @newsItem.images.build
  end

  def create
    binding.pry
    @newsItem = NewsItem.new(permit_params)
    if @newsItem.save
      render 'show'
    end
  end

  def show
    # respond_to do |format|
    #   format.json {
    #   }
    # end
  end

  def edit
    # binding.pry
  end

  def update
     if @newsItem.update(permit_params)
       flash[:notice] = "item has been updated"
       render 'show'
     end
  end

  def destroy
    @newsItem.destroy
  end

  private

  def permit_params
    params.require(:news_item).permit(:title, :body, :category_id, images_attributes:[:picture, :is_main])
  end

  def find_newsitem
    @newsItem = NewsItem.find(params[:id])
  end

  def find_categories
    @categories = Category.all
  end

end
