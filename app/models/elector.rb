# == Schema Information
#
# Table name: electors
#
#  id                  :bigint           not null, primary key
#  id_number           :integer
#  first_name          :string
#  middle_name         :string
#  last_name           :string
#  division_number     :string
#  division_name       :string
#  laa_name            :string
#  constituency_name   :string
#  address             :string
#  occupation          :string
#  constituency_number :integer
#  number_in_division  :integer
#  list_id             :bigint           not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
class Elector < ApplicationRecord
  belongs_to :list
  belongs_to :country
  has_many :responses
end
