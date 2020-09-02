class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.text :description
      t.text :address
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
