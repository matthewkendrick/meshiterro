class AddImageToPostImage < ActiveRecord::Migration[6.1]
  def change
    add_column :post_images, :image, :string
  end
end
