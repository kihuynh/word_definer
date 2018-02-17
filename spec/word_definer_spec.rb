require('rspec')
require('word_definer')
require('pry')

describe('word_definer') do
  before() do
    Word.clear()
  end

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

  describe('find') do
    it('will find the word to output') do
      vocab = Word.new({:word => "Apple", :word_def => "pie"})
      vocab.save()
      vocab2 = Word.new({:word => "work", :word_def => "please"})
      vocab2.save()
      expect(Word.find(1)).to(eq(vocab))
      expect(Word.find(2)).to(eq(vocab2))
    end
  end

  describe('additional')
    it('it will add additional definition to the word') do
      vocab = Word.new({:word =>"Depressed", :word_def =>"Feeling extra sad"})
      vocab.save()
    end
end
