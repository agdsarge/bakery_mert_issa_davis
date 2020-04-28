class Recipe
    @@all = []
    attr_reader :ingredient, :dessert
    def initialize(ingred, des)
        @ingredient = ingred
        @dessert = des
        @@all << self
    end


    def self.all
        @@all
    end

end
