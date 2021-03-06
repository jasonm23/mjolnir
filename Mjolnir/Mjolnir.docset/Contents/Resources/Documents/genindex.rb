#!/usr/bin/env ruby

# gem install github-markdown

require 'github/markdown'
require 'erb'

content = GitHub::Markdown.render_gfm(File.read('index.md'))
html = ERB.new(DATA.read).result(binding)
File.write('index.html', html)

__END__
<html>
  <head>
    <title>Mjolnir docs</title>
    <style type="text/css">
      a { text-decoration: none; }
      a:hover { text-decoration: underline; }
      th, td { border: 1px solid #ccc; padding: 5px 10px; }
    </style>
  </head>
  <body>
    <header>
      <h1>Mjolnir.app</h1>
    </header>
    <section>
      <%= content %>
    </section>
  </body>
</html>
