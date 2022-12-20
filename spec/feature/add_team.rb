# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Add Team', type: :feature do
    before do
      visit '/teams/new'
    end

    it 'text box' do
        expect(page).to have_selector 'input#team_team'
    end

    it 'create team button' do
        expect(page).to have_button 'Create Team'
    end

    it '' do
        expect(page).to have_link 'Back to Directory'
    end
end