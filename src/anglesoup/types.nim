# Contains all types use by anglesoup except AngleSoup

type 
    Parser* {.pure.} = enum
        Html, ## parse as html
        Xml   ## parse as xml

    AngleSoupError* = object of CatchableError
    # main exception use by anglesoup unless otherwise