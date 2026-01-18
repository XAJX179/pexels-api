class StaticPagesController < ApplicationController
  def index
    @my_collections = Rails.application.credentials.my_collections
    if params[:collection_id]
      @search_result = true
      @res = Pexels::Client.get_collection(params[:collection_id])
    end
  end
end
