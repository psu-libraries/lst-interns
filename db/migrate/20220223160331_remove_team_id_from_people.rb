class RemoveTeamIdFromPeople < ActiveRecord::Migration[7.0]
  def change
    remove_column :people, :team_id, :integer
  end
end
