class Response < ApplicationRecord
  belongs_to :elector
  belongs_to :status
  belongs_to :user
end
