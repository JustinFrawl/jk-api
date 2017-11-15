class PostSerializer < ActiveModel::Serializer
  attributes :text, :image, :category_id
  has_many :comments
end
