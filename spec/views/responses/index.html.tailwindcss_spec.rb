require 'rails_helper'

RSpec.describe 'responses/index', type: :view do
  before do
    assign(:responses, [
             Response.create!(
               elector: nil,
               status: nil,
               note: 'MyText',
               user: nil
             ),
             Response.create!(
               elector: nil,
               status: nil,
               note: 'MyText',
               user: nil
             )
           ])
  end

  it 'renders a list of responses' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('MyText'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
