require('rspec')
require('word_definer')
require('pry')

describe('word_definer') do
  it("will have an empty array to start") do
  expect(Word.all()).to(eq([]))
   end
end
