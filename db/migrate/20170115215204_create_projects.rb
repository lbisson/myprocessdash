class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :proj_name
      t.string :client
      t.string :string
      t.text :description
      t.text :status

      t.timestamps
    end
  end
end
