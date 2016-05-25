class AddSupplierToProducts < ActiveRecord::Migration
  def change
    supplier = Supplier.create! name: "Sin Proveedor"
    add_reference :products, :supplier, index: true, default: supplier.id
  end
end
