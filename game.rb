start = false

money = []
pick = ["Yes", "No"]

while !start

puts "Welcome to Crazy Uber!"
puts "Start", "Quit Game"
option = gets.chomp.downcase.strip
puts "Ok, you've picked #{option}"

clients = ["a hag", "a student", "a professional"]


case option
when option = "quit game" #option 1 outer case
    puts "Game Over"
    exit
when option = "start" #option 2 outer case
#unless you quit you have to pick a yes or no when asked to pick up a customer
    puts "\n"
    puts "\n"
    puts "1) You're Uber phone is ringing, you're matched with:"
    puts "\n"
    puts clients.shuffle[0]
    puts "\n"
    puts "2) You want to pick up the client? Yes or No or Quit Game"
      pick = gets.chomp.downcase.strip.gsub(" ", "")
  end

  case pick #inner case
      when pick = "Yes"
        puts "\n"
        puts "\n"
        puts "\n"

        scenario = {:hit_car => 20, :success => 20, :wrong => 5, :cannot => 1, :cannot_dest => 1}
        r = ["hit_car", "success", "wrong", "cannot", "cannot_dest"]
        # puts scenario

        score = 0

        score += scenario[r.sample.to_sym]

      when pick = "No"
        puts "\n"
        puts "Tough luck, you're still on the clock!"
        puts "\n"
        puts "Wait for your next call!"
        puts "\n"
      when pick = "Quit Game"
        puts "Game Over"
        puts score
        exit
      else
        puts "Not a valid option"
        redo
       #end inner case
    end #end loop
else #default option outer case
  puts "Not a valid option"
end
end


  # else
  #   puts "Not a valid option"


  #else puts "Not a valid option, Good bye"
