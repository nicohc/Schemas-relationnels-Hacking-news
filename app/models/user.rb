class User < ApplicationRecord

  has_many :comments, dependent: :destroy
  has_many :links, dependent: :destroy
  validates :username, presence: true,
                       format: { with: /\A[a-zA-Z0-9_]*\z/ }
                       #RegExp du format Username
end
