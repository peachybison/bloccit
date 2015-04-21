class AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisement.all 
  end

  def shows
    @advertisement = Advertisement.find(params[:id])
  end
end
