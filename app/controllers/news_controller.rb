class NewsController < ApplicationController
  def index
    @news = News.all
    # render :json
  end

end
