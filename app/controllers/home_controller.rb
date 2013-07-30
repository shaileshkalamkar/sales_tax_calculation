class HomeController < ApplicationController
  before_filter :authenticate_user!

  def items_catalog
    @sales_items = SalesItem.all
  end
end
