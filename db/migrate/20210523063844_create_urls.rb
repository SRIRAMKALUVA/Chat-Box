class CreateUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :urls do |t|
      t.string :name
      t.string :long_url
      t.string :short_url
      t.integer :click

      t.timestamps
    end
  end
end
