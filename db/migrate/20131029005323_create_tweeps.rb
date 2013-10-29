class CreateTweeps < ActiveRecord::Migration
  def change
    create_table :tweeps do |t|
      t.string :name
      t.string :handle
      t.integer :followers

      t.timestamps
    end
  end
end
