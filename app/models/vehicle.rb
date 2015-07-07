class Vehicle < ActiveRecord::Base
    
  has_many :refuellings
    
  def to_label
    "#{brand} #{model} - #{numberplate}"
  end
end
