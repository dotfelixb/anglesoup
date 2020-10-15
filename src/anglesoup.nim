import xmltree
import strutils

import anglesoup/types

# export from types
export AngleSoupError

type
  AngleSoup* = ref object
    content: string
    parser: Parser

proc newSoup*(content: string, parser: Parser = Parser.Html): AngleSoup =
  if content.isEmptyOrWhitespace():
    raise newException(
      AngleSoupError, 
      "Content can't be empty, make something out of nothing"
    )

  result = AngleSoup(
    content: content, 
    parser: parser
  )

proc prettify*() =
  discard
