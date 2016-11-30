#!/usr/bin/env ruby
#Adressdatenbank 1

array = []

def list(array)
  array.each_with_index {|b,a| puts "#{a}: #{b} "} 
  
end


def new(array)
  
  print "Bitte Namen eingeben: "
  name = gets.chomp.to_s
  print "Bitte Nachnamen eingeben: "
  surname = gets.chomp.to_s
  array << {name: name, surname: surname}
end



def main(array)
  a = String.new
  until (a == 'X')
    print "N = new entry, l = list all entries, X = abort: "
    a = gets.chomp.to_s
    case a
    when 'N' 
      new(array)
    when 'n' 
      new(array)
    when 'L'
      list(array)
    when 'l'
      list(array)
    end
#  next
  end
end
main(array)
