# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Homepage', type: :feature do
  before do
    visit '/'
  end
  it 'bottom links' do
    save_and_open_page
    expect(page).to have_link 'Add Team' 
    expect(page).to have_link 'View All People'
  end
end