# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Homepage', type: :feature do
  before do
    visit '/'
  end

  it 'displays the header' do
    expect(page).to have_content 'LST Emergency Contacts'
  end
end
