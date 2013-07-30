class SalesItem < ActiveRecord::Base
  belongs_to :sales_item_type

  def is_taxable?
    return(["Food","Book","Medical"].include?(self.sales_item_type.name) ? false : true)
  end
end
