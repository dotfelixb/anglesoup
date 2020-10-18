# Contains all types use by anglesoup except AngleSoup


type 
  HtmlKind* = enum
    Cdata,
    Comment,
    Element,
    Entity,
    RawText, 
    Text

  Parser* {.pure.} = enum
    Html, ## parse as html
    Xml   ## parse as xml

  AngleSoupError* = object of CatchableError 
    ## Main exception use by anglesoup unless otherwise

#   HtmlTag* = enum
    


