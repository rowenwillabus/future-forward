require 'rails_helper'

RSpec.describe 'responses/show', type: :view do
  before do
    assign(:response, Response.create!(
                        elector: nil,
                        status: nil,
                        note: 'MyText',
                        user: nil
                      ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
