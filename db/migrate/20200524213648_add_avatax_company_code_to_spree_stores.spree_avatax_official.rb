# This migration comes from spree_avatax_official (originally 20190208130136)
class AddAvataxCompanyCodeToSpreeStores < SpreeExtension::Migration[4.2]
  def change
    return unless table_exists? :spree_stores
    return if column_exists? :spree_stores, :avatax_company_code

    add_column :spree_stores, :avatax_company_code, :string
  end
end
