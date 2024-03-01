class ElectorsGrid < BaseGrid
  scope do
    Elector
  end

  filter(:first_name, :string, placeholder: 'Search by first name') do |value|
    where('first_name ilike ?', "%#{value}%")
  end
  filter(:middle_name, :string, placeholder: 'Search by middle name') do |value|
    where('middle_name ilike ?', "%#{value}%")
  end
  filter(:last_name, :string, placeholder: 'Search by last name') do |value|
    where('last_name ilike ?', "%#{value}%")
  end
  filter(:address, :string, placeholder: 'Search by address') do |value|
    where('address ilike ?', "%#{value}%")
  end
  filter(:laa_name,
         :enum,
         select: -> { Elector.pluck(:laa_name).uniq.sort },
         multiple: false,
         include_blank: 'Search by LAA') do |value, scope|
           scope.where(laa_name: value)
         end

  filter(:constituency_name,
         :enum,
         select: -> { Elector.pluck(:constituency_name).uniq.sort },
         multiple: false,
         include_blank: 'Search by constituency') do |value, scope|
           scope.where(constituency_name: value)
         end

  column(:actions, html: true) do |model|
    link_to 'Add Response', new_response_path(elector_id: model.id), class: 'text-green-500'
  end
  column(:number_in_division)
  column(:first_name)
  column(:middle_name)
  column(:last_name)
  column(:division_number)
  column(:division_name)
  column(:laa_name)
  column(:constituency_name)
  column(:address)
  column(:occupation)
  column(:constituency_number)
end
