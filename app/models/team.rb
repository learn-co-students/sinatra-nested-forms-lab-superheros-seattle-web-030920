class Team
    attr_accessor :name, :motto
    TEAMS =[]


    def initialize(args)
        @name = args[:name]
        @motto = args[:motto]
        TEAMS<< self
    end

    def self.all
        TEAMS
    end

    def self.clear
        self.all.clear
    end
    
end
