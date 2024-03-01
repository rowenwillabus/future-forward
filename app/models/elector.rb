class Elector < ApplicationRecord
  belongs_to :list
  has_many :responses
end
