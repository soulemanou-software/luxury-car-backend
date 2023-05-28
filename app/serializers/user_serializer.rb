class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :full_name, :email, :created_at
  has_many :users
  belongs_to :user
end
