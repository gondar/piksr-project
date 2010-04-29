class CreateJokes < ActiveRecord::Migration
  def self.up
    create_table :jokes do |t|
      t.string :title
      t.string :foto
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :jokes
  end
end
