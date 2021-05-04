class AddStuffToAbbrevation < ActiveRecord::Migration[6.1]
  def change
    add_column :abbreviations, :state, :string
    add_column :abbreviations, :abbrev, :string
    add_column :abbreviations, :code, :string
  end
end
