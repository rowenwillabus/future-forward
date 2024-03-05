# == Schema Information
#
# Table name: responses
#
#  id           :bigint           not null, primary key
#  elector_id   :bigint           not null
#  status_id    :bigint           not null
#  phone_number :string
#  email        :string
#  user_id      :bigint           not null
#  country_id   :bigint
#  note         :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
FactoryBot.define do
  factory :response do
    elector { nil }
    status { nil }
    note { 'MyText' }
    user { nil }
  end
end
