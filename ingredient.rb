class Ingredient
    attr_accessor :name, :calorie, :recipe

    @@all = []
    def initialize(name, calorie)
        @name = name
        @calorie = calorie
        @@all << self
    end

    def dessert
        x = Recipe.all.select {|rcp| rcp.ingredient == self}
        x.map {|rcp| rcp.dessert}
    end

    def bakery
        self.dessert.bakery
    end

    def self.all
        @@all
    end

    def self.find_all_by_name(name_str)
        ingred = Ingredient.all.select{|ing| ing.name.include?(name_str)}
        ingred.map {|x| x.name}
    end
end
