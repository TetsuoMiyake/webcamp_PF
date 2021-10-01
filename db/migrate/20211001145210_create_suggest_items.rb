class CreateSuggestItems < ActiveRecord::Migration[5.2]
  def change
    create_table :suggest_items do |t|
      t.integer :item_id
      t.integer :customer_id
      t.integer :status

      t.timestamps
    end
  end
end
