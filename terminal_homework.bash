//************************************************************** */
Part I: Set the Scene
//************************************************************** */

//
Create a new directory on your Desktop called galaxy_far_far_away and enter it via terminal
//

shelb@LAPTOP-H2515MJF MINGW64 ~
$ mkdir galaxy_far_far_away

shelb@LAPTOP-H2515MJF MINGW64 ~
$ cd galaxy_far_far_away

//
Create a directory called death_star, and make the following files inside of it:

darth_vader.txt
princess_leia.txt
storm_trooper.txt
//

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ mkdir death_star

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ cd death_star

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star
$ touch darth_vader.txt princess_leia.txt storm_trooper.txt

//
In galaxy_far_far_away, make a directory named tatooine and create the following files in it:

luke.txt
ben_kenobi.txt
//

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star
$ cd ..

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ mkdir tatooine

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ cd tatooine

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/tatooine
$ touch luke.txt

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/tatooine
$ touch ben_kenobi.txt

//
Inside of tatooine make a directory called millenium_falcon, and in it create:

han_solo.txt
chewbaca.txt
//

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/tatooine
$ mkdir millenium_falcon

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/tatooine
$ cd millenium_falcon

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/tatooine/millenium_falcon
$ touch han_solo.txt chewbaca.txt

//******************************************************************* */
Part II: mv - rename
//******************************************************************* */

You can rename a file using the mv command.

For example, rename file1.txt to file2.txt

mv file1.txt file2.txt
Rename ben_kenobi.txt to obi_wan.txt.

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/tatooine/millenium_falcon
$ mv ben_kenobi.txt obi_wan.txt
mv: cannot stat 'ben_kenobi.txt': No such file or directory

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/tatooine/millenium_falcon
$ cd ..

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/tatooine
$ mv ben_kenobi.txt obi_wan.txt

//****************************************************************** */
Part III: cp - copy
//****************************************************************** */

You can copy a file from one location to another using the cp command.

For example, copy file1.txt to its parent directory:

cp file1.txt ..
And, copy file1.txt to a sibling directory:

cp file1.txt ../some_directory
Finally, copy file1.txt to a child directory:

cp file1.txt some_directory
Copy storm_trooper.txt from death_star to tatooine

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/tatooine
$ cd ..

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ cd death_star

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star
$ cp storm_trooper ../tatooine
cp: cannot stat 'storm_trooper': No such file or directory

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star
$ cp storm_trooper.txt ../tatooine

//*************************************************************** */
Part IV: mv - move
//*************************************************************** */
You can use the mv command to move files from one location to another

For example, move a file from its current location to the parent directory:

mv file1.txt ..
And, move a file from its current location to a sibling directory:

mv file1.txt ../some_directory
Finally, move a file from its current location to a child directory:

mv file1.txt some_directory
You can also move directories into other directories using the same syntax
//
Move luke.txt and obi_wan.txt to the millenium_falcon
//
shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/tatooine
$ mv luke.txt millenium_falcon

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/tatooine
$ mv obi_wan.txt millenium_falcon

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/tatooine
$ cd millenium_falcon

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/tatooine/millenium_falcon
$ ls
chewbaca.txt  han_solo.txt  luke.txt  obi_wan.txt

//
Move millenium_falcon out of tatooine and into galaxy_far_far_away
//

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/tatooine
$ mv millenium_falcon ..

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/tatooine
$ cd ..

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ ls
death_star/  millenium_falcon/  tatooine/

//
Move millenium_falcon into death_star
//
shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ mv millenium_falcon /death_star
mv: cannot move 'millenium_falcon' to '/death_star': Permission denied //not sure why this error popped up; haven't been able to fix it; moved millenium_falcon using GUI so that I can continue the hw while I try to troubleshoot the error//

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ ls
death_star/  tatooine/

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ cd death_star

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star
$ ls
darth_vader.txt  millenium_falcon/  princess_leia.txt  storm_trooper.txt

//
Move princess_leia.txt into the millenium_falcon
//
shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star
$ mv princess_leia.txt millenium_falcon

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star
$ cd millenium_falcon

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star/millenium_falcon
$ ls
chewbaca.txt  han_solo.txt  obi_wan.txt  luke.txt  princess_leia.txt

//************************************************************************** */
Part V: rm - remove
//************************************************************************** */
You can use rm to delete a file.

For example, delete a file:

rm file1.txt
Delete obi_wan.txt

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star/millenium_falcon
$ rm obi_wan.txt

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star/millenium_falcon
$ ls
chewbaca.txt  han_solo.txt  luke.txt  princess_leia.txt

//************************************************************************** */
Part VI: all together
//************************************************************************** */

