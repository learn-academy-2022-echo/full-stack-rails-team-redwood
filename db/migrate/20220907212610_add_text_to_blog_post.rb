class AddTextToBlogPost < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_posts, :text, :text
  end
end
