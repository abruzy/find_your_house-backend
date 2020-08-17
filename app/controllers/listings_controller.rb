class ListingsController < ApplicationController
  before_action :set_listing, only: [:show]

  def index
    @listings = Listing.all
    json_response(@listings)
  end

  def create
    @listing = current_user.listings.create!()
  end

  def show
    is_favourite = current_user.favourite_listings.include?(@listing)

    response = {
      listing: @listing,
      isFavourite: is_favourite
    }

    json_response(response)
  end

  private

  def listing_params
    params.permit(:title, :description, :rating, :price, :location, :host, :host_rating, :image)
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
