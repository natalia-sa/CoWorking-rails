class CreateWorkstations < ActiveRecord::Migration[6.0]
  def change
    create_table :workstations do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
