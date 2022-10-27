class MerchantItemsController < ApplicationController

  def index
    @items = MerchantFacade.merchant_items(params[:merchant_id])
  end
end