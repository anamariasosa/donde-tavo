class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.string :product_name
      t.string :supplier_name
      t.string :supplier_phone
    end
  end
end
