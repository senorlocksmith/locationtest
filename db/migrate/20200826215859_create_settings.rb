class CreateSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :settings do |t|
      t.string :name
      t.string :placement
      t.text :description
      t.date :s_filming_date
      t.date :e_filming_date
      t.integer :project_id

      t.timestamps
    end
  end
end
