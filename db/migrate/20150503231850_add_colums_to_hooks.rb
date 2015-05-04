class AddColumsToHooks < ActiveRecord::Migration
  def change
    add_column :hooks, :anon_id, :string
    add_column :hooks, :type, :string
    add_column :hooks, :path, :string
    add_column :hooks, :timestamp, :timestamp
    add_column :hooks, :referrer, :string
  end
end
