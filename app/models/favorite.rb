class Favorite < ApplicationRecord
  validates_presence_of :location, uniqueness: true
  belongs_to :user

  def current_weather
   facade = ForecastFacade.new(location.downcase)
   facade.current_weather
  end

end
