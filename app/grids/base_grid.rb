class BaseGrid
  include Datagrid

  self.default_column_options = {
    # Uncomment to disable the default order
    # order: false,
    # Uncomment to make all columns HTML by default
    # html: true,
  }
  # Enable forbidden attributes protection
  # self.forbidden_attributes_protection = true

  def self.date_column(name, *)
    column(name, *) do |model|
      format(block_given? ? yield : model.send(name)) do |date|
        date.strftime('%m/%d/%Y')
      end
    end
  end
end
