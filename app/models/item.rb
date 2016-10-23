class Item < ApplicationRecord
  belongs_to :user

  #validates :name, presence: true
  #validates :time_left, presence: true, numericality: { only_integer: true }

  #def time_left
  #self.time_left - (DateTime.now.to_date - created_at.to_date).to_item
  #end
end
