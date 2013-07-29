class CreateSalesItemTypes < ActiveRecord::Migration
  def change
    create_table :sales_item_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
