class RenameTypeToEventType < ActiveRecord::Migration
  def change
  	rename_column :hooks, :type, :event_type
  end
end
