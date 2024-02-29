require 'rails_helper'

RSpec.describe 'electors/index', type: :view do
  before do
    assign(:electors, [
             Elector.create!(
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
               number_in_division: 'Number In Division'
             ),
             Elector.create!(
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
               number_in_division: 'Number In Division'
             )
           ])
  end

  it 'renders a list of electors' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('First Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Middle Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Last Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Division Number'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Division Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Laa Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Constituency Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Address'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Occupation'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Number In Division'.to_s), count: 2
  end
end
