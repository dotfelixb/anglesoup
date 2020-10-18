import anglesoup/types
import xmltree


type
  AngleSoup* = ref object ## An Html or Xml tree consisting of nodes
    case k: HtmlKind
    of Cdata, Comment, Entity, RawText, Text:
      text*: string
    of Element:
      tag*: HtmlElement

  HtmlElement* {.acyclic.} = object
    # tag: string  # <a>
    name*: string # a
    content*: seq[AngleSoup] # <a>
    attrs*: XmlAttributes


proc createNode(kind: HtmlKind): AngleSoup =
  result = AngleSoup(k: kind)

proc newAngleSoup*(source: string=""): AngleSoup =
  ## parse an html or xml file and return the xml node
  ## as AngleSoup
  result = createNode(Element)

proc title*(self: AngleSoup): AngleSoup =
  ## get the html title element from the head tag

proc attrs*(self: AngleSoup): AngleSoup =
  ## get the html title element from the head tag    

proc text*(self: AngleSoup): AngleSoup =
  ## get the html title element from the head tag


