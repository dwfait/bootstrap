# Dwain Faithfull's system bootstrap

This started out as a simple dotfiles repository, but I have since started adding in scripts.

## Dotfiles

The dotfiles.sh script will install my personal dotfiles. I'm not going in to details here, if you want to know more about them - go look at them.

## Scripts

A collection of scripts I've written or modified from the internet for one purpose or another. 

Running the scripts.sh file will install everything in the scripts/ director into /usr/local/bin - if you want to utilise them, you'll need that path in your $PATH variable. If it's not, the script will warn you when you run it.

I'm currently striving to keep my scripts written in Bourne shell script for portability and POSIX compliance (and for a fun exercise), which will mean that they will run on any UNIX based system.

### Current scripts:
  -   trimspace:
    -  Trim all trailing whitespace from a set of files.
    -  Usage: trimspace <file pattern>
    -  Example: trimspace "*.rb" will find (recursively) all the .rb files from current path and trim all trailing whitespace from the contents.


## Plans
I plan to write scripts to install all the tools on a system that I use for each operating system that I use (Perl, Ruby, GCC etc...). This is a large undertaking and will probably get done next time I do a clean format for one of my environments.
