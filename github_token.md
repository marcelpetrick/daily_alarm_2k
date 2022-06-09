# error

```
pi@malina400:~/Desktop/music_for_daily_alarm $ git push origin master
Username for 'https://github.com': mail@marcelpetrick.it
Password for 'https://mail@marcelpetrick.it@github.com': 
remote: Support for password authentication was removed on August 13, 2021. Please use a personal access token instead.
remote: Please see https://github.blog/2020-12-15-token-authentication-requirements-for-git-operations/ for more information.
fatal: Authentication failed for 'https://github.com/marcelpetrick/daily_alarm_2k.git/'
pi@malina400:~/Desktop/music_for_daily_alarm $ 
```

# solution

Quote from: https://stackoverflow.com/questions/68775869/support-for-password-authentication-was-removed-please-use-a-personal-access-to

```
Create Personal Access Token on GitHub
From your GitHub account, go to Settings => Developer Settings => Personal Access Token => Generate New Token (Give your password) => Fillup the form => click Generate token => Copy the generated Token, it will be something like ghp_sFhFsSHhTzMDreGRLjmks4Tzuzgthdvfsrta

For a Linux-based OS ⤴
For Linux, you need to configure the local GIT client with a username and email address,

$ git config --global user.name "your_github_username"
$ git config --global user.email "your_github_email"
$ git config -l
Once GIT is configured, we can begin using it to access GitHub. Example:

$ git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY
> Cloning into `YOUR-REPOSITORY`...
Username: <type your username>
Password: <type your password or personal access token (GitHub)
Now cache the given record in your computer to remembers the token:

$ git config --global credential.helper cache
If needed, anytime you can delete the cache record by:

$ git config --global --unset credential.helper
$ git config --system --unset credential.helper
Now try to pull with -v to verify

$ git pull -v
Linux/Debian (Clone as follows):

git clone https://<tokenhere>@github.com/<user>/<repo>.git
```


