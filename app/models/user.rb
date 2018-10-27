class User < ApplicationRecord
  belongs_to :document
  has_many :contacts
end
