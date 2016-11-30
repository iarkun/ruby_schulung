#!/usr/bin/env ruby

print "Bitte erste Zahl eingeben: "
erste_zahl= gets.chomp.to_i

print "Bitte Operator eingeben: "
operator = gets.chomp.to_s

print "Bitte zweite Zahl eingeben: "
zweite_zahl= gets.chomp.to_i

puts "#{erste_zahl} #{operator} #{zweite_zahl} ="

case operator
when '*'
   puts erste_zahl * zweite_zahl
when '+'
   puts erste_zahl + zweite_zahl
when '-'
   puts erste_zahl - zweite_zahl
when '/'
   puts erste_zahl / zweite_zahl
when '%'
   puts erste_zahl % zweite_zahl
end

