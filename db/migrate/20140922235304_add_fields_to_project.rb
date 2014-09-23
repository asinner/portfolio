class AddFieldsToProject < ActiveRecord::Migration
  def change
    add_column :projects, :title, :string
    add_column :projects, :category, :string
    add_column :projects, :description, :text
    add_column :projects, :url, :string
  end
end
