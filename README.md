# git-logs
This script was created to make my job easier when working on a server that has not yet implemented version control automation. Where this can helps me to updated sources regularly from the git repository to the server.

Embedding other commands such as ```stdout```, ```ts```, etc. when running ```git fetch``` and ```git pull``` command. So the output of each ```git``` command can be saved in one html file.

Make sure you can execute basic ```git``` commands manually (without error) to your existing repository.
___
- Clone this repository to your ```home directory```.
  ```bash
  git clone https://github.com/hadymaggot/git-logs.git /home/[user]/git-logs #change the path with yours
  ```
- Go to ```/home/[user]/git-logs``` and ```Copy``` the [demo](https://github.com/hadymaggot/git-logs/tree/main/demo) directory to your ```web_root```.
  ```bash
  cd /home/[user]/git-logs/ #change the path with yours
  cp -r demo/ /var/www/domain.tld/demo/
  ```
-  Create a job for exec the ```log.sh``` every 10 minutes
    ```bash
    crontab -e
    ```
    ```bash
    0,10,20,30,40,50 * * * * sh /home/[user]/log.sh #change the path with yours
    ```
___
Screenshots:
![Sorry I'm sensored some detail](https://github.com/hadymaggot/git-logs/blob/main/images/Screenshot%202024-03-22%20010612.png)
