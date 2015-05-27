class AddProductImageToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :product_image, :text
  end
end
