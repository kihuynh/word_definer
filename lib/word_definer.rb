#!/usr/bin/ruby

class Word
  @@list = []

  attr_accessor :word, :word_def
  attr_reader :id

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @word_def = attributes.fetch(:word_def)
    @id = @@list.length + 1
  end

  def self.all
    @@list
  end

  def save
    @@list.push(self)
  end

  def self.clear
    @@list = []
  end

  def self.find(id)
    item_id = id.to_i
    @@list.each do |item|
      if item.id == item_id
        return item
      end
    end
  end
end
