class AddTeamToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :team_id, :integer
    add_column :people, :manager, :integer
    add_column :people, :ismanagement, :boolean
  end
end
