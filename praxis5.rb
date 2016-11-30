#!/usr/bin/env ruby

# Zahlratespiel
bereich = 1..10
zufahlszahl = rand bereich

puts "Es wurde eine Zufahlszahl zwischen #{bereich} generiert. Bitte geben Sie einen Tip ab."
eingabe = 0
versuch = 0
until (eingabe == zufahlszahl)
  eingabe = gets.chomp.to_i
  versuch += 1
  if (eingabe == zufahlszahl)
    puts "Richtig. Versuchanzahl #{versuch}"
    break
  else
    puts "Leider falsch. Bitte erneut tippen."
    
    if (eingabe > zufahlszahl)
      puts "Zahl ist kleiner..."
    else
      puts "Zahl ist größer.."
    end
  end
end
