# == Schema Information
#
# Table name: statuses
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :status do
    name { 'MyString' }
  end
end
