class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :address
      t.string :phone_number
      t.string :integer
      t.string :category
      t.string :string

      t.timestamps
    end
  end
end
