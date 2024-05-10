
#!/bin/bash

# Function to check command completion
command_check() {
    echo "Task: $1"
    while true; do
        echo "Please enter the command that $2."
        read user_command
        eval $user_command

        if [ "$user_command" = "$3" ]; then
            echo "Correct! Moving to the next task..."
            break
        else
            echo "Incorrect command. Try again."
        fi
    done
}

# Clear the screen for a clean start
clear

# Welcome message
echo "Welcome to the Linux Fundamentals CTF!"
echo "You will be prompted to perform basic Linux commands."
sleep 2

# Challenge instructions
echo "Complete the following tasks using the appropriate Linux commands:"
sleep 2

# Task 1: ls
command_check "List the files in the current directory" "lists all files and directories" "ls"

# Task 2: pwd
command_check "Print the current directory" "shows the path of the current directory" "pwd"

# Task 3: mkdir
command_check "Create a new directory named 'CTF_Dir'" "creates a new directory" "mkdir CTF_Dir"

# Task 4: cd
command_check "Change into the newly created directory" "changes your current directory to 'CTF_Dir'" "cd CTF_Dir"

# Task 5: rmdir
command_check "Remove the directory 'CTF_Dir'" "removes the directory" "cd .. && rmdir CTF_Dir"

# Final message
echo "Congratulations! You have completed the initial command tasks for the CTF."
echo "Your flag is: FLAG{basic_linux_commands_completed}"
