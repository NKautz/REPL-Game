title_banner = "
#######                  #######                                       #######
   #    #    # ######    #     # #####  ######  ####   ####  #    #       #    #####    ##   # #
   #    #    # #         #     # #    # #      #    # #    # ##   #       #    #    #  #  #  # #
   #    ###### #####     #     # #    # #####  #      #    # # #  #       #    #    # #    # # #
   #    #    # #         #     # #####  #      #  ### #    # #  # #       #    #####  ###### # #
   #    #    # #         #     # #   #  #      #    # #    # #   ##       #    #   #  #    # # #
   #    #    # ######    ####### #    # ######  ####   ####  #    #       #    #    # #    # # ######
"
print title_banner
puts "What is the first name of the wagon leader?\n"
users_name = gets.chomp
puts "What are the first names of the other members in your party?\n"
puts "1. #{users_name.capitalize}\n"
print "2. "
second_member = gets.chomp
print "3. "
third_member = gets.chomp
print "4. "
fourth_member = gets.chomp
print "Your party includes:
1. #{users_name.capitalize}
2. #{second_member.capitalize}
3. #{third_member.capitalize}
4. #{fourth_member.capitalize}\n"
puts "It is 1848. Your jumping off place for Oregon is Indepedence, Missouri." #You must decide which month to leave Indepedence."
puts "Before leaving Indepedence you stock up on supplies: oxen to pull your wagon, clothing & food for the trip, ammunition for your rifles and spare parts for your wagon."
puts "You're now ready to start. Good luck! You have a long and difficult journey ahead of you."
puts "From Independence, it is 100 miles to the Kansas River crossing."
puts "A thief comes during the night and steals a quarter of your food."
puts "As you travel, your food allotment steadily declines. Since rations are now smaller, #{second_member.capitalize}, #{third_member.capitalize} and #{fourth_member.capitalize} get sick."
puts "You are now at the Kansas River crossing. The river is 700 feet across and 25 feet deep in the middle."
puts "You may:\n"
puts "1. Attempt to ford the river\n"
puts "2. Caulk the wagon and float it across\n"
puts "3. Turn around\n"
puts "What is your choice? Please type ford, caulk, or turn around.\n"
users_choice = gets.chomp
until ["ford", "caulk", "turn around"].include? users_choice
  puts "Invalid input. You must enter ford, caulk, or turn around. Please re-enter your selection now.\n"
  users_choice = gets.chomp
end
party = ["#{users_name.capitalize}", "#{second_member.capitalize}", "#{third_member.capitalize}"]
random_party_member = party.sample
if users_choice.include? "ford"
  puts "GAME OVER. The river swallowed up your party. There were no survivors."
end
if users_choice.include? "caulk"
  puts "You made it across successfully. The journey continues..."
  puts "From Kansas, it is 500 miles to Chimney Rock."
  puts "The small food rations make #{users_name.capitalize} sick, too."
  puts "One of your wagon wheels breaks. Luckily, you packed a spare before you left Independence."
  puts "Since your food rations are very small and people are sick, #{random_party_member.capitalize} dies of dysentery."
  puts "The remaining members of the party continue west."
  puts "You reached Chimney Rock. One member down, but not forgotten. You stock up on necessary supplies."
  puts "You may:\n"
  puts "1. Continue on your journey\n"
  puts "2. Stop here\n"
  puts "3. Turn back\n"
  puts "What is your choice? Please type continue, stop here, or turn back.\n"
  users_choice = gets.chomp
  until ["continue", "stop here", "turn back"].include? users_choice
    puts "Invalid input. You must enter continue, stop here, or turn back. Please re-enter your selection now.\n"
    users_choice = gets.chomp
  end
    if users_choice.include? "continue"
      puts "Keep on moving!"
      puts "From Chimney Rock, it is 900 miles to Snake River."
      puts "One of your oxen dies from exhaustion. Your pace slows, but you continue west."
      puts "A thief comes during the night and steals nearly all of your food."
      puts "You finally reach Snake River. The river is 500 feet across and 10 feet deep in the middle."
      puts "You may:\n"
      puts "1. Take a ferry across\n"
      puts "2. Head back\n"
      puts "What is your choice? Please type ferry, or head back.\n"
      users_choice = gets.chomp
      until ["ferry", "head back"].include? users_choice
        puts "Invalid input. You must enter ferry, or head back. Please re-enter your selection now.\n"
        users_choice = gets.chomp
      end
        if users_choice.include? "ferry"
          puts "You made it across without trouble, but for a small fee. Make sure to watch your savings. The journey continues..."
          puts "From Snake River, it is 1,200 miles to Oregon's Willamette Valley."
          puts "A thief comes during the night and steals most of your ammunition. Hunting will be difficult now."
          puts "Two of your wagon wheels break. Luckily, you packed a few spares before leaving Chimney Rock."
          puts "Congratulations, you reached Oregon's Willamette Valley!"
          puts "You may:\n"
          puts "1. Call this new land home\n"
          puts "2. Change your minds and retreat east\n"
          puts "What is your choice? Please type home, or retreat.\n"
          users_choice = gets.chomp
          until ["home", "retreat"].include? users_choice
            puts "Invalid input. You must enter home, or retreat. Please re-enter your selection now.\n"
            users_choice = gets.chomp
          end
          if users_choice.include? "home"
            puts "Congratulations! You beat The Oregon Trail! Time to get to work and mining for gold. The future looks bright for you."
          end
          if users_choice.include? "retreat"
            puts "GAME OVER. After completing the journey and #{random_party_member.capitalize} dying along the way, now you want to go home? Unbelievable."
          end
        end
        if users_choice.include? "head back"
          puts "GAME OVER. After all that mileage and #{random_party_member.capitalize} dying, this is what you decide to do? Loser."
        end
      end
    end
    if users_choice.include? "stop here"
      puts "GAME OVER. Welcome to Chimney Rock. Your new home."
    end
    if users_choice.include? "turn back"
      puts "GAME OVER. #{random_party_member.capitalize} died for nothing. NOTHING!"
    end
if users_choice.include? "turn around"
  puts "GAME OVER. You barely even started down the trail. What a waste."
end
