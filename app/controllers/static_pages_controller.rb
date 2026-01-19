class StaticPagesController < ApplicationController
  def index
    @search_result = false
    @my_collections = Rails.application.credentials.my_collections
    if params[:res]
      @search_result = true
      @res = JSON.parse(params[:res])
    end
  end

  def search
    res = Pexels::Client.get_collection(id: params[:collection_id], page: params[:page])
    redirect_to home_path(res: res)
  end
end
