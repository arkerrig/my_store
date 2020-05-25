# This migration comes from spree_avatax_official (originally 20190118161318)
class AddAvalaraEntityUseCodeReferenceToUsers < SpreeExtension::Migration[4.2]
  def change
    return if column_exists?(:spree_users, :avalara_entity_use_code_id)

    add_reference :spree_users, :avalara_entity_use_code, index: true
  end
end
