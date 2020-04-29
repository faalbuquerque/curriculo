class Academic < ApplicationRecord
  validates :institution, presence: true
  validates :course, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :institution, presence: true

  attr_accessor :title
  def my_title
    @title = 'academics'
  end
end

