class TableArticles < ActiveRecord::Migration
  def change
  	create_table :articles
  	add_column :articles, :title, :string
  	add_column :articles, :author, :string
  	add_column :articles, :content, :text
  	add_column :articles, :nb_car, :integer
  end
end
