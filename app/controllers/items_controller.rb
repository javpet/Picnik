class ItemsController < ApplicationController

  before_action :force_login # Coming from application controller

  def index
    # If there is a search filter
    if params[:q].present?
      # This is where we search
      # Look for any lowercase titles in SQL database
      # Downcase method comes from ruby
      @items = Item.where("lower(title) LIKE ?", "%" + params[:q].downcase + "%")
    else
      # If not, show all
      @items = Item.all
    end
  end

  def show
    @item = Item.find(params[:id])
  end
end
