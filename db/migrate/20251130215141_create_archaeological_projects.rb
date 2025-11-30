class CreateArchaeologicalProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :archaeological_projects do |t|
      t.string :name
      t.text :description
      t.string :visibility_status
      t.string :status
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
