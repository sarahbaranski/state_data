class RemoveAbbreviationFromState < ActiveRecord::Migration[6.1]
  def change
    remove_column :states, :abbreviation, :string
  end
end
