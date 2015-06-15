class NewsController < ApplicationController
  before_action :find_newsitem, only:[:edit, :show, :update, :destroy]
  before_action :find_categories
  def index
    @news = News.order('created_at DESC').all
    # render :json
  end

  def new
    @newsItem = News.new
  end

  def create
    @newsItem = News.new(permit_params)
    # binding.pry
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
    params.require(:news).permit(:title, :body, :category_id)
  end

  def find_newsitem
    @newsItem = News.find(params[:id])
  end

  def find_categories
    @categories = Category.all
  end

end
