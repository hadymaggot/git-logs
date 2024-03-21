# git-logs
This bash script was created to make my job easier when working on a server that has not yet implemented version control automation. Where this script helps me to update sources regularly from the git repository to the server.

Embedding other commands such as ```stdout```, ```ts```, etc. when running ```git fetch``` and ```git pull``` command. So the output of each ```git``` command can be saved in one html file.

Create a job for exec the ```log.sh``` every 10 minutes
```bash
crontab -e
0,10,20,30,40,50 * * * * sh /home/<user>/log.sh
```

Screenshots:
![Sorry I'm sensored some detail](https://github.com/hadymaggot/git-logs/blob/main/images/Screenshot%202024-03-22%20010612.png)
