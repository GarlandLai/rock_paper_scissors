require('rspec')
require('rps')

describe("#rps") do
it("returns player loses") do
  game = RPS.new()
  expect(gamecalc("SCISSORS", "ROCK")).to(eq("You lose!"))
  end
end
