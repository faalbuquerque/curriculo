class PersonalInfo < ApplicationRecord

  validates :name, presence: true
  validates :age, presence: true
  validates :address, presence: true
  validates :fone, presence: true
  validates :social, presence: true

  attr_accessor :title
  def my_title
    @title = 'personal_infos'
  end

end
