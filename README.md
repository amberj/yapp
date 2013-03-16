# yapp: yet another presentation program

## Status
Work in progress. As of now, following file formats are supported:
* Supported input file formats: .markdown
* Supported output file formats: .pdf

## Installation
### Dependencies
Install following dependencies (on which yapp depends) using your
system's package manager:
* pandoc
* latex
* make

### Installing and using yapp
yapp only consists of a Makefile to automatically generate presentations 
in various formats. If you have all the yapp dependencies installed, then 
using yapp is as simple as running 'make' (in the directory that contains 
your source markdown files).
* Downloading/installing yapp (if you have 'git' installed):
```git clone https://github.com/amberj/yapp.git```
* Downloading/installing yapp (if you don't have 'git' installed):
Simply download
[this file](https://raw.github.com/amberj/yapp/master/Makefile).

Now put all your presentation (in markdown format) in the directory 
containing the 
[Makefile](https://raw.github.com/amberj/yapp/master/Makefile) and then 
simply run:
```make```
That's it, you'll now have PDFs presentations in pdf/ in 'pwd'.

