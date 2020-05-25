# This migration comes from spree_avatax_official (originally 20191001085458)
class RemoveSpreeAvalaraEntityUseCodesTable < SpreeExtension::Migration[4.2]
  def change
    return unless table_exists?(:spree_avalara_entity_use_codes)

    drop_table :spree_avalara_entity_use_codes do |t|
      t.string :use_code, index: true
      t.string :use_code_description

      t.timestamps
    end
  end
end
