class AddDefaultValueToAttribute < ActiveRecord::Migration
  def change
  	change_column :ticket_books, :is_cancelled, :boolean, :default => false
  end
end
