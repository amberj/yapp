# yapp: yet another presentation program

Author the content of your presentation in Markdown and auto-export it to PDF, HTML etc.

## Status
Work in progress. As of now, following file formats are supported:
* Supported input file formats: **.markdown**
* Supported output file formats: **.pdf**
The plan is to add support for all input/output formats that are
supported by ```pandoc```.

## Installation
### Dependencies
Install following dependencies (on which yapp depends) using your
system's package manager:
* pandoc
* latex
* make

### Installing and using yapp
yapp only consists of a Makefile to automatically generate presentations 
in various formats. If you have all the 
[yapp dependencies](https://github.com/amberj/yapp#dependencies) 
installed, then using yapp is as simple as running 'make' (in the 
directory that contains your source markdown files).
* Downloading/installing yapp (if you have 'git' installed):
```git clone https://github.com/amberj/yapp.git```
* Downloading/installing yapp (if you don't have 'git' installed):
Simply download
[this file](https://raw.github.com/amberj/yapp/master/Makefile).

Now put all your presentation (in markdown format) in the directory 
containing the 
[Makefile](https://raw.github.com/amberj/yapp/master/Makefile) and then 
simply run: ```make```

That's it! You'll now have PDFs presentations in pdf/ in 'pwd'.

## Structuring the slide show (in markdown)
Since yapp uses [pandoc](http://johnmacfarlane.net/pandoc/) for creating
output presentations, structuring the slides in your source (markdown) 
document follows the 
[conventions of pandoc](http://johnmacfarlane.net/pandoc/README.html#structuring-the-slide-show).
In case of any discrepancies between quoted text below and the original 
pandoc documentation, 
[pandoc's documentation](http://johnmacfarlane.net/pandoc/README.html#structuring-the-slide-show) 
is the authoritative source. Quoting this section 
(titled "[Structuring the slide show](http://johnmacfarlane.net/pandoc/README.html#structuring-the-slide-show)")
from pandoc's documentation:
> By default, the *slide level* is the highest header level in the hierarchy that is followed immediately by content, and not another header, somewhere in the document. In the example above, level 1 headers are always followed by level 2 headers, which are followed by content, so 2 is the slide level. This default can be overridden using the ```--slide-level``` option.
> 
> The document is carved up into slides according to the following rules:
> * A horizontal rule always starts a new slide.
> * A header at the slide level always starts a new slide.
> * Headers *below* the slide level in the hierarchy create headers *within* a slide.
> * Headers *above* the slide level in the hierarchy create “title slides,” which just contain the section title and help to break the slide show into sections.
> * A title page is constructed automatically from the document’s title block, if present. (In the case of beamer, this can be disabled by commenting out some lines in the default template.)
> 
> These rules are designed to support many different styles of slide show. If you don’t care about structuring your slides into sections and subsections, you can just use level 1 headers for all each slide. (In that case, level 1 will be the slide level.) But you can also structure the slide show into sections, as in the example above.
