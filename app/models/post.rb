class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy

  def self.search(search)
    if search
      Post.where('text LIKE(?)', "%#{search}%")
    else
      Post.all
    end
  end  

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end

  mount_uploader :image, ImageUploader

end