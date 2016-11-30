class Madlib < ActiveRecord::Base
  validates :nouns, presence: true
  validates :verbs, presence: true
end
