class CreateSpaethis < ActiveRecord::Migration
  def change
    create_table :spaethis do |t|
      t.string :name
      t.string :strasse
      t.integer :hausnummer
      t.integer :plz
      t.string :stadt
      t.string :bezirk
      t.string :sonstiges

      t.timestamps
    end
  end
end
