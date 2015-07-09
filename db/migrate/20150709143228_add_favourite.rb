class AddFavourite < ActiveRecord::Migration
  def change
  	add_column :contacts, :status, :boolean, :default => false
  end
end
