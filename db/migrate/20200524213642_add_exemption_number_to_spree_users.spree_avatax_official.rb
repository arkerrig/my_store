# This migration comes from spree_avatax_official (originally 20190118155953)
class AddExemptionNumberToSpreeUsers < SpreeExtension::Migration[4.2]
  def change
    return if column_exists?(:spree_users, :exemption_number)

    add_column :spree_users, :exemption_number, :string
  end
end
