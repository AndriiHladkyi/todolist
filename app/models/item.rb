class Item < ApplicationRecord
  belongs_to :list

  def done?
    !done_at.blank?
  end

  def undone?
    !undone_at.blank?
  end
end
