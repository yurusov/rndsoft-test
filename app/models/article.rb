class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :content, presence: true
  validates :user_id, presence: true
  before_save :work_on_edits_left

  private

  def work_on_edits_left
    if edits_left.nil?
      self.edits_left = 5
    elsif edits_left <= 0
      throw :abort
    else
      self.edits_left -= 1
    end
  end

end
