HAI 1.2

OBTW
    Great LOLCODE guide - https://esolangs.org/wiki/LOLCODE
    To run - lci ./lolchess.lol
TLDR

VISIBLE "Welcome to lolchess!"

O HAI IM bored
    I HAS A initflag ITZ 0

    HOW IZ I initialized
        ME'Z initflag R 1
		FOUND YR ""
	IF U SAY SO

	HOW IZ I settin YR currentsquare AN YR value
        ME'Z initflag, WTF?
            OMG 0
                I HAS A index ITZ SMOOSH "index" AN currentsquare'Z rank AN currentsquare'Z file MKAY
                ME HAS A SRS index ITZ value
                GTFO
            OMG 1
                I HAS A index ITZ SMOOSH "index" AN currentsquare'Z rank AN currentsquare'Z file MKAY
                I HAS A tempval ITZ value
                ME'Z SRS index R tempval
        OIC
	IF U SAY SO

	HOW IZ I gettin YR currentsquare
        I HAS A index ITZ SMOOSH "index" AN currentsquare'Z rank AN currentsquare'Z file MKAY
        I HAS A tempval ITZ ME'Z SRS index
		FOUND YR tempval
	IF U SAY SO

	HOW IZ I namecallin YR piecename
        I HAS A name ITZ "      "
        piecename, WTF?
            OMG "rook"
                name R "rook  "
                GTFO
            OMG "knight"
                name R "knight"
                GTFO
            OMG "bishop"
                name R "bishop"
                GTFO
            OMG "queen"
                name R "queen "
                GTFO
            OMG "king"
                name R "king  "
                GTFO
            OMG "pawn"
                name R "pawn  "
                GTFO
        OIC
        FOUND YR name
	IF U SAY SO

    HOW IZ I colorcodin YR piececolor
        I HAS A color ITZ "      "
        piececolor, WTF?
            OMG "black"
                color R "black "
                GTFO
            OMG "white"
                color R "white "
                GTFO
        OIC
        FOUND YR color
	IF U SAY SO

    HOW IZ I filin YR file
        I HAS A filenumber ITZ 0
        file, WTF?
            OMG "a"
                filenumber R "1"
                GTFO
            OMG "b"
                filenumber R "1"
                GTFO
            OMG "c"
                filenumber R "1"
                GTFO
            OMG "d"
                filenumber R "1"
                GTFO
            OMG "e"
                filenumber R "1"
                GTFO
            OMG "f"
                filenumber R "1"
                GTFO
            OMG "g"
                filenumber R "1"
                GTFO
            OMG "h"
                filenumber R "1"
                GTFO
        OIC
        FOUND YR filenumber
	IF U SAY SO
KTHX

I HAS A currentbored ITZ LIEK A bored

IM IN YR initplaya UPPIN YR i TIL BOTH SAEM i AN 2
    I HAS A currank ITZ 0
    I HAS A curfile ITZ 0
    I HAS A curcolor ITZ ""
    I HAS A curpiece ITZ ""

    i, WTF?
        OMG 0
            curcolor R "black"
            currank R 8
            GTFO
        OMG 1
            curcolor R "white"
            currank R 1
            GTFO
    OIC

    IM IN YR initfirstrank UPPIN YR j TIL BOTH SAEM j AN 8
        curfile R SUM OF j AN 1
        j, WTF?
            OMG 0
                curpiece R "rook"
                GTFO
            OMG 1
                curpiece R "knight"
                GTFO
            OMG 2
                curpiece R "bishop"
                GTFO
            OMG 3
                curpiece R "queen"
                GTFO
            OMG 4
                curpiece R "king"
                GTFO
            OMG 5
                curpiece R "bishop"
                GTFO
            OMG 6
                curpiece R "knight"
                GTFO
            OMG 7
                curpiece R "rook"
                GTFO
        OIC

        I HAS A currentpiece ITZ A BUKKIT
        currentpiece HAS A color ITZ curcolor
        currentpiece HAS A name ITZ curpiece
        BTW VISIBLE SMOOSH "Adding " AN currentpiece'Z color AN " " AN currentpiece'Z name AN " to " AN curfile AN "," AN currank MKAY
        I HAS A currentsquare ITZ A BUKKIT
        currentsquare HAS A rank ITZ currank
        currentsquare HAS A file ITZ curfile
        currentbored IZ settin YR currentsquare AN YR currentpiece MKAY
    IM OUTTA YR initfirstrank

    i, WTF?
        OMG 0
            currank R 7
            GTFO
        OMG 1
            currank R 2
            GTFO
    OIC

    IM IN YR initsecondrank UPPIN YR j TIL BOTH SAEM j AN 8
        curfile R SUM OF j AN 1
        curpiece R "pawn"

        I HAS A currentpiece ITZ A BUKKIT
        currentpiece HAS A color ITZ curcolor
        currentpiece HAS A name ITZ curpiece
        BTW VISIBLE SMOOSH "Adding " AN currentpiece'Z color AN " " AN currentpiece'Z name AN " to " AN curfile AN "," AN currank MKAY
        I HAS A currentsquare ITZ A BUKKIT
        currentsquare HAS A rank ITZ currank
        currentsquare HAS A file ITZ curfile
        currentbored IZ settin YR currentsquare AN YR currentpiece MKAY
    IM OUTTA YR initsecondrank
