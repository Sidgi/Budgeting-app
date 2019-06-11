class Wallet < ApplicationRecord
  belongs_to :user
  has_many :operations
  has_one_attached :image
end
