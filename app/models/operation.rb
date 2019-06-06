class Operation < ApplicationRecord
  belongs_to :wallet
  has_one_attached :image
end
