class Animal < ApplicationRecord
  belongs_to :owner
  has_many :infections
end
