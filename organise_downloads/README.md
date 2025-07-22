<b>Organise_downloads</b>  

A small shell script to move the files from downloads to the folder it should be in one command. (No more clumsy Downloads folder ;-; ;-; ;-;)  

Working:-  
Just place a code word after the file as _read, _art or something and let the command sort the folder on its own.  

change the target dir path here
<pre> ```bash TARGET_DIR="$HOME/"Path" ``` </pre>

you can write your own code here  
<pre> ```bash for file in "$DOWNLOADS_DIR"/*_yourcode.*; do ``` </pre>  

Execution:-  
1) Download the .sh file.  
2) Make sure the script is executable  
<pre> ``` bash chmod +x ~/organise_downloads.sh ``` </pre>  
3)Edit .bashrc  
<pre> ```nano ~/.bashrc alias organisefiles='~/organise_downloads.sh' ``` </pre>  
4)Add this is a function, by this we can also add more controls or options later  
<pre> ```bash organisefiles(){ bash ~/organise_downloads.sh} ```</pre>  
5)Apply changes
<pre> ``` bash source ~/.bashrc ```</pre>  
6) You can run it by the following command and thats it all the files are sorted instantly  
<pre> ``` bash organisefiles ``` </pre>
