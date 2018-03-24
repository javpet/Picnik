class PagesController < ApplicationController

  def home

    @latest_photos = Item.all

  end
end
