class Item < ApplicationRecord
  belongs_to :user

  default_scope { order('updated_at DESC') }

  def expired?
    created_at < 7.days.ago
  end
end
