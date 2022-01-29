class PostimagesController < ApplicationController

  def new
    @post_image = PostImage.new
  end

  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_images_path
  end

  def index
    
  end

  def show
    
  end

  def destroy
    # 削除するPostImageレコードを取得する
    @post_image = PostImage.find(params[:id])
    # .の後に削除をつける
    @post_image.destroy
    # 一覧ページへのパスをつける
    redirect_to post_images_path
  end

  private

  def post_image_params
    params.require(:post_image).pemit(:shop_name, :image, :caption)
  end
end
