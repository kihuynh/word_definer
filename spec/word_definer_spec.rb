require('rspec')
require('word_definer')
require('pry')

describe('word_definer') do


  describe('.all') do
    it('will check if the array is empty') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('save') do
    it('will save inputted word into list')do
      vocab = Word.new(:word => "Spleen", :word_def => "organ")
      vocab.save()
      expect(Word.all()).to(eq([vocab]))
    end
  end

  describe('clear') do
    it('will clear out the array after saving inputs. prevent duplicates in the array?') do
    vocab = Word.new(:word => "Justice", :word_def => "law word")
    vocab.save()
    Word.clear()
    expect(Word.all()).to(eq([]))
    end
  end
end
