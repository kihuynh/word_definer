require('rspec')
require('word_definer')
require('pry')

describe('word_definer') do
  describe('.all') do
    it('will check if the array is empty') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('save')do
    it('will save an inputted word into list')do
      expect(Word.save()).to(eq([word]))
    end
  end
end
