class ResponsesGrid < BaseGrid

  scope do
    Response
  end

  filter(:status_id,
         :enum,
         select: -> { Status.all.map { |status| [status.name, status.id] } },
         multiple: false,
         include_blank: 'Search by status') do |value, scope|
    scope.where(status_id: value)
  end
  filter(:created_at, :date, :range => true)

  column(:id)
  column(:elector) do |model|
    model.elector.first_name + ' ' + model.elector.last_name
  end
  column(:address) do |model|
    model.elector.address
  end
  column(:division) do |model|
    model.elector.division_number + ' ' + model.elector.division_name
  end
  column(:status) do |model|
    model.status.name
  end
  column(:submitted_by) do |model|
    model.user.first_name + ' ' + model.user.last_name
  end
  column(:note)
  date_column(:created_at)
end
