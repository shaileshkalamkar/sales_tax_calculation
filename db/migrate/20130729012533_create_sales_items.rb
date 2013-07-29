class CreateSalesItems < ActiveRecord::Migration
  def change
    create_table :sales_items do |t|
      t.string :name
      t.float :price
      t.integer :sales_item_type_id
      t.boolean :is_imported

      t.timestamps
    end
  end
end
