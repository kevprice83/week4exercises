class AddContactAttributes < ActiveRecord::Migration
  def change
  	add_column :contacts, :name, :string  
  	add_column :contacts, :address, :string  
  	add_column :contacts, :phone1, :integer  
  	add_column :contacts, :phone2, :integer  
  	add_column :contacts, :email1, :string  
  	add_column :contacts, :email2, :string  
  end
end
