#!/usr/bin/env ruby

print "Bitte Aufgabe eingeben: "
eingabe = gets.chomp.to_s
regexp = /
         (\d+)
         \s+
         ([*+-\/])
         \s+
         (\d+)
         /x

regmatch = eingabe.match regexp

if ! eingabe.match regexp
  puts "Eingabe war falsch."
  exit
end

case regmatch[2].to_s
when '*'
   puts regmatch[1].to_i * regmatch[3].to_i
when '/'
   puts regmatch[1].to_i / regmatch[3].to_i
when '+'
   puts regmatch[1].to_i + regmatch[3].to_i
when '-'
   puts regmatch[1].to_i - regmatch[3].to_i
end