IM OUTTA YR initplaya

IM IN YR initremainingranks UPPIN YR j TIL BOTH SAEM j AN 4
    I HAS A currank ITZ SUM OF j AN 3
    IM IN YR initremainingfiles UPPIN YR k TIL BOTH SAEM k AN 8
        I HAS A curfile ITZ SUM OF k AN 1

        I HAS A currentpiece ITZ A BUKKIT
        currentpiece HAS A color ITZ ""
        currentpiece HAS A name ITZ ""
        I HAS A currentsquare ITZ A BUKKIT
        currentsquare HAS A rank ITZ currank
        currentsquare HAS A file ITZ curfile
        currentbored IZ settin YR currentsquare AN YR currentpiece MKAY
    IM OUTTA YR initremainingfiles
IM OUTTA YR initremainingranks

currentbored IZ initialized MKAY

I HAS A gameover ITZ 0
I HAS A turncount ITZ 0
I HAS A targetfile ITZ ""
I HAS A targetrank ITZ ""
I HAS A destfile ITZ ""
I HAS A destrank ITZ ""

BTW Move selecting a square into the bored bukkit and act on validation
BTW Add selecting a destination square
BTW Add validating each attempted move
BTW End the game when a king is captured
IM IN YR gameloop UPPIN YR turncount WILE BOTH SAEM gameover AN 0
    IM IN YR playaturn UPPIN YR i TIL BOTH SAEM i AN 2
        I HAS A playacolor ITZ ""

        i, WTF?
            OMG 0
                playacolor R "white"
                GTFO
            OMG 1
                playacolor R "black"
                GTFO
        OIC

        VISIBLE ""
        VISIBLE "  a      b      c      d      e      f      g      h"
        IM IN YR displayranks UPPIN YR i TIL BOTH SAEM i AN 8
            I HAS A currank ITZ DIFF OF 8 AN i
            I HAS A colorline ITZ ""
            I HAS A nameline ITZ ""

            IM IN YR displayfiles UPPIN YR j TIL BOTH SAEM j AN 8
                I HAS A curfile ITZ SUM OF j AN 1
                I HAS A currentdispsquare ITZ A BUKKIT
                currentdispsquare HAS A rank ITZ currank
                currentdispsquare HAS A file ITZ curfile
                I HAS A newpiece ITZ currentbored IZ gettin YR currentdispsquare MKAY
                I HAS A colorname ITZ currentbored IZ colorcodin YR newpiece'Z color MKAY
                colorline R SMOOSH colorline AN "|" AN colorname MKAY
                I HAS A piecename ITZ currentbored IZ namecallin YR newpiece'Z name MKAY
                nameline R SMOOSH nameline AN "|" AN piecename MKAY
            IM OUTTA YR displayfiles

            colorline R SMOOSH currank AN colorline AN "|" AN currank MKAY
            nameline R SMOOSH " " AN nameline AN "|" MKAY
            VISIBLE colorline
            VISIBLE nameline
        IM OUTTA YR displayranks
        VISIBLE "  a      b      c      d      e      f      g      h"
        VISIBLE ""
        VISIBLE SMOOSH "Current turn: " AN playacolor MKAY
        VISIBLE ""
        VISIBLE "Enter file (a-h):"
        GIMMEH targetfile
        targetfile, WTF?
            OMG "exit"
                gameover R 1
                GTFO
            OMG "a"
                GTFO
            OMG "b"
                GTFO
            OMG "c"
                GTFO
            OMG "d"
                GTFO
            OMG "e"
                GTFO
            OMG "f"
                GTFO
            OMG "g"
                GTFO
            OMG "h"
                GTFO
            OMGWTF
                VISIBLE SMOOSH "'" AN targetfile AN "' is not a valid file!  Enter a valid file or 'exit' to exit." MKAY
        OIC
        targetfile R currentbored IZ filin YR targetfile MKAY
        VISIBLE "Enter rank (1-8):"
        GIMMEH targetrank
        targetrank, WTF?
            OMG "exit"
                gameover R 1
                GTFO
            OMG "1"
                GTFO
            OMG "2"
                GTFO
            OMG "3"
                GTFO
            OMG "4"
                GTFO
            OMG "5"
                GTFO
            OMG "6"
                GTFO
            OMG "7"
                GTFO
            OMG "8"
                GTFO
            OMGWTF
                VISIBLE SMOOSH "'" AN targetrank AN "' is not a valid rank!  Enter a valid rank or 'exit' to exit." MKAY
        OIC
        I HAS A targetsquare ITZ A BUKKIT
        targetsquare HAS A rank ITZ targetrank
        targetsquare HAS A file ITZ targetfile
        I HAS A targetpiece ITZ currentbored IZ gettin YR targetsquare MKAY
        VISIBLE ""
        BOTH SAEM targetpiece'Z color AN playacolor, O RLY?
            YA RLY, VISIBLE SMOOSH "You selected target " AN targetpiece'Z color AN " " AN targetpiece'Z name MKAY
            NO WAI, VISIBLE "You selected the wrong square!"
        OIC
    IM OUTTA YR playaturn
IM OUTTA YR gameloop

KTHXBYE
