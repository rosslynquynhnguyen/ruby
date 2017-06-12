# hash.rb
def calories_in(burger, side, beverage)
    calories = {
        cheese_burger: 290,
        big_mac: 300,
        mc_bacon: 400,
        royal_cheese: 130,
        french_fries: 130,
        potatoes: 130,
        coca: 160,
        sprite: 170
    }

    calories[burger] + calories[side] + calories[beverage]
end

def calories_in_meal(meal)
    preset_meals = {
        happy_meal: { 
            burger: :cheese_burger,
            side: :french_fries,
            beverage: :coca
        },
        big_mac_meal: { 
            burger: :big_mac,
            side: :royal_cheese,
            beverage: :sprite
        },
    }

    set = preset_meals[meal]
    calories_in(set[:burger], set[:side], set[:beverage])
end

puts "Cheese Burger, French Fries and Sprite have #{calories_in(:cheese_burger, :french_fries, :sprite)} calories"

puts "A Big Mac has #{calories_in_meal(:big_mac_meal)} calories"

puts "A Happy Meal has #{calories_in_meal(:happy_meal)} calories"
