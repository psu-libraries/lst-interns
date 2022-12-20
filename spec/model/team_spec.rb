# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Team, type: :model do
    let(:new_team) do 
        Team.new(id: 1, team: "123", manager: 2)
    end

    it 'Team module has team equal to 123' do
        expect(new_team.team).to eq("123")
    end

    it 'Team module has manager equal to 2' do
        expect(new_team.manager).to eq(2)
    end
end
