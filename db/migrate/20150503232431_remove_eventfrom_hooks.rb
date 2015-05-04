class RemoveEventfromHooks < ActiveRecord::Migration
  def change
  	remove_column :hooks, :event
  end
end
