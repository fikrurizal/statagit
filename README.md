# statagit

This repo is for testing my workflow to use git in Stata

This is my guide 

## Initial step to setup the pc (linking with github account)
This is the steps I took for linking monash laptop with my github account using SSH key (the most straightforward approach I've tried & successful in a first go)

1. Install git (from Software Centre)

2. Open PowerShell or Command Prompt. Generate SSH key: 
	
	```
	ssh-keygen -t ed25519 -C "your.email@example.com"
	```
	
	
3. Public key will be saved at: "C:\Users\your-username\.ssh\id_ed25519.pub"

4. Add the SSH key to GitHub:
	- Open the public key: run CMD and type "cat ~/.ssh/id_ed25519.pub" then enter. Copy the content
	- Go to your github: GitHub → Settings → SSH and GPG keys → New SSH key. 
	- Paste the key into the Key field and give it a title (for example monash_laptop).
	- Click Add SSH key.

7. Test the SSH Connection: in CMD, type "ssh -T git@github.com" and enter
With SSH set up, you won't be asked for credentials each time you push or pull. 

You can now use RStudio's Git tab or Terminal or Stata for version control tasks seamlessly.



## Initialize Git with Stata

These are the simplest steps to work with stata


1. Change directory to local folder you want to "push" to github repo (example)
```
cd "C:\..\statagit"
```

2. Check git status
```
!git status
```

3. Intialise git for the folder/directory
```
!git add .
!git commit -m "Initial commit with Stata project files"
```

4. Create repository in your github account. Don't add anything yet

5. Push the directory to hithub
```
!git remote add origin https://github.com/username/statagit.git
!git branch -M main
!git push -u origin main
```

6. Do some works/changes in the local directory. For example, I add a dofile & then push it to my github repo

```
!git add "dofiles/000_initialise git and github.do"
!git commit -m "Add do file containing guide in setting up git and github"
!git push -u origin main
```


