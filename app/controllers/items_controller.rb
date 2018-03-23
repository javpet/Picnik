class ItemsController < ApplicationController

  before_action :force_login # Coming from application controller

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end
end
