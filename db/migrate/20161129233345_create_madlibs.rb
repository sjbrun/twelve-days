class CreateMadlibs < ActiveRecord::Migration
  def change
    create_table :madlibs do |t|
      t.text :verbs
      t.text :nouns

      t.timestamps null: false
    end
  end
end
