class CreateLocationAssociations < ActiveRecord::Migration[6.0]
  def change
    create_table :location_associations do |t|
      t.integer :setting_id
      t.integer :property_id

      t.timestamps
    end
  end
end
