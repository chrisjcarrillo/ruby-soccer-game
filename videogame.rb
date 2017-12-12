# login
puts <<EOF
_____  ____    ____  _____          _______.  ______     ______   ______  _______ .______      
| ____| \   \  /   / | ____|        /       | /  __  \   /      | /      ||   ____||   _  \     
| |__    \   \/   /  | |__         |   (----`|  |  |  | |  ,----'|  ,----'|  |__   |  |_)  |    
|___ \    \      /   |___ \         \   \    |  |  |  | |  |     |  |     |   __|  |      /     
 ___) |    \    /     ___) |    .----)   |   |  `--'  | |  `----.|  `----.|  |____ |  |\  \----.
|____/      \__/     |____/     |_______/     \______/   \______| \______||_______|| _| `._____|   
EOF

puts "WELCOME TO 5-A-SIDE SOCCER"
puts "\n"
puts "Please enter your details below"

print "First Name: "
first_name = gets.chomp
print "Last Name: "
last_name = gets.chomp
print "Prefered Shirt Number: "
# shirt_number = gets.chomp.to_i
# class MyError < StandardError
# end
# begin
#     prime_numbers = [1,2,3,5,7,13,17]
#     print "Prefered Shirt Number: "
    
#     unless prime_numbers.include?(shirt_number)
#         e = MyError.new "oops!"
#         raise
#     end
# end
shirt_number = gets.chomp.to_i
print "Your Team Name: "
team_name = gets.chomp
captain = "#{first_name} #{last_name}"
puts "\n"
puts "Team Details"
puts"------------"
puts "Captain: #{captain} ##{shirt_number}"
puts "Team Name: #{team_name}"
puts "\n"

#############################################
# CHOOSE TEAM
puts "From the list Choose 4 legends to play with you."
puts "Pick 4 options: Ronaldinho, David Beckham, Ronaldo, Xavi, Maradona, Riquelme, Guti, Zidane, Thierry Henry, Lionel Messi, Cristiano Ronaldo"

# Below loop lets USER input name of 4 players wanted
# The greater than symbol is >
# The less than symbol is <

team_limit = 1
legends = []
while team_limit < 5
    players = gets.chomp
    legends << players.to_s
    team_limit += 1
end
puts "\n"

#############################################
#User Lineup
puts "#{team_name} Lineup"
puts"------------"
puts "1. #{captain}"
i = 2
for player in legends
    puts "#{i}. #{player}"
    i += 1
end
puts "\n"

#############################################
# Progressbar For Difficulty
def progressbar(definition)
    if definition == true
        0.step(100, 5) do |i|
            printf("\rLoading Oposition: [%-20s]", "=" * (i/5))
            sleep(0.5)
        end
    end

end
puts "\n"

#############################################
# Oposition Dificulty
puts "Pick difficulty: Easy, Pro, Legendary"
print "> "
puts "\n"
while difficulty = $stdin.gets.chomp
    case difficulty.include?(difficulty)
    when difficulty.include?("Easy")
        team_nameop = "Eusebio's 5"
        progressbar(true)
        team_cafu = ["Cafu", "Eusebio", "Marco van Basten", "Lev Yashin", "Booby Moore"]
        puts "#{team_nameop} Lineup"
        puts"------------------"
        i = 1
        for cafu in team_cafu
            puts "#{i}. #{cafu}"
            i += 1
        end
        break
    when difficulty.include?("Pro")
        team_nameop = "Zinedine Zidane's 5"
        progressbar(true)
        team_zidane = ["Zinedine Zidane", "Michel Platini", "Paolo Maldini", "Garrincha", "Zico"]
        puts "#{team_nameop} Lineup"
        puts"------------------"
        i = 1
        for zidane in team_zidane
            puts "#{i}. #{zidane}"
            i += 1
        end
        break
    when difficulty.include?("Legendary")
        team_nameop = "Pele's 5"
        progressbar(true)
        team_pele = ["Pele", "Di Estefano", "George Best", "Johan Cruyff", "Franz Beckenbauer"]
        puts "#{team_nameop} Lineup"
        puts"------------------"
        i = 1
        for pele in team_pele
            puts "#{i}. #{pele}"
            i += 1
        end
        break
    else
      puts "Please Choose a correct difficulty"
    end
    print "> "
end
puts "\n"

puts "Todays Match"
puts "#{team_name} vs #{team_nameop}"
puts "Stadium: WYNCODE ARENA"
puts "\n"

def progressbar2(definition)
    if definition == true
        0.step(100, 5) do |i|
            printf("\rSimulating match: [%-20s]", "=" * (i/5))
            sleep(0.5)
        end
    end
    puts "\n"
end
puts "\n"

puts "Start match simulation: Y or N (You REALLY HAVE NO OPTION)"
while lastoption = $stdin.gets.chomp
    scorehome = [1,2,3,4,5,6,7,8,9,10]
    scoreop = [1,2,3,4,5,6,7,8,9,10]
    case lastoption.include?(lastoption)
    when lastoption.include?("Y")
        # The greater than symbol is >
        # The less than symbol is <
        progressbar2(true)
        if scorehome.sample > scoreop.sample
            puts "#{team_name} WON, YOU GUYS SHOULD TOTALLY GET A GOLD MEDAL BUT ALL YOU GET IS RUBY."
        else
            puts "BRO YOU SERIOUSLY SUCK, RETIRE FROM FOOTBALL (SOCCER LIKE THE GRINGOS SAY IT)"
        end
        break
    else lastoption.include?("N")
      puts "Start match simulation: Y or N"
    end
    print "> "
 end

 puts "Thank you for playing, it's a pretty simple game. Not Really......Or is it?"