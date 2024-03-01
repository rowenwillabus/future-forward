require 'rails_helper'

RSpec.describe 'statuses/show', type: :view do
  before do
    assign(:status, Status.create!(
                      name: 'Name'
                    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
  end
end
