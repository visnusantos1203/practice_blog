class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :name ## creates name column, string data type 
      t.text :body ## creates body column, text data type
      t.timestamps
    end
  end
end
