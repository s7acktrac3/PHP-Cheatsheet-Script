# PHP-Cheatsheet-Script #
Use this bash script to search for code level vulenrabilities in PHP source code leveraging Grep.

Thus far it checks for:
 
- INFORMATION LEAKAGE

- COMMAND EXECUTION

- CODE EXECUTION

- SQL

- LFI/RFI

Most of the searches were created by @dustyfresh he gets all the credit for compiling them! I just automated the entire thing into this script

#### Usage: edit the path to point to the root of the project you want to inspect. (/var/www/html/cms/)
#### chmod +x <script> 
#### ./script

## Sample Output

![alt text](https://github.com/s7acktrac3/PHP-Cheatsheet-Script/blob/master/Screen%20Shot%202018-05-27%20at%2010.02.37%20AM.png)
