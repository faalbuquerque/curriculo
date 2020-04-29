class Course < ApplicationRecord
    validates :name, presence: true
    validates :duration, presence: true
    validates :conclusion, presence: true
    validates :institution, presence: true

    attr_accessor :title
    def my_title
      @title = 'courses'
    end
end
