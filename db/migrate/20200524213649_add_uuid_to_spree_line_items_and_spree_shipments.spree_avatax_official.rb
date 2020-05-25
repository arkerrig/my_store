# This migration comes from spree_avatax_official (originally 20190225145808)
class AddUuidToSpreeLineItemsAndSpreeShipments < SpreeExtension::Migration[4.2]
  def change
    unless column_exists?(:spree_line_items, :avatax_uuid)
      add_column :spree_line_items, :avatax_uuid, :string
      add_index  :spree_line_items, :avatax_uuid, unique: true
    end

    return if column_exists?(:spree_shipments, :avatax_uuid)

    add_column :spree_shipments, :avatax_uuid, :string
    add_index  :spree_shipments, :avatax_uuid, unique: true
  end
end
