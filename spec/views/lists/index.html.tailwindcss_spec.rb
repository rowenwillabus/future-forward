require 'rails_helper'

RSpec.describe 'lists/index', type: :view do
  before do
    assign(:lists, [
             List.create!(
               name: 'Name'
             ),
             List.create!(
               name: 'Name'
             )
           ])
  end

  it 'renders a list of lists' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
  end
end
