class Item < ApplicationRecord

  belongs_to :user

  default_scope {order('updated_at DESC')}


  def expired?
    remaining = (created_at = 7.days.ago)

    if remaining < 0
      true
    else
      false
    end
  end
end
