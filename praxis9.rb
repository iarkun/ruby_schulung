#!/usr/bin/env ruby

#OOP

class Books
  
  @@books_counter = 0
  attr_accessor(:title, :author, :pages, :price)

  def self.count
    return @@books_counter
  end

  def initialize(title, author, pages, price)
    @title = title
    @author = author
    @pages = pages
    @price = price
    @@books_counter += 1
  end

end
