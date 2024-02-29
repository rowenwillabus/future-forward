require 'rails_helper'

RSpec.describe 'electors/edit', type: :view do
  let(:elector) do
    Elector.create!(
      id_number: 1,
      first_name: 'MyString',
      middle_name: 'MyString',
      last_name: 'MyString',
      division_number: 'MyString',
      division_name: 'MyString',
      laa_name: 'MyString',
      constituency_name: 'MyString',
      address: 'MyString',
      occupation: 'MyString',
      constituency_number: 1,
      number_in_division: 'MyString'
    )
  end

  before do
    assign(:elector, elector)
  end

  it 'renders the edit elector form' do
    render

    assert_select 'form[action=?][method=?]', elector_path(elector), 'post' do
      assert_select 'input[name=?]', 'elector[id_number]'

      assert_select 'input[name=?]', 'elector[first_name]'

      assert_select 'input[name=?]', 'elector[middle_name]'

      assert_select 'input[name=?]', 'elector[last_name]'

      assert_select 'input[name=?]', 'elector[division_number]'

      assert_select 'input[name=?]', 'elector[division_name]'

      assert_select 'input[name=?]', 'elector[laa_name]'

      assert_select 'input[name=?]', 'elector[constituency_name]'

      assert_select 'input[name=?]', 'elector[address]'

      assert_select 'input[name=?]', 'elector[occupation]'

      assert_select 'input[name=?]', 'elector[constituency_number]'

      assert_select 'input[name=?]', 'elector[number_in_division]'
    end
  end
end
