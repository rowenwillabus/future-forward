require 'rails_helper'

RSpec.describe 'statuses/new', type: :view do
  before do
    assign(:status, Status.new(
                      name: 'MyString'
                    ))
  end

  it 'renders new status form' do
    render

    assert_select 'form[action=?][method=?]', statuses_path, 'post' do
      assert_select 'input[name=?]', 'status[name]'
    end
  end
end
