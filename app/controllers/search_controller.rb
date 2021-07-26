class SearchController < ApplicationController
  def create
    palabra = "%#{params[:keyword]}%"
    @marker = Marker.new
    if palabra
      @markers = Marker.where("name LIKE ? OR type_id LIKE ?", palabra, palabra)
      respond_to do |format|
        format.js
      end
    else
      @markers = Marker.all
    end
  end
end
