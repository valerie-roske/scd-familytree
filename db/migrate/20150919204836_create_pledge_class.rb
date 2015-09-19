class CreatePledgeClass < ActiveRecord::Migration
  def change
    create_table :pledge_classes do |t|
      t.string :name
      t.string :semester
      t.integer :year

      t.timestamps null: false
    end
  end
end
