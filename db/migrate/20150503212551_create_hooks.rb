class CreateHooks < ActiveRecord::Migration
  def change
    create_table :hooks do |t|
      t.string :name
      t.string :event

      t.timestamps null: false
    end
  end
end
