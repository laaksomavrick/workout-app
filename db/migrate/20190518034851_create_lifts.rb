class CreateLifts < ActiveRecord::Migration[5.2]
  def change
    create_table :lifts do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name, null: false
      t.integer :one_rep_max, null: false
      t.timestamps null: false
    end
  end
end
