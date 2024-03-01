require 'rails_helper'

RSpec.describe 'responses/edit', type: :view do
  let(:response) do
    Response.create!(
      elector: nil,
      status: nil,
      note: 'MyText',
      user: nil
    )
  end

  before do
    assign(:response, response)
  end

  it 'renders the edit response form' do
    render

    assert_select 'form[action=?][method=?]', response_path(response), 'post' do
      assert_select 'input[name=?]', 'response[elector_id]'

      assert_select 'input[name=?]', 'response[status_id]'

      assert_select 'textarea[name=?]', 'response[note]'

      assert_select 'input[name=?]', 'response[user_id]'
    end
  end
end
