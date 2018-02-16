#!/usr/bin/ruby

class Word
  @@list = []

  attr_accessor :word, :word_def

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @word_def = attributes.fetch(:word_def)

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
end
