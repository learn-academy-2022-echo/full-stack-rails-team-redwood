class AddNameToBlogPost < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_posts, :name, :string
  end
end
