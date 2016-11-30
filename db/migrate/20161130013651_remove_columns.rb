class RemoveColumns < ActiveRecord::Migration
  def self.up
    remove_column :madlibs, :nouns
    remove_column :madlibs, :verbs
  end
  def self.up
    add_column :madlibs, :one, :string
    add_column :madlibs, :two, :string
    add_column :madlibs, :three, :string
    add_column :madlibs, :four, :string
    add_column :madlibs, :five, :string
    add_column :madlibs, :six, :string
    add_column :madlibs, :seven, :string
    add_column :madlibs, :eight, :string
    add_column :madlibs, :nine, :string
    add_column :madlibs, :ten, :string
    add_column :madlibs, :eleven, :string
    add_column :madlibs, :twelve, :string
  end
end
