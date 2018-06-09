# Introduction


## Why would you use this script/template?

The editor (person whose responsibility is editing text) will not have to work
with \LaTeX. Instead, he will be dealing with markdown files just like this
read-me.
While I am aware that there is another type of software like google docs,
MS office and others, but \LaTeX is different, here is why quoted from stack
exchange:

> One of the advantages of \LaTeX over other more traditional systems is the high
> typographical quality of the documents that you will be able to produce. This
> is particularly true for documents that are heavy on mathematics, but
> documents for any other area could also take advantage of these qualities.

> A less obvious advantage, but much more important, is that \LaTeX allows you to
> clearly separate the content from the format of your document. As a writer
> (scientist, researcher or not), this gives you the opportunity to focus on
> the “what”, the creative part of your work, rather than the “how” is
> it going to look printed out in paper (that is the work of \LaTeX document
> class designers).

> \LaTeX is intended to focus on document structure rather than appearance. Of
> course, some set up is needed to get the correct appearance, but once it is
> done most of the source you write is focused on structure. For example, there
> are commands such as \section for document structure rather than making
> everything bold, italic or whatever. This structured approach helps when you
> want to do things that are repetitive, as the formatting is always taken care
> of 'behind the scenes'.

### So, I am going to type \LaTeX?

No, that is where this template and automation script goes in :). You are
going to type Markdown and let the magic happens Mark down will get converted
to \LaTeX and then to PDF generating a beautiful looking PDF file.

### so that is about \LaTeX, now why would I use Markdown instead?

The source code of the above sub-section in Markdown will look like this:

```markdown
### So, I am going to type \LaTeX?

No, that is where this template and automation script
goes in :). You are going to type Markdown and let the
magic happens Mark down will get converted to \LaTeX
and then to PDF generating a beautiful looking PDF file.
```

However, in latex it will look something like this:

```tex
\documentclass{article}
    \usepackage[margin=0.7in]{geometry}
    \usepackage[parfill]{parskip}
    \usepackage[utf8]{inputenc}
    \usepackage{amsmath,amssymb,amsfonts,amsthm}
\begin{document}
\title{So, I am going to type \LaTeX?}
No, that is where this template and automation script
goes in :). You are going to type Markdown and let the
magic happens Mark down will get converted to \LaTeX
and then to PDF generating a beautiful looking PDF file.
\end{document}
```
The moral of the story is that markdown is orders of magnitude easier than
\LaTeX. One can practically learn it in less 10 minutes. But make no mistake,
Markdown is not as powerful as \LaTeX. This is where this template comes into
play, it make use of pandoc software and convert the markdown text to \LaTeX text
than apply some lengthy template and sprinkle some magic dust.

Out of the box, you will also get the following done automatically:

- Formatting text and editing fonts.
- Code coloring for almost every language you can use.
- Page numbering.
- Chapters numbering
- Bibliography(references) handling/numbering.
- Generating Table of contents.
- Figures numbering handling.
- Text reflowing.

Plus if you know \LaTeX, you can edit the tex template and add more to it :)

If you don't, you can completely avoid \LaTeX, but it will be the best available
option when writing math equations (embedded inside the markdown), other options
is to use [mathjax](https://www.mathjax.org/).
