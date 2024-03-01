require 'rails_helper'

RSpec.describe 'responses/new', type: :view do
  before do
    assign(:response, Response.new(
                        elector: nil,
                        status: nil,
                        note: 'MyText',
                        user: nil
                      ))
  end

  it 'renders new response form' do
    render

    assert_select 'form[action=?][method=?]', responses_path, 'post' do
      assert_select 'input[name=?]', 'response[elector_id]'

      assert_select 'input[name=?]', 'response[status_id]'

      assert_select 'textarea[name=?]', 'response[note]'

      assert_select 'input[name=?]', 'response[user_id]'
    end
  end
end
