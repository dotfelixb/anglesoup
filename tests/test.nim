# To run these tests, simply execute `nimble test`.

import unittest
import anglesoup

let
  htmlDoc = """<html>
  <head>
    <title>The Dormouse's story</title>
  </head>
  <body>
    <p class="title"><b>The Dormouse's story</b></p>

    <p class="story">Once upon a time there were three little sisters; and their names were
    <a href="http://example.com/elsie" class="sister" id="link1">Elsie</a>,
    <a href="http://example.com/lacie" class="sister" id="link2">Lacie</a> and
    <a href="http://example.com/tillie" class="sister" id="link3">Tillie</a>;
    and they lived at the bottom of a well.</p>

    <p class="story">...</p>
  </body>  
  </html>  
"""

# test "content can't be empty":
#   expect(AngleSoupError):
#     let _ = newSoup("")

# test "can create a soup":
#   let soup = newSoup(htmlDoc)
#   check(soup of AngleSoup) 

test "create a new anglesoup":
  let soup = newAngleSoup()
  check(soup of AngleSoup)
  echo soup.repr()

# title.name # return the name if the tag, i.e. title, 
# title.attrs # get attribs for this element
# title.text # get innertext of element

# test "can get soup title":
#   check(soup.title == "<title>The Dormouse's story</title>")
