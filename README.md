# git-logs

Create a job for exec the ```logs.sh``` every 10 minutes
```bash
crontab -e
0,10,20,30,40,50 * * * * sh /home/<user>/logs.sh
```

Screenshots:
