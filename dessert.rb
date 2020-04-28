class Dessert

    attr_accessor :bakery, :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def ingredients
        x = Recipe.all.select {|rcp| rcp.dessert == self} #outputs dessert_objs
        x.map {|rcp| rcp.ingredient}
    end

    def calories #cookie.calores
        ingredients.map{|ing|ing.calorie}.sum
    end


    def self.all
        @@all
    end

end
