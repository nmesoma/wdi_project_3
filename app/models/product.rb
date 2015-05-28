class Product < ActiveRecord::Base
  has_many :reviews

  belongs_to :brand

  # has_many :user


end