//In galaxy_far_far_away, make a directory called yavin_4

shelb@LAPTOP-H2515MJF MINGW64 ~
$ cd galaxy_far_far_away

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ mkdir yavin_4

//Move the millenium_falcon out of the death_star and into yavin_4

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ cd death_star

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star
$ mv millenium_falcon /yavin_4
mv: cannot move 'millenium_falcon' to '/yavin_4': Permission denied

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star
$ mv millenium_falcon ..

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star
$ cd..
bash: cd..: command not found

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star
$ cd ..

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ ls
death_star/  millenium_falcon/  tatooine/  yavin_4/

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ mv millenium_falcon /yavin_4
mv: cannot move 'millenium_falcon' to '/yavin_4': Permission denied (moved using GUI to cont. hw; troubleshooting error)

(figured out the Permission Denied error using SUDO)

//Make a directory in yavin_4 called x_wing

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/yavin_4
$ mkdir x_wing

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/yavin_4
$ ls
millenium_falcon/  x_wing/


//Move princess_leia.txt to yavin_4 and luke.txt to x_wing

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/yavin_4/millenium_falcon
$ mv luke.txt ../x_wing

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/yavin_4/millenium_falcon
$ cd x_wing
bash: cd: x_wing: No such file or directory

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/yavin_4/millenium_falcon
$ cd ..

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/yavin_4
$ cd x_wing

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/yavin_4/x_wing
$ ls
luke.txt

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/yavin_4/millenium_falcon
$ mv princess_leia.txt ../yavin_4

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/yavin_4/millenium_falcon
$ cd ..

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/yavin_4
$ ls
millenium_falcon/  princess_leia.txt  x_wing/

//Move the millenium_falcon and x_wing out of yavin_4 and into galaxy_far_far_away

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/yavin_4
$ mv millenium_falcon ..

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/yavin_4
$ mv x_wing ..

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/yavin_4
$ cd ..

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ ls
death_star/  millenium_falcon/  tatooine/  x_wing/  yavin_4/

//In death_star, create directories for tie_fighter_1, tie_fighter_2 and tie_fighter_3

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ cd death_star

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star
$ mkdir tie_fighter_1 tie_fighter_2 and tie_fighter_3

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star
$ ls
darth_vader.txt  storm_trooper.txt  tie_fighter_1,/  tie_fighter_2/  tie_fighter_3/

//Move darth_vader.txt into tie_fighter_1

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star
$ mv darth_vader.txt ./tie_fighter_1

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star
$ cd tie_fighter_1

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star/tie_fighter_1
$ ls
darth_vader.txt

//Make a copy of storm_trooper.txt in both tie_fighter_2 and tie_fighter_3

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star
$ cp storm_trooper.txt tie_fighter_2 tie_fighter_3
cp: -r not specified; omitting directory 'tie_fighter_2'

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star
$ cp storm_trooper.txt tie_fighter_2

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star
$ cd tie_fighter_2

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star/tie_fighter_2
$ ls
storm_trooper.txt

//Move all of the tie_fighters out of the death_star and into galaxy_far_far_away

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star
$ mv tie_fighter_1 ..

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star
$ mv tie_fighter_2 ..

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star
$ mv tie_fighter_3 ..

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/death_star
$ cd ..

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ ls
death_star/        tatooine/       tie_fighter_2/  x_wing/
millenium_falcon/  tie_fighter_1/  tie_fighter_3/  yavin_4/

//************************************************************************* */
Part VII: rm -r - remove directories
//************************************************************************* */
Be careful with this command - cannot undo!

Make sure you delete the right thing, or you could accidentally delete the contents of your computer (it has happened).

This command will typically not ask you if you really want to delete. It will just delete . . .

//Remove tie_fighters 2 and 3.

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ rm -r tie_fighter_2

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ rm -r tie_fighter_3

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ ls
death_star/  millenium_falcon/  tatooine/  tie_fighter_1/  x_wing/  yavin_4/

//************************************************************************* */
Part VIII: The Final Act
//************************************************************************* */

//Touch a file in x_wing called the_force.txt

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ cd x_wing

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/x_wing
$ touch the_force.txt

//Destroy the death_star and anyone inside of it.

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ rm -r death_star

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ ls
millenium_falcon/  tatooine/  tie_fighter_1/  x_wing/  yavin_4/

Return x_wing and the millenium_falcon to yavin_4

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ mv millenium_falcon ./yavin_4

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ mv x_wing ./yavin_4

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away
$ cd yavin_4

shelb@LAPTOP-H2515MJF MINGW64 ~/galaxy_far_far_away/yavin_4
$ ls
millenium_falcon/  princess_leia.txt  x_wing/
