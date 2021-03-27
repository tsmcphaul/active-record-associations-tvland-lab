class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network
   

  def actors_list
    list = []
        self.characters.each do |character|
            list << "#{character.actor.first_name} #{character.actor.last_name}"
        end
    list
    end
end