#!/bin/bash

# Function to provide instruction, hints, and command checks
function command_check() {
  task_message="$1"
  usage_info="$2"
  prompt_info="$3"
  correct_command="$4"
  hint_message="$5"

  # Display task and usage information
  echo -e "\n$task_message"
  echo -e "Usage: $usage_info\n"
  sleep 2

  # Loop until the user provides the correct command or asks for a hint
  while true; do
    read -p "Enter the correct command to $prompt_info (or type 'hint' for help): " user_command

    # Execute the user's command regardless of correctness
    eval $user_command

    if [ "$user_command" == "hint" ]; then
      echo -e "\nHint: $hint_message\n"
    elif [ "$user_command" == "$correct_command" ]; then
      echo "Correct! Moving to the next task..."  # Added space here
      break
    else
      echo "Incorrect command. You entered: $user_command. Try again."
    fi
  done
}

# Clear the screen for a clean start
clear

# Welcome message
echo "Welcome to the Linux Fundamentals CTF!"
echo "You will be guided through learning basic Linux commands and then tested on each one."
sleep 2

# Challenge instructions
echo "Follow the instructions and correctly perform each task:"
sleep 2

# Task 1: ls
echo "**The 'ls' command** is used to list the contents of a directory. 
It displays information about files and directories, including their names and permissions. 
By default, it lists the contents of the current directory."

command_check "Task 1: List all files in the current directory using 'ls'." \
               "ls" \
               "list all files and directories in the current directory" \
               "ls" \
               "Use 'ls' without any options to see the files and directories."

# Task 2: pwd
echo "**The 'pwd' command** is used to display the full path of the current working directory. 
This can be helpful when you need to know your exact location in the file system."

command_check "Task 2: Print the current directory using 'pwd'." \
               "pwd" \
               "show the path of the current directory" \
               "pwd" \
               "The command 'pwd' will show the current directory path."

# Task 3: mkdir
echo "**The 'mkdir' command** is used to create new directories. 
Directories are like folders that help you organize your files. 
You can specify a name for the new directory when using the 'mkdir' command."

command_check "Task 3: Create a new directory named 'CTF_Dir' using 'mkdir'." \
               "mkdir <directory_name>" \
               "create a new directory named 'CTF_Dir'" \
               "mkdir CTF_Dir" \
               "Type 'mkdir CTF_Dir' to create a directory with that name."

# Task 4: cd
echo "**The 'cd' command** is used to change directories. 
It allows you to navigate through the file system and move between different folders. 
You can specify the directory name you want to change to after the 'cd' command."

command_check "Task 4: Change into the newly created directory 'CTF_Dir' using 'cd'." \
               "cd <directory_name>" \
               "change to the directory 'CTF_Dir'" \
               "cd CTF_Dir" \
               "Navigate to 'CTF_Dir' by typing 'cd CTF_Dir'."

# Task 5: rmdir
echo "**The 'rmdir' command** is used to remove empty directories. 
It allows you to delete folders that you no longer need. 
**Important:** 'rmdir' can only remove empty directories. 
Make sure there are no files or subdirectories inside the directory before using 'rmdir'."

command_check "Task 5: Remove the directory 'CTF_Dir' using 'rmdir'." \
               "rmdir <directory_name>" \
               "remove the directory 'CTF_Dir'" \
               "cd .. && rmdir CTF_Dir" \
               "Since you might be in 'CTF_Dir', use 'cd .. && rmdir CTF
