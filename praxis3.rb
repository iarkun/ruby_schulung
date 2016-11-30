#!/usr/bin/env ruby


def greet(name: )
  return "Hallo #{name}"
end
puts greet(name: "Ilyas")


def quad(zahl)
  zahl = zahl.to_i
  zahl * zahl
end

puts quad(2)
