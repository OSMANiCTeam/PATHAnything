# OSMANiC PATHAnything for FreeBSD Copyright 2022
# Version 1.0.1
# This is free software, obtain a copy at https://github.com/OSMANiCTeam/PATHAnything
# If you paid for this software, demand a refund
# As of Jun 4 2022, this software is untested, as we are unable to obtain FreeBSD for testing, more info at https://github.com/OSMANiCTeam/PATHAnything/discussions/1

echo IF YOU ARE TRYING TO ADD THIS SCRIPT TO PATH, CREATE A COPY OF IT, USE THE COPY TO ADD THIS SCRIPT TO PATH, THEN DELETE THE COPY. MOVING A RUNNING INSTANCE CAN CAUSE PROBLEMS AND ISSUES!!!
echo 
echo Type the file name of the bash script to want to add to PATH, including the file extension
read file_name
echo Type what you want to name the command
read command_name
echo Sudo permissions are needed to add executable permissions to your script and add it to PATH.
sudo chmod +x $file_name
sudo mv $file_name /usr/local/etc/$command_name
echo 
echo Command Directory:
which $command_name
echo
clear
FILE=/usr/local/etc/$command_name
if [ -f "$FILE" ]; then
    echo "Successfully added $command_name to PATH"
    echo You can remove your script by typing "sudo rm /usr/local/etc/$command_name"
else
    echo "Failed to add $command_name to PATH"
fi
echo Thanks for using PATHAnything by OSMANiC Team