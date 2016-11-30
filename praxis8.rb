#!/usr/bin/env ruby
#Adressdatenbank 1

array = []


def list(array)
  array.each_with_index {|b,a| puts "#{a}: #{b}"} 
  
end

def read(array)
  file = File.new('/tmp/database.txt', 'r')
  file.each do |line|
    array << line.chomp
  end
  file.close
end

def new(array)
  
  print "Bitte Namen eingeben: "
  name = gets.chomp.to_s
  print "Bitte Nachnamen eingeben: "
  surname = gets.chomp.to_s
  array << {name: name, surname: surname}
end

def save(array)
  file = File.new('/tmp/database.txt', 'w')
  array.each do |content|
    file.puts content
  end
  file.close
end


def main(array)
  a = String.new
  until (a == 'X')
    print "N = new entry, L = list all entries, S = save, R = read database, X = abort: "
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
    when 's'
      save(array)
    when 'S'
      save(array)
    when 'R'
      read(array)
    when 'r'
      read(array)
    end
  end
end

if File.exist? '/tmp/database.txt'
  read(array)
end

main(array)
