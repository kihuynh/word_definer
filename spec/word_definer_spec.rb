require('rspec')
require('word_definer')
require('pry')

describe('word_definer') do
  it('will check if the array is empty') do
    expect(Word.all()).to(eq([]))
 end
end
