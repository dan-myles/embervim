# Ember Vim
A simple neovim bootstrap made with Windows/Linux cross-compatibility in mind.
**CURRENTLY A WORK IN PROGRESS**

## Showcase
<img width="100%" src="https://i.imgur.com/BKhTAkj.png" alt="embervim showcase screenshot">

## Installation
You can clone the repository and manually move over the new configuration files
if you wish. I've provided some simple one-line installation scripts below for 
convenience that will install embervim for you!

*These install scripts will delete your exisiting neovim configuration files!*

Linux:
```sh 
wget https://raw.githubusercontent.com/danlikestocode/embervim/main/linux-install.sh && chmod u+x linux-install.sh && ./linux-install.sh
```

Windows:
```ps
coming soon
```

## Task List
- [x] Write installation script for UNIX based OS'
- [ ] Write installation script for Windows
- [ ] Write keybind reference
- [ ] Make documentation describing plugin configuration
- [ ] Update README with required dependencies (for Windows especially)

### Notes
I couldn't get a good file tree working between both Windows and Linux, and 
since that is really important to me as I move from those machines often
I thought using NetRW is just as good. The commands are a bit tricky but easy
once you get the hang of them. Moreover, NetRW lets you open a folder on a remote
machine, and I have yet to find a "File Tree" that allows that type of functionality.

