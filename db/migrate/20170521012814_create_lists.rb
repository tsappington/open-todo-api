class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.boolean :public, default: true
      t.boolean :private
      t.text :description
      t.references :user

      t.timestamps null: false
    end
  end
end
