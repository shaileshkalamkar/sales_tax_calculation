class HomeController < ApplicationController
  #before_filter :authenticate_user!
  def index

  end

  def items_catalog
    @sales_itmes = SalesItem.all
  end
end
