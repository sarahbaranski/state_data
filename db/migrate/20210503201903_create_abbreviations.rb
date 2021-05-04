class CreateAbbreviations < ActiveRecord::Migration[6.1]
  def change
    create_table :abbreviations do |t|

      t.timestamps
    end
  end
end
