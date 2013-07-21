title = []
chapters = []
pages = []


title.push 'Table of Contents'
chapters.push 'Getting Started'
chapters.push 'Numbers'
chapters.push 'Letters'
pages.push 'page 1'
pages.push 'page 9'
pages.push 'page 13'

line_width = 40
puts(title[0].center(line_width))
puts(chapters[0].ljust(line_width/2) + pages[0].rjust(line_width/2))
puts(chapters[1].ljust(line_width/2) + pages[1].rjust(line_width/2))
puts(chapters[2].ljust(line_width/2) + pages[2].rjust(line_width/2))
