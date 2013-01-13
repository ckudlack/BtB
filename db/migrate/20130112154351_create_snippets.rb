class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :title
      t.text :content
      t.references :post

      t.timestamps
    end
    add_index :snippets, :post_id
  end
end
