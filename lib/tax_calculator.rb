module TaxCalculator
  def get_sales_item_details_hash(sales_item_ids)
    total_tax = 0
    final_total = 0
    sales_item_details = []
    sales_item_ids.each do |sales_item_id|
      sales_item = SalesItem.find(sales_item_id)
      sales_tax = get_sales_tax_for(sales_item)
      total_tax += sales_tax
      net_product_price = (sales_item.price + sales_tax)
      final_total +=  net_product_price
      sales_item_details << [sales_item, net_product_price]
    end
    return { :total_sales_tax => total_tax, :final_total => final_total,:sales_item_details => sales_item_details}
  end

  def get_sales_tax_for(sales_item)
    sales_tax_for_an_item = 0
    if sales_item.is_imported
      sales_tax_for_an_item += round_up_to_the_criteria((SalesTaxCalculation::IMPORT_DUTY_RATE * sales_item.price)/100)
    end

    if sales_item.is_taxable?
      sales_tax_for_an_item += round_up_to_the_criteria((SalesTaxCalculation::SALES_TAX_RATE * sales_item.price)/100)
    end
    return sales_tax_for_an_item
  end

  def round_up_to_the_criteria(value_to_round)
    return((value_to_round*20).ceil / 20.0)
  end
end