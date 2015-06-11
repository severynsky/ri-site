class NewsController < ApplicationController
  before_action :find_newsitem, only:[:edit, :show, :update]
  def index
    @news = News.all
    # render :json
  end

  def new
    @newsItem = News.new
  end

  def create
    @newsItem = News.new(permit_params)
    @newsItem.save
  end

  def show

  end

  def edit
    # binding.pry
  end

  def update
    # binding.pry
     if @newsItem.update(permit_params)
       flash[:notice] = "item has been updated"
       redirect_to '/news'
     end
  end

  def destroy
    @newsItem.destroy
  end

  private

  def permit_params
    params.require(:news).permit(:title, :body)
  end

  def find_newsitem
    @newsItem = News.find(params[:id])
  end

end
