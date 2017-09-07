public def allergen_score(score)
  allergens = ["eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"]
  counter = 1
  allergens.reject do |allergen|
    counter *=2
    score % counter < counter/2
  end
end
