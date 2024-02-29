require 'rails_helper'

RSpec.describe 'electors/show', type: :view do
  before do
    assign(:elector, Elector.create!(
                       id_number: 2,
                       first_name: 'First Name',
                       middle_name: 'Middle Name',
                       last_name: 'Last Name',
                       division_number: 'Division Number',
                       division_name: 'Division Name',
                       laa_name: 'Laa Name',
                       constituency_name: 'Constituency Name',
                       address: 'Address',
                       occupation: 'Occupation',
                       constituency_number: 3,
                       number_in_division: 'Number In Division',
                       list: create(:list)
                     ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Middle Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Division Number/)
    expect(rendered).to match(/Division Name/)
    expect(rendered).to match(/Laa Name/)
    expect(rendered).to match(/Constituency Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Occupation/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Number In Division/)
  end
end
