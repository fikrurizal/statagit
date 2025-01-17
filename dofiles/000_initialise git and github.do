* Initial step to setup the pc (linking with github account)

/*
* This is the steps I took for linking monash laptop with my github account using SSH key (the most straightforward approach I've tried & successful in a first go)
1. Install git (from Software Centre)


2. Open PowerShell or Command Prompt. Generate SSH key: ssh-keygen -t ed25519 -C "your.email@example.com"
3. Public key will be saved at: C:\Users\your-username\.ssh\id_ed25519.pub


4. Add the SSH key to GitHub
5. Open the public key: run CMD and type "cat ~/.ssh/id_ed25519.pub" then enter. Copy the content
6. Go to your github: GitHub → Settings → SSH and GPG keys → New SSH key. Paste the key into the Key field and give it a title (for example monash_laptop).
Click Add SSH key.

7. Test the SSH Connection: in CMD, type "ssh -T git@github.com" and enter
With SSH set up, you won't be asked for credentials each time you push or pull. You can now use RStudio's Git tab or Terminal or Stata for version control tasks seamlessly.

*/





* Initialize Git with Stata

* Change directory to local folder you want to "push" to github repo
cd "G:\My Drive\MUHEG - Others\CodingClub\statagit"

* Check status
!git status

* Intialise git for the folder/directory
!git add .
!git commit -m "Initial commit with Stata project files"

* Create repository in your github account. Don't add anything yet

* Push the directory to hithub
!git remote add origin https://github.com/fikrurizal/statagit.git
!git branch -M main
!git push -u origin main



* Do some works/changes in the local directory




