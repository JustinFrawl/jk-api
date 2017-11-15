class CategorySerializer < ActiveModel::Serializer
  attributes :name, :id
  has_many :posts
end
