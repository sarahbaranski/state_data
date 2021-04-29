class AddStatetoStates < ActiveRecord::Migration[6.1]
  def change
    rename_column :states, :name, :state
  end
end
