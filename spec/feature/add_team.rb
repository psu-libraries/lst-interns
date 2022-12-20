# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Add Team', type: :feature do
    before do
      visit '/teams/new'
    end

    it 'Has text box' do
        expect(page).to have_selector 'input#team_team'
    end

    it 'Has create team button' do
        expect(page).to have_button 'Create Team'
    end

    it 'Has back to Directory link' do
        expect(page).to have_link 'Back to Directory'
    end

    it 'Has Manager dropdown' do
        expect(page).to have_selector 'select#team_manager'
    end
end