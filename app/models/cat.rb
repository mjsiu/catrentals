class Cat < ActiveRecord::Base
  SEX = [
    'M',
    'F'
  ]

  COLORS = [
    'white',
    'black',
    'orange'
  ]

  validates :birth_date, :color, :name, :sex, presence: true
  validates :color, inclusion: { in: COLORS, message: "color is not valid" }
  validates :sex, inclusion: { in: SEX, message: "sex is not valid" }

  has_many :cat_rental_requests,
  dependent: :destroy, 
  foreign_key: :cat_id,
  primary_key: :id,
  class_name: 'CatRentalRequest'

  def age
    Date.today.year.to_i - self.birth_date.to_i
  end


end
