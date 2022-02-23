class AddTeamToPerson < ActiveRecord::Migration[7.0]
  def change
    remove_column :people, :team_id
    add_reference :people, :team, foreign_key: true
  end
end
