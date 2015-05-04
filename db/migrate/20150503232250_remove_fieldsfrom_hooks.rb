class RemoveFieldsfromHooks < ActiveRecord::Migration
  def change
  	remove_column :hooks, :name, :events
  end
end
