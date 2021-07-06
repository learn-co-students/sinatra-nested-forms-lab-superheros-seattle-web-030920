class Superhero  
    attr_accessor :name, :power, :biography, :team
    @@all = []

    def initialize(name, power, biography,team)
        @name = name 
        @power = power
        @biography = biography
        @team = team
        @@all << self 
    end

    def self.all 
        @@all 
    end 

    # def my_team 
    #     self.all.map{|superhero| if superhero.team == self.team}
    # end

end 