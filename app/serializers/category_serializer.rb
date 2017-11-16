class CategorySerializer < ActiveModel::Serializer
  attributes :name, :id
  has_many :posts
  has_many :comments, through: :posts
end
