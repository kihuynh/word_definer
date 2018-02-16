#!/usr/bin/ruby

class Word
  @@list = []

  attr_accessor :word

  def initialize(attributes)
    @word = attributes.fetch(:word)

  end

  def self.all
    @@list
  end

  def save()
    @@list.push(self)
  end
end
