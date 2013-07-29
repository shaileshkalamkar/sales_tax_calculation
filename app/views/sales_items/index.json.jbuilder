json.array!(@sales_items) do |sales_item|
  json.extract! sales_item, :name, :price, :sales_item_type_id, :is_imported
  json.url sales_item_url(sales_item, format: :json)
end
