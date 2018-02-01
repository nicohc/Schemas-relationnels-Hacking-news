class Link < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable, dependent: :destroy
	validates :url, presence: true,
                  format: { with: /(\A\z)|(\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?\z)/ix}
                  #RegExp du format url
end
