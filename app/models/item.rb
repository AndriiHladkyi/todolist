class Item < ApplicationRecord
  belongs_to :list

  def done?
    !done_at.blank?
  end
end
