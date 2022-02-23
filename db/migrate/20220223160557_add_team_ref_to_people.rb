class AddTeamRefToPeople < ActiveRecord::Migration[7.0]
  def change
    add_reference :people, :team, foreign_key: true
  end
end
