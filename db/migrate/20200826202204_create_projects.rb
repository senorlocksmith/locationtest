class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :project_type
      t.text :description
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
