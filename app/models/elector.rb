class Elector < ApplicationRecord
  belongs_to :list
  belongs_to :country
  has_many :responses
end
