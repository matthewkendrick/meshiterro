class AddUserNameToPostImage < ActiveRecord::Migration[6.1]
  def change
    add_column :post_images, :user_name, :string
  end
end
