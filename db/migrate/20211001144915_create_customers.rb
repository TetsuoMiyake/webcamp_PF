class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.integer :user_id
      t.string :name
      t.string :address
      t.string :postal_code
      t.string :telephone_number

      t.timestamps
    end
  end
end
