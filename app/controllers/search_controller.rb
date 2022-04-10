class SearchController < ApplicationController
  def index
    if params[:query]
      @results = Manga.where("title like ?", "#{params[:query]}%")
      respond_to do |format|
        format.html { render :search }
      end
    else
      respond_to do |format|
        format.html { render :index }
      end
    end
  end

  def search
  end

  private
  def search_params
    params.require(:search).permit(:query)
  end
end
