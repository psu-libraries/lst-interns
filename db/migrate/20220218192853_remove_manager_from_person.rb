class RemoveManagerFromPerson < ActiveRecord::Migration[7.0]
  def change
    remove_column :people, :department, :string
    remove_column :people, :manager, :string
  end
end
