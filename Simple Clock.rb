#Name: Command-line Clock in Ruby
#Date: 3/3/23
#Creator: Lorenzo Juarez

#Description:
#This is a simple program written in Ruby that displays a clock in the terminal and prompts the user for input. 
#It uses a loop to continuously update the clock and wait for user input.


loop do
    # Clear the screen before printing the time
    system('clear')
  
    # Print the current time
    puts Time.now.strftime('%I:%M:%S %p')
  
    # Prompt the user for input
    print 'Enter a command (type "help" for a list of commands): '
  
    # Get the user's input and remove any leading/trailing whitespace
    input = gets.chomp.strip.downcase
  
    # Check the user's input for commands
    case input
    when 'help'
      # Print a help menu with instructions
      puts "Commands:\n" \
           "  help - Display this help menu\n" \
           "  close - Exit the clock"
    when 'close'
      # Exit the loop and terminate the program
      break
    end
  
    # Wait for one second before updating the clock again
    sleep 1
  end
  