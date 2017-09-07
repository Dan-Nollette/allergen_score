require('rspec')
require('allergen_score')

describe('#allergen_score') do
  it("Takes 0 as a score and returns an empty array") do
    expect(allergen_score(0)).to(eq([]))
  end
  it("Takes 1 as a score and returns an empty array") do
    expect(allergen_score(1)).to(eq(["eggs"]))
  end
  it("Takes 255 as a score and returns an empty array") do
    expect(allergen_score(255)).to(eq(["eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"]))
  end
end
