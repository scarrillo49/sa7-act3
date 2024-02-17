ROOMS = {
    "1" => { name: "Room 1", points: 5 },
    "2" => { name: "Room 2", points: 10 },
    "3" => { name: "Room 3", points: 15 },
  }
  
  player_score = 0
  
  puts "Welcome to the Adventure Game!"
  puts "You have #{player_score} points."
  
  loop do
    puts "\nChoose a room (1-3) to enter or 'exit' to end the game:"
    room_choice = gets.chomp.upcase
  
    case room_choice
    when "1", "2", "3"
      room = ROOMS[room_choice]
      puts "You entered #{room[:name]} and earned #{room[:points]} points."
      player_score += room[:points]
      puts "Your current score is #{player_score}."
    when "EXIT"
      puts "Game over! You collected a total of #{player_score} points."
      break
    else
      puts "Invalid choice. Please enter a valid room number (1-3) or 'exit'."
    end
  end
  