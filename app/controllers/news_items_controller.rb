class NewsItemsController < ApplicationController
  before_action :find_newsitem, only:[:edit, :show, :update, :destroy]
  before_action :find_categories
  def index
    @news = NewsItem.order('created_at DESC').all
    # render :json
  end

  def new
    @newsItem = NewsItem.new
  end

  def create
    @newsItem = NewsItem.new(permit_params)
    if @newsItem.save
      render 'show'
    end
  end

  def show

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
    params.require(:news_item).permit(:title, :body, :category_id)
  end

  def find_newsitem
    @newsItem = NewsItem.find(params[:id])
  end

  def find_categories
    @categories = Category.all
  end

end