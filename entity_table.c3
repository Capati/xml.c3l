module xml;

const XML_NAME_TO_CHAR_32_MIN_LENGTH = 2; // &lt;
const XML_NAME_TO_CHAR_32_MAX_LENGTH = 31; // &CounterClockwiseContourIntegral;

fn Char32! named_xml_entity_to_char32(String name)
{
    if (name.len < $$min(1, XML_NAME_TO_CHAR_32_MIN_LENGTH) ||
        name.len > XML_NAME_TO_CHAR_32_MAX_LENGTH)
    {
        return 0;
    }

    switch (name[0])
    {
        case 'A':
            switch (name)
            {
                case "AElig": return 0xC6; // LATIN CAPITAL LETTER AE
                case "AMP": return 0x26; // AMPERSAND
                case "Aacgr": return 0x386; // GREEK CAPITAL LETTER ALPHA WITH TONOS
                case "Aacute": return 0xC1; // LATIN CAPITAL LETTER A WITH ACUTE
                case "Abreve": return 0x102; // LATIN CAPITAL LETTER A WITH BREVE
                case "Acirc": return 0xC2; // LATIN CAPITAL LETTER A WITH CIRCUMFLEX
                case "Acy": return 0x410; // CYRILLIC CAPITAL LETTER A
                case "Afr": return 0x1D504; // MATHEMATICAL FRAKTUR CAPITAL A
                case "Agr": return 0x391; // GREEK CAPITAL LETTER ALPHA
                case "Agrave": return 0xC0; // LATIN CAPITAL LETTER A WITH GRAVE
                case "Alpha": return 0x391; // GREEK CAPITAL LETTER ALPHA
                case "Amacr": return 0x100; // LATIN CAPITAL LETTER A WITH MACRON
                case "And": return 0x2A53; // DOUBLE LOGICAL AND
                case "Aogon": return 0x104; // LATIN CAPITAL LETTER A WITH OGONEK
                case "Aopf": return 0x1D538; // MATHEMATICAL DOUBLE-STRUCK CAPITAL A
                case "ApplyFunction": return 0x2061; // FUNCTION APPLICATION
                case "Aring": return 0xC5; // LATIN CAPITAL LETTER A WITH RING ABOVE
                case "Ascr": return 0x1D49C; // MATHEMATICAL SCRIPT CAPITAL A
                case "Assign": return 0x2254; // COLON EQUALS
                case "Ast": return 0x2051; // TWO ASTERISKS ALIGNED VERTICALLY
                case "Atilde": return 0xC3; // LATIN CAPITAL LETTER A WITH TILDE
                case "Auml": return 0xC4; // LATIN CAPITAL LETTER A WITH DIAERESIS
            }

        case 'B':
            switch (name)
            {
                case "Backslash": return 0x2216; // SET MINUS
                case "Barint": return 0x2A0E; // INTEGRAL WITH DOUBLE STROKE
                case "Barv": return 0x2AE7; // SHORT DOWN TACK WITH OVERBAR
                case "Barwed": return 0x2306; // PERSPECTIVE
                case "Barwedl": return 0x2A5E; // LOGICAL AND WITH DOUBLE OVERBAR
                case "Bcy": return 0x411; // CYRILLIC CAPITAL LETTER BE
                case "Because": return 0x2235; // BECAUSE
                case "Bernoullis": return 0x212C; // SCRIPT CAPITAL B
                case "Beta": return 0x392; // GREEK CAPITAL LETTER BETA
                case "Bfr": return 0x1D505; // MATHEMATICAL FRAKTUR CAPITAL B
                case "Bgr": return 0x392; // GREEK CAPITAL LETTER BETA
                case "Bopf": return 0x1D539; // MATHEMATICAL DOUBLE-STRUCK CAPITAL B
                case "Breve": return 0x2D8; // BREVE
                case "Bscr": return 0x212C; // SCRIPT CAPITAL B
                case "Bumpeq": return 0x224E; // GEOMETRICALLY EQUIVALENT TO
                case "Bvert": return 0x2506; // BOX DRAWINGS LIGHT TRIPLE DASH VERTICAL
            }

        case 'C':
            switch (name)
            {
                case "CHcy": return 0x427; // CYRILLIC CAPITAL LETTER CHE
                case "COPY": return 0xA9; // COPYRIGHT SIGN
                case "Cacute": return 0x106; // LATIN CAPITAL LETTER C WITH ACUTE
                case "Cap": return 0x22D2; // DOUBLE INTERSECTION
                case "CapitalDifferentialD": return 0x2145; // DOUBLE-STRUCK ITALIC CAPITAL D
                case "Cayleys": return 0x212D; // BLACK-LETTER CAPITAL C
                case "Ccaron": return 0x10C; // LATIN CAPITAL LETTER C WITH CARON
                case "Ccedil": return 0xC7; // LATIN CAPITAL LETTER C WITH CEDILLA
                case "Ccirc": return 0x108; // LATIN CAPITAL LETTER C WITH CIRCUMFLEX
                case "Cconint": return 0x2230; // VOLUME INTEGRAL
                case "Cdot": return 0x10A; // LATIN CAPITAL LETTER C WITH DOT ABOVE
                case "Cedilla": return 0xB8; // CEDILLA
                case "CenterDot": return 0xB7; // MIDDLE DOT
                case "Cfr": return 0x212D; // BLACK-LETTER CAPITAL C
                case "Chi": return 0x3A7; // GREEK CAPITAL LETTER CHI
                case "CircleDot": return 0x2299; // CIRCLED DOT OPERATOR
                case "CircleMinus": return 0x2296; // CIRCLED MINUS
                case "CirclePlus": return 0x2295; // CIRCLED PLUS
                case "CircleTimes": return 0x2297; // CIRCLED TIMES
                case "ClockwiseContourIntegral": return 0x2232; // CLOCKWISE CONTOUR INTEGRAL
                case "CloseCurlyDoubleQuote": return 0x201D; // RIGHT DOUBLE QUOTATION MARK
                case "CloseCurlyQuote": return 0x2019; // RIGHT SINGLE QUOTATION MARK
                case "Colon": return 0x2237; // PROPORTION
                case "Colone": return 0x2A74; // DOUBLE COLON EQUAL
                case "Congruent": return 0x2261; // IDENTICAL TO
                case "Conint": return 0x222F; // SURFACE INTEGRAL
                case "ContourIntegral": return 0x222E; // CONTOUR INTEGRAL
                case "Copf": return 0x2102; // DOUBLE-STRUCK CAPITAL C
                case "Coproduct": return 0x2210; // N-ARY COPRODUCT
                case "CounterClockwiseContourIntegral": return 0x2233; // ANTICLOCKWISE CONTOUR INTEGRAL
                case "Cross": return 0x2A2F; // VECTOR OR CROSS PRODUCT
                case "Cscr": return 0x1D49E; // MATHEMATICAL SCRIPT CAPITAL C
                case "Cup": return 0x22D3; // DOUBLE UNION
                case "CupCap": return 0x224D; // EQUIVALENT TO
            }

        case 'D':
            switch (name)
            {
                case "DD": return 0x2145; // DOUBLE-STRUCK ITALIC CAPITAL D
                case "DDotrahd": return 0x2911; // RIGHTWARDS ARROW WITH DOTTED STEM
                case "DJcy": return 0x402; // CYRILLIC CAPITAL LETTER DJE
                case "DScy": return 0x405; // CYRILLIC CAPITAL LETTER DZE
                case "DZcy": return 0x40F; // CYRILLIC CAPITAL LETTER DZHE
                case "Dagger": return 0x2021; // DOUBLE DAGGER
                case "Darr": return 0x21A1; // DOWNWARDS TWO HEADED ARROW
                case "Dashv": return 0x2AE4; // VERTICAL BAR DOUBLE LEFT TURNSTILE
                case "Dcaron": return 0x10E; // LATIN CAPITAL LETTER D WITH CARON
                case "Dcy": return 0x414; // CYRILLIC CAPITAL LETTER DE
                case "Del": return 0x2207; // NABLA
                case "Delta": return 0x394; // GREEK CAPITAL LETTER DELTA
                case "Dfr": return 0x1D507; // MATHEMATICAL FRAKTUR CAPITAL D
                case "Dgr": return 0x394; // GREEK CAPITAL LETTER DELTA
                case "DiacriticalAcute": return 0xB4; // ACUTE ACCENT
                case "DiacriticalDot": return 0x2D9; // DOT ABOVE
                case "DiacriticalDoubleAcute": return 0x2DD; // DOUBLE ACUTE ACCENT
                case "DiacriticalGrave": return 0x60; // GRAVE ACCENT
                case "DiacriticalTilde": return 0x2DC; // SMALL TILDE
                case "Diamond": return 0x22C4; // DIAMOND OPERATOR
                case "DifferentialD": return 0x2146; // DOUBLE-STRUCK ITALIC SMALL D
                case "Dopf": return 0x1D53B; // MATHEMATICAL DOUBLE-STRUCK CAPITAL D
                case "Dot": return 0xA8; // DIAERESIS
                case "DotDot": return 0x20DC; // COMBINING FOUR DOTS ABOVE
                case "DotEqual": return 0x2250; // APPROACHES THE LIMIT
                case "DoubleContourIntegral": return 0x222F; // SURFACE INTEGRAL
                case "DoubleDot": return 0xA8; // DIAERESIS
                case "DoubleDownArrow": return 0x21D3; // DOWNWARDS DOUBLE ARROW
                case "DoubleLeftArrow": return 0x21D0; // LEFTWARDS DOUBLE ARROW
                case "DoubleLeftRightArrow": return 0x21D4; // LEFT RIGHT DOUBLE ARROW
                case "DoubleLeftTee": return 0x2AE4; // VERTICAL BAR DOUBLE LEFT TURNSTILE
                case "DoubleLongLeftArrow": return 0x27F8; // LONG LEFTWARDS DOUBLE ARROW
                case "DoubleLongLeftRightArrow": return 0x27FA; // LONG LEFT RIGHT DOUBLE ARROW
                case "DoubleLongRightArrow": return 0x27F9; // LONG RIGHTWARDS DOUBLE ARROW
                case "DoubleRightArrow": return 0x21D2; // RIGHTWARDS DOUBLE ARROW
                case "DoubleRightTee": return 0x22A8; // TRUE
                case "DoubleUpArrow": return 0x21D1; // UPWARDS DOUBLE ARROW
                case "DoubleUpDownArrow": return 0x21D5; // UP DOWN DOUBLE ARROW
                case "DoubleVerticalBar": return 0x2225; // PARALLEL TO
                case "DownArrow": return 0x2193; // DOWNWARDS ARROW
                case "DownArrowBar": return 0x2913; // DOWNWARDS ARROW TO BAR
                case "DownArrowUpArrow": return 0x21F5; // DOWNWARDS ARROW LEFTWARDS OF UPWARDS ARROW
                case "DownBreve": return 0x311; // COMBINING INVERTED BREVE
                case "DownLeftRightVector": return 0x2950; // LEFT BARB DOWN RIGHT BARB DOWN HARPOON
                case "DownLeftTeeVector": return 0x295E; // LEFTWARDS HARPOON WITH BARB DOWN FROM BAR
                case "DownLeftVector": return 0x21BD; // LEFTWARDS HARPOON WITH BARB DOWNWARDS
                case "DownLeftVectorBar": return 0x2956; // LEFTWARDS HARPOON WITH BARB DOWN TO BAR
                case "DownRightTeeVector": return 0x295F; // RIGHTWARDS HARPOON WITH BARB DOWN FROM BAR
                case "DownRightVector": return 0x21C1; // RIGHTWARDS HARPOON WITH BARB DOWNWARDS
                case "DownRightVectorBar": return 0x2957; // RIGHTWARDS HARPOON WITH BARB DOWN TO BAR
                case "DownTee": return 0x22A4; // DOWN TACK
                case "DownTeeArrow": return 0x21A7; // DOWNWARDS ARROW FROM BAR
                case "Downarrow": return 0x21D3; // DOWNWARDS DOUBLE ARROW
                case "Dscr": return 0x1D49F; // MATHEMATICAL SCRIPT CAPITAL D
                case "Dstrok": return 0x110; // LATIN CAPITAL LETTER D WITH STROKE
            }

        case 'E':
            switch (name)
            {
                case "EEacgr": return 0x389; // GREEK CAPITAL LETTER ETA WITH TONOS
                case "EEgr": return 0x397; // GREEK CAPITAL LETTER ETA
                case "ENG": return 0x14A; // LATIN CAPITAL LETTER ENG
                case "ETH": return 0xD0; // LATIN CAPITAL LETTER ETH
                case "Eacgr": return 0x388; // GREEK CAPITAL LETTER EPSILON WITH TONOS
                case "Eacute": return 0xC9; // LATIN CAPITAL LETTER E WITH ACUTE
                case "Ecaron": return 0x11A; // LATIN CAPITAL LETTER E WITH CARON
                case "Ecirc": return 0xCA; // LATIN CAPITAL LETTER E WITH CIRCUMFLEX
                case "Ecy": return 0x42D; // CYRILLIC CAPITAL LETTER E
                case "Edot": return 0x116; // LATIN CAPITAL LETTER E WITH DOT ABOVE
                case "Efr": return 0x1D508; // MATHEMATICAL FRAKTUR CAPITAL E
                case "Egr": return 0x395; // GREEK CAPITAL LETTER EPSILON
                case "Egrave": return 0xC8; // LATIN CAPITAL LETTER E WITH GRAVE
                case "Element": return 0x2208; // ELEMENT OF
                case "Emacr": return 0x112; // LATIN CAPITAL LETTER E WITH MACRON
                case "EmptySmallSquare": return 0x25FB; // WHITE MEDIUM SQUARE
                case "EmptyVerySmallSquare": return 0x25AB; // WHITE SMALL SQUARE
                case "Eogon": return 0x118; // LATIN CAPITAL LETTER E WITH OGONEK
                case "Eopf": return 0x1D53C; // MATHEMATICAL DOUBLE-STRUCK CAPITAL E
                case "Epsilon": return 0x395; // GREEK CAPITAL LETTER EPSILON
                case "Equal": return 0x2A75; // TWO CONSECUTIVE EQUALS SIGNS
                case "EqualTilde": return 0x2242; // MINUS TILDE
                case "Equilibrium": return 0x21CC; // RIGHTWARDS HARPOON OVER LEFTWARDS HARPOON
                case "Escr": return 0x2130; // SCRIPT CAPITAL E
                case "Esim": return 0x2A73; // EQUALS SIGN ABOVE TILDE OPERATOR
                case "Eta": return 0x397; // GREEK CAPITAL LETTER ETA
                case "Euml": return 0xCB; // LATIN CAPITAL LETTER E WITH DIAERESIS
                case "Exists": return 0x2203; // THERE EXISTS
                case "ExponentialE": return 0x2147; // DOUBLE-STRUCK ITALIC SMALL E
            }

        case 'F':
            switch (name)
            {
                case "Fcy": return 0x424; // CYRILLIC CAPITAL LETTER EF
                case "Ffr": return 0x1D509; // MATHEMATICAL FRAKTUR CAPITAL F
                case "FilledSmallSquare": return 0x25FC; // BLACK MEDIUM SQUARE
                case "FilledVerySmallSquare": return 0x25AA; // BLACK SMALL SQUARE
                case "Fopf": return 0x1D53D; // MATHEMATICAL DOUBLE-STRUCK CAPITAL F
                case "ForAll": return 0x2200; // FOR ALL
                case "Fouriertrf": return 0x2131; // SCRIPT CAPITAL F
                case "Fscr": return 0x2131; // SCRIPT CAPITAL F
            }

        case 'G':
            switch (name)
            {
                case "GJcy": return 0x403; // CYRILLIC CAPITAL LETTER GJE
                case "GT": return 0x3E; // GREATER-THAN SIGN
                case "Game": return 0x2141; // TURNED SANS-SERIF CAPITAL G
                case "Gamma": return 0x393; // GREEK CAPITAL LETTER GAMMA
                case "Gammad": return 0x3DC; // GREEK LETTER DIGAMMA
                case "Gbreve": return 0x11E; // LATIN CAPITAL LETTER G WITH BREVE
                case "Gcedil": return 0x122; // LATIN CAPITAL LETTER G WITH CEDILLA
                case "Gcirc": return 0x11C; // LATIN CAPITAL LETTER G WITH CIRCUMFLEX
                case "Gcy": return 0x413; // CYRILLIC CAPITAL LETTER GHE
                case "Gdot": return 0x120; // LATIN CAPITAL LETTER G WITH DOT ABOVE
                case "Gfr": return 0x1D50A; // MATHEMATICAL FRAKTUR CAPITAL G
                case "Gg": return 0x22D9; // VERY MUCH GREATER-THAN
                case "Ggr": return 0x393; // GREEK CAPITAL LETTER GAMMA
                case "Gopf": return 0x1D53E; // MATHEMATICAL DOUBLE-STRUCK CAPITAL G
                case "GreaterEqual": return 0x2265; // GREATER-THAN OR EQUAL TO
                case "GreaterEqualLess": return 0x22DB; // GREATER-THAN EQUAL TO OR LESS-THAN
                case "GreaterFullEqual": return 0x2267; // GREATER-THAN OVER EQUAL TO
                case "GreaterGreater": return 0x2AA2; // DOUBLE NESTED GREATER-THAN
                case "GreaterLess": return 0x2277; // GREATER-THAN OR LESS-THAN
                case "GreaterSlantEqual": return 0x2A7E; // GREATER-THAN OR SLANTED EQUAL TO
                case "GreaterTilde": return 0x2273; // GREATER-THAN OR EQUIVALENT TO
                case "Gscr": return 0x1D4A2; // MATHEMATICAL SCRIPT CAPITAL G
                case "Gt": return 0x226B; // MUCH GREATER-THAN
            }

        case 'H':
            switch (name)
            {
                case "HARDcy": return 0x42A; // CYRILLIC CAPITAL LETTER HARD SIGN
                case "Hacek": return 0x2C7; // CARON
                case "Hat": return 0x5E; // CIRCUMFLEX ACCENT
                case "Hcirc": return 0x124; // LATIN CAPITAL LETTER H WITH CIRCUMFLEX
                case "Hfr": return 0x210C; // BLACK-LETTER CAPITAL H
                case "HilbertSpace": return 0x210B; // SCRIPT CAPITAL H
                case "Hopf": return 0x210D; // DOUBLE-STRUCK CAPITAL H
                case "HorizontalLine": return 0x2500; // BOX DRAWINGS LIGHT HORIZONTAL
                case "Hscr": return 0x210B; // SCRIPT CAPITAL H
                case "Hstrok": return 0x126; // LATIN CAPITAL LETTER H WITH STROKE
                case "HumpDownHump": return 0x224E; // GEOMETRICALLY EQUIVALENT TO
                case "HumpEqual": return 0x224F; // DIFFERENCE BETWEEN
            }

        case 'I':
            switch (name)
            {
                case "IEcy": return 0x415; // CYRILLIC CAPITAL LETTER IE
                case "IJlig": return 0x132; // LATIN CAPITAL LIGATURE IJ
                case "IOcy": return 0x401; // CYRILLIC CAPITAL LETTER IO
                case "Iacgr": return 0x38A; // GREEK CAPITAL LETTER IOTA WITH TONOS
                case "Iacute": return 0xCD; // LATIN CAPITAL LETTER I WITH ACUTE
                case "Icirc": return 0xCE; // LATIN CAPITAL LETTER I WITH CIRCUMFLEX
                case "Icy": return 0x418; // CYRILLIC CAPITAL LETTER I
                case "Idigr": return 0x3AA; // GREEK CAPITAL LETTER IOTA WITH DIALYTIKA
                case "Idot": return 0x130; // LATIN CAPITAL LETTER I WITH DOT ABOVE
                case "Ifr": return 0x2111; // BLACK-LETTER CAPITAL I
                case "Igr": return 0x399; // GREEK CAPITAL LETTER IOTA
                case "Igrave": return 0xCC; // LATIN CAPITAL LETTER I WITH GRAVE
                case "Im": return 0x2111; // BLACK-LETTER CAPITAL I
                case "Imacr": return 0x12A; // LATIN CAPITAL LETTER I WITH MACRON
                case "ImaginaryI": return 0x2148; // DOUBLE-STRUCK ITALIC SMALL I
                case "Implies": return 0x21D2; // RIGHTWARDS DOUBLE ARROW
                case "Int": return 0x222C; // DOUBLE INTEGRAL
                case "Integral": return 0x222B; // INTEGRAL
                case "Intersection": return 0x22C2; // N-ARY INTERSECTION
                case "InvisibleComma": return 0x2063; // INVISIBLE SEPARATOR
                case "InvisibleTimes": return 0x2062; // INVISIBLE TIMES
                case "Iogon": return 0x12E; // LATIN CAPITAL LETTER I WITH OGONEK
                case "Iopf": return 0x1D540; // MATHEMATICAL DOUBLE-STRUCK CAPITAL I
                case "Iota": return 0x399; // GREEK CAPITAL LETTER IOTA
                case "Iscr": return 0x2110; // SCRIPT CAPITAL I
                case "Itilde": return 0x128; // LATIN CAPITAL LETTER I WITH TILDE
                case "Iukcy": return 0x406; // CYRILLIC CAPITAL LETTER BYELORUSSIAN-UKRAINIAN I
                case "Iuml": return 0xCF; // LATIN CAPITAL LETTER I WITH DIAERESIS
            }

        case 'J':
            switch (name)
            {
                case "Jcirc": return 0x134; // LATIN CAPITAL LETTER J WITH CIRCUMFLEX
                case "Jcy": return 0x419; // CYRILLIC CAPITAL LETTER SHORT I
                case "Jfr": return 0x1D50D; // MATHEMATICAL FRAKTUR CAPITAL J
                case "Jopf": return 0x1D541; // MATHEMATICAL DOUBLE-STRUCK CAPITAL J
                case "Jscr": return 0x1D4A5; // MATHEMATICAL SCRIPT CAPITAL J
                case "Jsercy": return 0x408; // CYRILLIC CAPITAL LETTER JE
                case "Jukcy": return 0x404; // CYRILLIC CAPITAL LETTER UKRAINIAN IE
            }

        case 'K':
            switch (name)
            {
                case "KHcy": return 0x425; // CYRILLIC CAPITAL LETTER HA
                case "KHgr": return 0x3A7; // GREEK CAPITAL LETTER CHI
                case "KJcy": return 0x40C; // CYRILLIC CAPITAL LETTER KJE
                case "Kappa": return 0x39A; // GREEK CAPITAL LETTER KAPPA
                case "Kcedil": return 0x136; // LATIN CAPITAL LETTER K WITH CEDILLA
                case "Kcy": return 0x41A; // CYRILLIC CAPITAL LETTER KA
                case "Kfr": return 0x1D50E; // MATHEMATICAL FRAKTUR CAPITAL K
                case "Kgr": return 0x39A; // GREEK CAPITAL LETTER KAPPA
                case "Kopf": return 0x1D542; // MATHEMATICAL DOUBLE-STRUCK CAPITAL K
                case "Kscr": return 0x1D4A6; // MATHEMATICAL SCRIPT CAPITAL K
            }

        case 'L':
            switch (name)
            {
                case "LJcy": return 0x409; // CYRILLIC CAPITAL LETTER LJE
                case "LT": return 0x3C; // LESS-THAN SIGN
                case "Lacute": return 0x139; // LATIN CAPITAL LETTER L WITH ACUTE
                case "Lambda": return 0x39B; // GREEK CAPITAL LETTER LAMDA
                case "Lang": return 0x27EA; // MATHEMATICAL LEFT DOUBLE ANGLE BRACKET
                case "Laplacetrf": return 0x2112; // SCRIPT CAPITAL L
                case "Larr": return 0x219E; // LEFTWARDS TWO HEADED ARROW
                case "Lcaron": return 0x13D; // LATIN CAPITAL LETTER L WITH CARON
                case "Lcedil": return 0x13B; // LATIN CAPITAL LETTER L WITH CEDILLA
                case "Lcy": return 0x41B; // CYRILLIC CAPITAL LETTER EL
                case "LeftAngleBracket": return 0x27E8; // MATHEMATICAL LEFT ANGLE BRACKET
                case "LeftArrow": return 0x2190; // LEFTWARDS ARROW
                case "LeftArrowBar": return 0x21E4; // LEFTWARDS ARROW TO BAR
                case "LeftArrowRightArrow": return 0x21C6; // LEFTWARDS ARROW OVER RIGHTWARDS ARROW
                case "LeftCeiling": return 0x2308; // LEFT CEILING
                case "LeftDoubleBracket": return 0x27E6; // MATHEMATICAL LEFT WHITE SQUARE BRACKET
                case "LeftDownTeeVector": return 0x2961; // DOWNWARDS HARPOON WITH BARB LEFT FROM BAR
                case "LeftDownVector": return 0x21C3; // DOWNWARDS HARPOON WITH BARB LEFTWARDS
                case "LeftDownVectorBar": return 0x2959; // DOWNWARDS HARPOON WITH BARB LEFT TO BAR
                case "LeftFloor": return 0x230A; // LEFT FLOOR
                case "LeftRightArrow": return 0x2194; // LEFT RIGHT ARROW
                case "LeftRightVector": return 0x294E; // LEFT BARB UP RIGHT BARB UP HARPOON
                case "LeftTee": return 0x22A3; // LEFT TACK
                case "LeftTeeArrow": return 0x21A4; // LEFTWARDS ARROW FROM BAR
                case "LeftTeeVector": return 0x295A; // LEFTWARDS HARPOON WITH BARB UP FROM BAR
                case "LeftTriangle": return 0x22B2; // NORMAL SUBGROUP OF
                case "LeftTriangleBar": return 0x29CF; // LEFT TRIANGLE BESIDE VERTICAL BAR
                case "LeftTriangleEqual": return 0x22B4; // NORMAL SUBGROUP OF OR EQUAL TO
                case "LeftUpDownVector": return 0x2951; // UP BARB LEFT DOWN BARB LEFT HARPOON
                case "LeftUpTeeVector": return 0x2960; // UPWARDS HARPOON WITH BARB LEFT FROM BAR
                case "LeftUpVector": return 0x21BF; // UPWARDS HARPOON WITH BARB LEFTWARDS
                case "LeftUpVectorBar": return 0x2958; // UPWARDS HARPOON WITH BARB LEFT TO BAR
                case "LeftVector": return 0x21BC; // LEFTWARDS HARPOON WITH BARB UPWARDS
                case "LeftVectorBar": return 0x2952; // LEFTWARDS HARPOON WITH BARB UP TO BAR
                case "Leftarrow": return 0x21D0; // LEFTWARDS DOUBLE ARROW
                case "Leftrightarrow": return 0x21D4; // LEFT RIGHT DOUBLE ARROW
                case "LessEqualGreater": return 0x22DA; // LESS-THAN EQUAL TO OR GREATER-THAN
                case "LessFullEqual": return 0x2266; // LESS-THAN OVER EQUAL TO
                case "LessGreater": return 0x2276; // LESS-THAN OR GREATER-THAN
                case "LessLess": return 0x2AA1; // DOUBLE NESTED LESS-THAN
                case "LessSlantEqual": return 0x2A7D; // LESS-THAN OR SLANTED EQUAL TO
                case "LessTilde": return 0x2272; // LESS-THAN OR EQUIVALENT TO
                case "Lfr": return 0x1D50F; // MATHEMATICAL FRAKTUR CAPITAL L
                case "Lgr": return 0x39B; // GREEK CAPITAL LETTER LAMDA
                case "Ll": return 0x22D8; // VERY MUCH LESS-THAN
                case "Lleftarrow": return 0x21DA; // LEFTWARDS TRIPLE ARROW
                case "Lmidot": return 0x13F; // LATIN CAPITAL LETTER L WITH MIDDLE DOT
                case "LongLeftArrow": return 0x27F5; // LONG LEFTWARDS ARROW
                case "LongLeftRightArrow": return 0x27F7; // LONG LEFT RIGHT ARROW
                case "LongRightArrow": return 0x27F6; // LONG RIGHTWARDS ARROW
                case "Longleftarrow": return 0x27F8; // LONG LEFTWARDS DOUBLE ARROW
                case "Longleftrightarrow": return 0x27FA; // LONG LEFT RIGHT DOUBLE ARROW
                case "Longrightarrow": return 0x27F9; // LONG RIGHTWARDS DOUBLE ARROW
                case "Lopf": return 0x1D543; // MATHEMATICAL DOUBLE-STRUCK CAPITAL L
                case "LowerLeftArrow": return 0x2199; // SOUTH WEST ARROW
                case "LowerRightArrow": return 0x2198; // SOUTH EAST ARROW
                case "Lscr": return 0x2112; // SCRIPT CAPITAL L
                case "Lsh": return 0x21B0; // UPWARDS ARROW WITH TIP LEFTWARDS
                case "Lstrok": return 0x141; // LATIN CAPITAL LETTER L WITH STROKE
                case "Lt": return 0x226A; // MUCH LESS-THAN
                case "Ltbar": return 0x2AA3; // DOUBLE NESTED LESS-THAN WITH UNDERBAR
            }

        case 'M':
            switch (name)
            {
                case "Map": return 0x2905; // RIGHTWARDS TWO-HEADED ARROW FROM BAR
                case "Mapfrom": return 0x2906; // LEFTWARDS DOUBLE ARROW FROM BAR
                case "Mapto": return 0x2907; // RIGHTWARDS DOUBLE ARROW FROM BAR
                case "Mcy": return 0x41C; // CYRILLIC CAPITAL LETTER EM
                case "MediumSpace": return 0x205F; // MEDIUM MATHEMATICAL SPACE
                case "Mellintrf": return 0x2133; // SCRIPT CAPITAL M
                case "Mfr": return 0x1D510; // MATHEMATICAL FRAKTUR CAPITAL M
                case "Mgr": return 0x39C; // GREEK CAPITAL LETTER MU
                case "MinusPlus": return 0x2213; // MINUS-OR-PLUS SIGN
                case "Mopf": return 0x1D544; // MATHEMATICAL DOUBLE-STRUCK CAPITAL M
                case "Mscr": return 0x2133; // SCRIPT CAPITAL M
                case "Mu": return 0x39C; // GREEK CAPITAL LETTER MU
            }

        case 'N':
            switch (name)
            {
                case "NJcy": return 0x40A; // CYRILLIC CAPITAL LETTER NJE
                case "Nacute": return 0x143; // LATIN CAPITAL LETTER N WITH ACUTE
                case "Ncaron": return 0x147; // LATIN CAPITAL LETTER N WITH CARON
                case "Ncedil": return 0x145; // LATIN CAPITAL LETTER N WITH CEDILLA
                case "Ncy": return 0x41D; // CYRILLIC CAPITAL LETTER EN
                case "NegativeMediumSpace": return 0x200B; // ZERO WIDTH SPACE
                case "NegativeThickSpace": return 0x200B; // ZERO WIDTH SPACE
                case "NegativeThinSpace": return 0x200B; // ZERO WIDTH SPACE
                case "NegativeVeryThinSpace": return 0x200B; // ZERO WIDTH SPACE
                case "NestedGreaterGreater": return 0x226B; // MUCH GREATER-THAN
                case "NestedLessLess": return 0x226A; // MUCH LESS-THAN
                case "NewLine": return 0xA; // LINE FEED (LF)
                case "Nfr": return 0x1D511; // MATHEMATICAL FRAKTUR CAPITAL N
                case "Ngr": return 0x39D; // GREEK CAPITAL LETTER NU
                case "NoBreak": return 0x2060; // WORD JOINER
                case "NonBreakingSpace": return 0xA0; // NO-BREAK SPACE
                case "Nopf": return 0x2115; // DOUBLE-STRUCK CAPITAL N
                case "Not": return 0x2AEC; // DOUBLE STROKE NOT SIGN
                case "NotCongruent": return 0x2262; // NOT IDENTICAL TO
                case "NotCupCap": return 0x226D; // NOT EQUIVALENT TO
                case "NotDoubleVerticalBar": return 0x2226; // NOT PARALLEL TO
                case "NotElement": return 0x2209; // NOT AN ELEMENT OF
                case "NotEqual": return 0x2260; // NOT EQUAL TO
                case "NotExists": return 0x2204; // THERE DOES NOT EXIST
                case "NotGreater": return 0x226F; // NOT GREATER-THAN
                case "NotGreaterEqual": return 0x2271; // NEITHER GREATER-THAN NOR EQUAL TO
                case "NotGreaterLess": return 0x2279; // NEITHER GREATER-THAN NOR LESS-THAN
                case "NotGreaterTilde": return 0x2275; // NEITHER GREATER-THAN NOR EQUIVALENT TO
                case "NotLeftTriangle": return 0x22EA; // NOT NORMAL SUBGROUP OF
                case "NotLeftTriangleEqual": return 0x22EC; // NOT NORMAL SUBGROUP OF OR EQUAL TO
                case "NotLess": return 0x226E; // NOT LESS-THAN
                case "NotLessEqual": return 0x2270; // NEITHER LESS-THAN NOR EQUAL TO
                case "NotLessGreater": return 0x2278; // NEITHER LESS-THAN NOR GREATER-THAN
                case "NotLessTilde": return 0x2274; // NEITHER LESS-THAN NOR EQUIVALENT TO
                case "NotPrecedes": return 0x2280; // DOES NOT PRECEDE
                case "NotPrecedesSlantEqual": return 0x22E0; // DOES NOT PRECEDE OR EQUAL
                case "NotReverseElement": return 0x220C; // DOES NOT CONTAIN AS MEMBER
                case "NotRightTriangle": return 0x22EB; // DOES NOT CONTAIN AS NORMAL SUBGROUP
                case "NotRightTriangleEqual": return 0x22ED; // DOES NOT CONTAIN AS NORMAL SUBGROUP OR EQUAL
                case "NotSquareSubsetEqual": return 0x22E2; // NOT SQUARE IMAGE OF OR EQUAL TO
                case "NotSquareSupersetEqual": return 0x22E3; // NOT SQUARE ORIGINAL OF OR EQUAL TO
                case "NotSubsetEqual": return 0x2288; // NEITHER A SUBSET OF NOR EQUAL TO
                case "NotSucceeds": return 0x2281; // DOES NOT SUCCEED
                case "NotSucceedsSlantEqual": return 0x22E1; // DOES NOT SUCCEED OR EQUAL
                case "NotSupersetEqual": return 0x2289; // NEITHER A SUPERSET OF NOR EQUAL TO
                case "NotTilde": return 0x2241; // NOT TILDE
                case "NotTildeEqual": return 0x2244; // NOT ASYMPTOTICALLY EQUAL TO
                case "NotTildeFullEqual": return 0x2247; // NEITHER APPROXIMATELY NOR ACTUALLY EQUAL TO
                case "NotTildeTilde": return 0x2249; // NOT ALMOST EQUAL TO
                case "NotVerticalBar": return 0x2224; // DOES NOT DIVIDE
                case "Nscr": return 0x1D4A9; // MATHEMATICAL SCRIPT CAPITAL N
                case "Ntilde": return 0xD1; // LATIN CAPITAL LETTER N WITH TILDE
                case "Nu": return 0x39D; // GREEK CAPITAL LETTER NU
            }

        case 'O':
            switch (name)
            {
                case "OElig": return 0x152; // LATIN CAPITAL LIGATURE OE
                case "OHacgr": return 0x38F; // GREEK CAPITAL LETTER OMEGA WITH TONOS
                case "OHgr": return 0x3A9; // GREEK CAPITAL LETTER OMEGA
                case "Oacgr": return 0x38C; // GREEK CAPITAL LETTER OMICRON WITH TONOS
                case "Oacute": return 0xD3; // LATIN CAPITAL LETTER O WITH ACUTE
                case "Ocirc": return 0xD4; // LATIN CAPITAL LETTER O WITH CIRCUMFLEX
                case "Ocy": return 0x41E; // CYRILLIC CAPITAL LETTER O
                case "Odblac": return 0x150; // LATIN CAPITAL LETTER O WITH DOUBLE ACUTE
                case "Ofr": return 0x1D512; // MATHEMATICAL FRAKTUR CAPITAL O
                case "Ogr": return 0x39F; // GREEK CAPITAL LETTER OMICRON
                case "Ograve": return 0xD2; // LATIN CAPITAL LETTER O WITH GRAVE
                case "Omacr": return 0x14C; // LATIN CAPITAL LETTER O WITH MACRON
                case "Omega": return 0x3A9; // GREEK CAPITAL LETTER OMEGA
                case "Omicron": return 0x39F; // GREEK CAPITAL LETTER OMICRON
                case "Oopf": return 0x1D546; // MATHEMATICAL DOUBLE-STRUCK CAPITAL O
                case "OpenCurlyDoubleQuote": return 0x201C; // LEFT DOUBLE QUOTATION MARK
                case "OpenCurlyQuote": return 0x2018; // LEFT SINGLE QUOTATION MARK
                case "Or": return 0x2A54; // DOUBLE LOGICAL OR
                case "Oscr": return 0x1D4AA; // MATHEMATICAL SCRIPT CAPITAL O
                case "Oslash": return 0xD8; // LATIN CAPITAL LETTER O WITH STROKE
                case "Otilde": return 0xD5; // LATIN CAPITAL LETTER O WITH TILDE
                case "Otimes": return 0x2A37; // MULTIPLICATION SIGN IN DOUBLE CIRCLE
                case "Ouml": return 0xD6; // LATIN CAPITAL LETTER O WITH DIAERESIS
                case "OverBar": return 0x203E; // OVERLINE
                case "OverBrace": return 0x23DE; // TOP CURLY BRACKET
                case "OverBracket": return 0x23B4; // TOP SQUARE BRACKET
                case "OverParenthesis": return 0x23DC; // TOP PARENTHESIS
            }

        case 'P':
            switch (name)
            {
                case "PHgr": return 0x3A6; // GREEK CAPITAL LETTER PHI
                case "PSgr": return 0x3A8; // GREEK CAPITAL LETTER PSI
                case "PartialD": return 0x2202; // PARTIAL DIFFERENTIAL
                case "Pcy": return 0x41F; // CYRILLIC CAPITAL LETTER PE
                case "Pfr": return 0x1D513; // MATHEMATICAL FRAKTUR CAPITAL P
                case "Pgr": return 0x3A0; // GREEK CAPITAL LETTER PI
                case "Phi": return 0x3A6; // GREEK CAPITAL LETTER PHI
                case "Pi": return 0x3A0; // GREEK CAPITAL LETTER PI
                case "PlusMinus": return 0xB1; // PLUS-MINUS SIGN
                case "Poincareplane": return 0x210C; // BLACK-LETTER CAPITAL H
                case "Popf": return 0x2119; // DOUBLE-STRUCK CAPITAL P
                case "Pr": return 0x2ABB; // DOUBLE PRECEDES
                case "Precedes": return 0x227A; // PRECEDES
                case "PrecedesEqual": return 0x2AAF; // PRECEDES ABOVE SINGLE-LINE EQUALS SIGN
                case "PrecedesSlantEqual": return 0x227C; // PRECEDES OR EQUAL TO
                case "PrecedesTilde": return 0x227E; // PRECEDES OR EQUIVALENT TO
                case "Prime": return 0x2033; // DOUBLE PRIME
                case "Product": return 0x220F; // N-ARY PRODUCT
                case "Proportion": return 0x2237; // PROPORTION
                case "Proportional": return 0x221D; // PROPORTIONAL TO
                case "Pscr": return 0x1D4AB; // MATHEMATICAL SCRIPT CAPITAL P
                case "Psi": return 0x3A8; // GREEK CAPITAL LETTER PSI
            }

        case 'Q':
            switch (name)
            {
                case "QUOT": return 0x22; // QUOTATION MARK
                case "Qfr": return 0x1D514; // MATHEMATICAL FRAKTUR CAPITAL Q
                case "Qopf": return 0x211A; // DOUBLE-STRUCK CAPITAL Q
                case "Qscr": return 0x1D4AC; // MATHEMATICAL SCRIPT CAPITAL Q
            }

        case 'R':
            switch (name)
            {
                case "RBarr": return 0x2910; // RIGHTWARDS TWO-HEADED TRIPLE DASH ARROW
                case "REG": return 0xAE; // REGISTERED SIGN
                case "Racute": return 0x154; // LATIN CAPITAL LETTER R WITH ACUTE
                case "Rang": return 0x27EB; // MATHEMATICAL RIGHT DOUBLE ANGLE BRACKET
                case "Rarr": return 0x21A0; // RIGHTWARDS TWO HEADED ARROW
                case "Rarrtl": return 0x2916; // RIGHTWARDS TWO-HEADED ARROW WITH TAIL
                case "Rcaron": return 0x158; // LATIN CAPITAL LETTER R WITH CARON
                case "Rcedil": return 0x156; // LATIN CAPITAL LETTER R WITH CEDILLA
                case "Rcy": return 0x420; // CYRILLIC CAPITAL LETTER ER
                case "Re": return 0x211C; // BLACK-LETTER CAPITAL R
                case "ReverseElement": return 0x220B; // CONTAINS AS MEMBER
                case "ReverseEquilibrium": return 0x21CB; // LEFTWARDS HARPOON OVER RIGHTWARDS HARPOON
                case "ReverseUpEquilibrium": return 0x296F; // DOWNWARDS HARPOON WITH BARB LEFT BESIDE UPWARDS HARPOON WITH BARB RIGHT
                case "Rfr": return 0x211C; // BLACK-LETTER CAPITAL R
                case "Rgr": return 0x3A1; // GREEK CAPITAL LETTER RHO
                case "Rho": return 0x3A1; // GREEK CAPITAL LETTER RHO
                case "RightAngleBracket": return 0x27E9; // MATHEMATICAL RIGHT ANGLE BRACKET
                case "RightArrow": return 0x2192; // RIGHTWARDS ARROW
                case "RightArrowBar": return 0x21E5; // RIGHTWARDS ARROW TO BAR
                case "RightArrowLeftArrow": return 0x21C4; // RIGHTWARDS ARROW OVER LEFTWARDS ARROW
                case "RightCeiling": return 0x2309; // RIGHT CEILING
                case "RightDoubleBracket": return 0x27E7; // MATHEMATICAL RIGHT WHITE SQUARE BRACKET
                case "RightDownTeeVector": return 0x295D; // DOWNWARDS HARPOON WITH BARB RIGHT FROM BAR
                case "RightDownVector": return 0x21C2; // DOWNWARDS HARPOON WITH BARB RIGHTWARDS
                case "RightDownVectorBar": return 0x2955; // DOWNWARDS HARPOON WITH BARB RIGHT TO BAR
                case "RightFloor": return 0x230B; // RIGHT FLOOR
                case "RightTee": return 0x22A2; // RIGHT TACK
                case "RightTeeArrow": return 0x21A6; // RIGHTWARDS ARROW FROM BAR
                case "RightTeeVector": return 0x295B; // RIGHTWARDS HARPOON WITH BARB UP FROM BAR
                case "RightTriangle": return 0x22B3; // CONTAINS AS NORMAL SUBGROUP
                case "RightTriangleBar": return 0x29D0; // VERTICAL BAR BESIDE RIGHT TRIANGLE
                case "RightTriangleEqual": return 0x22B5; // CONTAINS AS NORMAL SUBGROUP OR EQUAL TO
                case "RightUpDownVector": return 0x294F; // UP BARB RIGHT DOWN BARB RIGHT HARPOON
                case "RightUpTeeVector": return 0x295C; // UPWARDS HARPOON WITH BARB RIGHT FROM BAR
                case "RightUpVector": return 0x21BE; // UPWARDS HARPOON WITH BARB RIGHTWARDS
                case "RightUpVectorBar": return 0x2954; // UPWARDS HARPOON WITH BARB RIGHT TO BAR
                case "RightVector": return 0x21C0; // RIGHTWARDS HARPOON WITH BARB UPWARDS
                case "RightVectorBar": return 0x2953; // RIGHTWARDS HARPOON WITH BARB UP TO BAR
                case "Rightarrow": return 0x21D2; // RIGHTWARDS DOUBLE ARROW
                case "Ropf": return 0x211D; // DOUBLE-STRUCK CAPITAL R
                case "RoundImplies": return 0x2970; // RIGHT DOUBLE ARROW WITH ROUNDED HEAD
                case "Rrightarrow": return 0x21DB; // RIGHTWARDS TRIPLE ARROW
                case "Rscr": return 0x211B; // SCRIPT CAPITAL R
                case "Rsh": return 0x21B1; // UPWARDS ARROW WITH TIP RIGHTWARDS
                case "RuleDelayed": return 0x29F4; // RULE-DELAYED
            }

        case 'S':
            switch (name)
            {
                case "SHCHcy": return 0x429; // CYRILLIC CAPITAL LETTER SHCHA
                case "SHcy": return 0x428; // CYRILLIC CAPITAL LETTER SHA
                case "SOFTcy": return 0x42C; // CYRILLIC CAPITAL LETTER SOFT SIGN
                case "Sacute": return 0x15A; // LATIN CAPITAL LETTER S WITH ACUTE
                case "Sc": return 0x2ABC; // DOUBLE SUCCEEDS
                case "Scaron": return 0x160; // LATIN CAPITAL LETTER S WITH CARON
                case "Scedil": return 0x15E; // LATIN CAPITAL LETTER S WITH CEDILLA
                case "Scirc": return 0x15C; // LATIN CAPITAL LETTER S WITH CIRCUMFLEX
                case "Scy": return 0x421; // CYRILLIC CAPITAL LETTER ES
                case "Sfr": return 0x1D516; // MATHEMATICAL FRAKTUR CAPITAL S
                case "Sgr": return 0x3A3; // GREEK CAPITAL LETTER SIGMA
                case "ShortDownArrow": return 0x2193; // DOWNWARDS ARROW
                case "ShortLeftArrow": return 0x2190; // LEFTWARDS ARROW
                case "ShortRightArrow": return 0x2192; // RIGHTWARDS ARROW
                case "ShortUpArrow": return 0x2191; // UPWARDS ARROW
                case "Sigma": return 0x3A3; // GREEK CAPITAL LETTER SIGMA
                case "SmallCircle": return 0x2218; // RING OPERATOR
                case "Sopf": return 0x1D54A; // MATHEMATICAL DOUBLE-STRUCK CAPITAL S
                case "Sqrt": return 0x221A; // SQUARE ROOT
                case "Square": return 0x25A1; // WHITE SQUARE
                case "SquareIntersection": return 0x2293; // SQUARE CAP
                case "SquareSubset": return 0x228F; // SQUARE IMAGE OF
                case "SquareSubsetEqual": return 0x2291; // SQUARE IMAGE OF OR EQUAL TO
                case "SquareSuperset": return 0x2290; // SQUARE ORIGINAL OF
                case "SquareSupersetEqual": return 0x2292; // SQUARE ORIGINAL OF OR EQUAL TO
                case "SquareUnion": return 0x2294; // SQUARE CUP
                case "Sscr": return 0x1D4AE; // MATHEMATICAL SCRIPT CAPITAL S
                case "Star": return 0x22C6; // STAR OPERATOR
                case "Sub": return 0x22D0; // DOUBLE SUBSET
                case "Subset": return 0x22D0; // DOUBLE SUBSET
                case "SubsetEqual": return 0x2286; // SUBSET OF OR EQUAL TO
                case "Succeeds": return 0x227B; // SUCCEEDS
                case "SucceedsEqual": return 0x2AB0; // SUCCEEDS ABOVE SINGLE-LINE EQUALS SIGN
                case "SucceedsSlantEqual": return 0x227D; // SUCCEEDS OR EQUAL TO
                case "SucceedsTilde": return 0x227F; // SUCCEEDS OR EQUIVALENT TO
                case "SuchThat": return 0x220B; // CONTAINS AS MEMBER
                case "Sum": return 0x2211; // N-ARY SUMMATION
                case "Sup": return 0x22D1; // DOUBLE SUPERSET
                case "Superset": return 0x2283; // SUPERSET OF
                case "SupersetEqual": return 0x2287; // SUPERSET OF OR EQUAL TO
                case "Supset": return 0x22D1; // DOUBLE SUPERSET
            }

        case 'T':
            switch (name)
            {
                case "THORN": return 0xDE; // LATIN CAPITAL LETTER THORN
                case "THgr": return 0x398; // GREEK CAPITAL LETTER THETA
                case "TRADE": return 0x2122; // TRADE MARK SIGN
                case "TSHcy": return 0x40B; // CYRILLIC CAPITAL LETTER TSHE
                case "TScy": return 0x426; // CYRILLIC CAPITAL LETTER TSE
                case "Tab": return 0x9; // CHARACTER TABULATION
                case "Tau": return 0x3A4; // GREEK CAPITAL LETTER TAU
                case "Tcaron": return 0x164; // LATIN CAPITAL LETTER T WITH CARON
                case "Tcedil": return 0x162; // LATIN CAPITAL LETTER T WITH CEDILLA
                case "Tcy": return 0x422; // CYRILLIC CAPITAL LETTER TE
                case "Tfr": return 0x1D517; // MATHEMATICAL FRAKTUR CAPITAL T
                case "Tgr": return 0x3A4; // GREEK CAPITAL LETTER TAU
                case "Therefore": return 0x2234; // THEREFORE
                case "Theta": return 0x398; // GREEK CAPITAL LETTER THETA
                case "Thetav": return 0x3F4; // GREEK CAPITAL THETA SYMBOL
                case "ThinSpace": return 0x2009; // THIN SPACE
                case "Tilde": return 0x223C; // TILDE OPERATOR
                case "TildeEqual": return 0x2243; // ASYMPTOTICALLY EQUAL TO
                case "TildeFullEqual": return 0x2245; // APPROXIMATELY EQUAL TO
                case "TildeTilde": return 0x2248; // ALMOST EQUAL TO
                case "Topf": return 0x1D54B; // MATHEMATICAL DOUBLE-STRUCK CAPITAL T
                case "TripleDot": return 0x20DB; // COMBINING THREE DOTS ABOVE
                case "Tscr": return 0x1D4AF; // MATHEMATICAL SCRIPT CAPITAL T
                case "Tstrok": return 0x166; // LATIN CAPITAL LETTER T WITH STROKE
            }

        case 'U':
            switch (name)
            {
                case "Uacgr": return 0x38E; // GREEK CAPITAL LETTER UPSILON WITH TONOS
                case "Uacute": return 0xDA; // LATIN CAPITAL LETTER U WITH ACUTE
                case "Uarr": return 0x219F; // UPWARDS TWO HEADED ARROW
                case "Uarrocir": return 0x2949; // UPWARDS TWO-HEADED ARROW FROM SMALL CIRCLE
                case "Ubrcy": return 0x40E; // CYRILLIC CAPITAL LETTER SHORT U
                case "Ubreve": return 0x16C; // LATIN CAPITAL LETTER U WITH BREVE
                case "Ucirc": return 0xDB; // LATIN CAPITAL LETTER U WITH CIRCUMFLEX
                case "Ucy": return 0x423; // CYRILLIC CAPITAL LETTER U
                case "Udblac": return 0x170; // LATIN CAPITAL LETTER U WITH DOUBLE ACUTE
                case "Udigr": return 0x3AB; // GREEK CAPITAL LETTER UPSILON WITH DIALYTIKA
                case "Ufr": return 0x1D518; // MATHEMATICAL FRAKTUR CAPITAL U
                case "Ugr": return 0x3A5; // GREEK CAPITAL LETTER UPSILON
                case "Ugrave": return 0xD9; // LATIN CAPITAL LETTER U WITH GRAVE
                case "Umacr": return 0x16A; // LATIN CAPITAL LETTER U WITH MACRON
                case "UnderBar": return 0x5F; // LOW LINE
                case "UnderBrace": return 0x23DF; // BOTTOM CURLY BRACKET
                case "UnderBracket": return 0x23B5; // BOTTOM SQUARE BRACKET
                case "UnderParenthesis": return 0x23DD; // BOTTOM PARENTHESIS
                case "Union": return 0x22C3; // N-ARY UNION
                case "UnionPlus": return 0x228E; // MULTISET UNION
                case "Uogon": return 0x172; // LATIN CAPITAL LETTER U WITH OGONEK
                case "Uopf": return 0x1D54C; // MATHEMATICAL DOUBLE-STRUCK CAPITAL U
                case "UpArrow": return 0x2191; // UPWARDS ARROW
                case "UpArrowBar": return 0x2912; // UPWARDS ARROW TO BAR
                case "UpArrowDownArrow": return 0x21C5; // UPWARDS ARROW LEFTWARDS OF DOWNWARDS ARROW
                case "UpDownArrow": return 0x2195; // UP DOWN ARROW
                case "UpEquilibrium": return 0x296E; // UPWARDS HARPOON WITH BARB LEFT BESIDE DOWNWARDS HARPOON WITH BARB RIGHT
                case "UpTee": return 0x22A5; // UP TACK
                case "UpTeeArrow": return 0x21A5; // UPWARDS ARROW FROM BAR
                case "Uparrow": return 0x21D1; // UPWARDS DOUBLE ARROW
                case "Updownarrow": return 0x21D5; // UP DOWN DOUBLE ARROW
                case "UpperLeftArrow": return 0x2196; // NORTH WEST ARROW
                case "UpperRightArrow": return 0x2197; // NORTH EAST ARROW
                case "Upsi": return 0x3D2; // GREEK UPSILON WITH HOOK SYMBOL
                case "Upsilon": return 0x3A5; // GREEK CAPITAL LETTER UPSILON
                case "Uring": return 0x16E; // LATIN CAPITAL LETTER U WITH RING ABOVE
                case "Uscr": return 0x1D4B0; // MATHEMATICAL SCRIPT CAPITAL U
                case "Utilde": return 0x168; // LATIN CAPITAL LETTER U WITH TILDE
                case "Uuml": return 0xDC; // LATIN CAPITAL LETTER U WITH DIAERESIS
            }

        case 'V':
            switch (name)
            {
                case "VDash": return 0x22AB; // DOUBLE VERTICAL BAR DOUBLE RIGHT TURNSTILE
                case "Vbar": return 0x2AEB; // DOUBLE UP TACK
                case "Vcy": return 0x412; // CYRILLIC CAPITAL LETTER VE
                case "Vdash": return 0x22A9; // FORCES
                case "Vdashl": return 0x2AE6; // LONG DASH FROM LEFT MEMBER OF DOUBLE VERTICAL
                case "Vee": return 0x22C1; // N-ARY LOGICAL OR
                case "Verbar": return 0x2016; // DOUBLE VERTICAL LINE
                case "Vert": return 0x2016; // DOUBLE VERTICAL LINE
                case "VerticalBar": return 0x2223; // DIVIDES
                case "VerticalLine": return 0x7C; // VERTICAL LINE
                case "VerticalSeparator": return 0x2758; // LIGHT VERTICAL BAR
                case "VerticalTilde": return 0x2240; // WREATH PRODUCT
                case "VeryThinSpace": return 0x200A; // HAIR SPACE
                case "Vfr": return 0x1D519; // MATHEMATICAL FRAKTUR CAPITAL V
                case "Vopf": return 0x1D54D; // MATHEMATICAL DOUBLE-STRUCK CAPITAL V
                case "Vscr": return 0x1D4B1; // MATHEMATICAL SCRIPT CAPITAL V
                case "Vvdash": return 0x22AA; // TRIPLE VERTICAL BAR RIGHT TURNSTILE
            }

        case 'W':
            switch (name)
            {
                case "Wcirc": return 0x174; // LATIN CAPITAL LETTER W WITH CIRCUMFLEX
                case "Wedge": return 0x22C0; // N-ARY LOGICAL AND
                case "Wfr": return 0x1D51A; // MATHEMATICAL FRAKTUR CAPITAL W
                case "Wopf": return 0x1D54E; // MATHEMATICAL DOUBLE-STRUCK CAPITAL W
                case "Wscr": return 0x1D4B2; // MATHEMATICAL SCRIPT CAPITAL W
            }

        case 'X':
            switch (name)
            {
                case "Xfr": return 0x1D51B; // MATHEMATICAL FRAKTUR CAPITAL X
                case "Xgr": return 0x39E; // GREEK CAPITAL LETTER XI
                case "Xi": return 0x39E; // GREEK CAPITAL LETTER XI
                case "Xopf": return 0x1D54F; // MATHEMATICAL DOUBLE-STRUCK CAPITAL X
                case "Xscr": return 0x1D4B3; // MATHEMATICAL SCRIPT CAPITAL X
            }

        case 'Y':
            switch (name)
            {
                case "YAcy": return 0x42F; // CYRILLIC CAPITAL LETTER YA
                case "YIcy": return 0x407; // CYRILLIC CAPITAL LETTER YI
                case "YUcy": return 0x42E; // CYRILLIC CAPITAL LETTER YU
                case "Yacute": return 0xDD; // LATIN CAPITAL LETTER Y WITH ACUTE
                case "Ycirc": return 0x176; // LATIN CAPITAL LETTER Y WITH CIRCUMFLEX
                case "Ycy": return 0x42B; // CYRILLIC CAPITAL LETTER YERU
                case "Yfr": return 0x1D51C; // MATHEMATICAL FRAKTUR CAPITAL Y
                case "Yopf": return 0x1D550; // MATHEMATICAL DOUBLE-STRUCK CAPITAL Y
                case "Yscr": return 0x1D4B4; // MATHEMATICAL SCRIPT CAPITAL Y
                case "Yuml": return 0x178; // LATIN CAPITAL LETTER Y WITH DIAERESIS
            }

        case 'Z':
            switch (name)
            {
                case "ZHcy": return 0x416; // CYRILLIC CAPITAL LETTER ZHE
                case "Zacute": return 0x179; // LATIN CAPITAL LETTER Z WITH ACUTE
                case "Zcaron": return 0x17D; // LATIN CAPITAL LETTER Z WITH CARON
                case "Zcy": return 0x417; // CYRILLIC CAPITAL LETTER ZE
                case "Zdot": return 0x17B; // LATIN CAPITAL LETTER Z WITH DOT ABOVE
                case "ZeroWidthSpace": return 0x200B; // ZERO WIDTH SPACE
                case "Zeta": return 0x396; // GREEK CAPITAL LETTER ZETA
                case "Zfr": return 0x2128; // BLACK-LETTER CAPITAL Z
                case "Zgr": return 0x396; // GREEK CAPITAL LETTER ZETA
                case "Zopf": return 0x2124; // DOUBLE-STRUCK CAPITAL Z
                case "Zscr": return 0x1D4B5; // MATHEMATICAL SCRIPT CAPITAL Z
            }

        case 'a':
            switch (name)
            {
                case "aacgr": return 0x3AC; // GREEK SMALL LETTER ALPHA WITH TONOS
                case "aacute": return 0xE1; // LATIN SMALL LETTER A WITH ACUTE
                case "abreve": return 0x103; // LATIN SMALL LETTER A WITH BREVE
                case "ac": return 0x223E; // INVERTED LAZY S
                case "acd": return 0x223F; // SINE WAVE
                case "acirc": return 0xE2; // LATIN SMALL LETTER A WITH CIRCUMFLEX
                case "actuary": return 0x20E7; // COMBINING ANNUITY SYMBOL
                case "acute": return 0xB4; // ACUTE ACCENT
                case "acy": return 0x430; // CYRILLIC SMALL LETTER A
                case "aelig": return 0xE6; // LATIN SMALL LETTER AE
                case "af": return 0x2061; // FUNCTION APPLICATION
                case "afr": return 0x1D51E; // MATHEMATICAL FRAKTUR SMALL A
                case "agr": return 0x3B1; // GREEK SMALL LETTER ALPHA
                case "agrave": return 0xE0; // LATIN SMALL LETTER A WITH GRAVE
                case "alefsym": return 0x2135; // ALEF SYMBOL
                case "aleph": return 0x2135; // ALEF SYMBOL
                case "alpha": return 0x3B1; // GREEK SMALL LETTER ALPHA
                case "amacr": return 0x101; // LATIN SMALL LETTER A WITH MACRON
                case "amalg": return 0x2A3F; // AMALGAMATION OR COPRODUCT
                case "amp": return 0x26; // AMPERSAND
                case "and": return 0x2227; // LOGICAL AND
                case "andand": return 0x2A55; // TWO INTERSECTING LOGICAL AND
                case "andd": return 0x2A5C; // LOGICAL AND WITH HORIZONTAL DASH
                case "andslope": return 0x2A58; // SLOPING LARGE AND
                case "andv": return 0x2A5A; // LOGICAL AND WITH MIDDLE STEM
                case "ang": return 0x2220; // ANGLE
                case "ang90": return 0x221F; // RIGHT ANGLE
                case "angdnl": return 0x29A2; // TURNED ANGLE
                case "angdnr": return 0x299F; // ACUTE ANGLE
                case "ange": return 0x29A4; // ANGLE WITH UNDERBAR
                case "angle": return 0x2220; // ANGLE
                case "angles": return 0x299E; // ANGLE WITH S INSIDE
                case "angmsd": return 0x2221; // MEASURED ANGLE
                case "angmsdaa": return 0x29A8; // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING UP AND RIGHT
                case "angmsdab": return 0x29A9; // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING UP AND LEFT
                case "angmsdac": return 0x29AA; // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING DOWN AND RIGHT
                case "angmsdad": return 0x29AB; // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING DOWN AND LEFT
                case "angmsdae": return 0x29AC; // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING RIGHT AND UP
                case "angmsdaf": return 0x29AD; // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING LEFT AND UP
                case "angmsdag": return 0x29AE; // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING RIGHT AND DOWN
                case "angmsdah": return 0x29AF; // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING LEFT AND DOWN
                case "angrt": return 0x221F; // RIGHT ANGLE
                case "angrtvb": return 0x22BE; // RIGHT ANGLE WITH ARC
                case "angrtvbd": return 0x299D; // MEASURED RIGHT ANGLE WITH DOT
                case "angsph": return 0x2222; // SPHERICAL ANGLE
                case "angst": return 0xC5; // LATIN CAPITAL LETTER A WITH RING ABOVE
                case "angupl": return 0x29A3; // REVERSED ANGLE
                case "angzarr": return 0x237C; // RIGHT ANGLE WITH DOWNWARDS ZIGZAG ARROW
                case "aogon": return 0x105; // LATIN SMALL LETTER A WITH OGONEK
                case "aopf": return 0x1D552; // MATHEMATICAL DOUBLE-STRUCK SMALL A
                case "ap": return 0x2248; // ALMOST EQUAL TO
                case "apE": return 0x2A70; // APPROXIMATELY EQUAL OR EQUAL TO
                case "apacir": return 0x2A6F; // ALMOST EQUAL TO WITH CIRCUMFLEX ACCENT
                case "ape": return 0x224A; // ALMOST EQUAL OR EQUAL TO
                case "apid": return 0x224B; // TRIPLE TILDE
                case "apos": return 0x27; // APOSTROPHE
                case "approx": return 0x2248; // ALMOST EQUAL TO
                case "approxeq": return 0x224A; // ALMOST EQUAL OR EQUAL TO
                case "aring": return 0xE5; // LATIN SMALL LETTER A WITH RING ABOVE
                case "arrllsr": return 0x2943; // LEFTWARDS ARROW ABOVE SHORT RIGHTWARDS ARROW
                case "arrlrsl": return 0x2942; // RIGHTWARDS ARROW ABOVE SHORT LEFTWARDS ARROW
                case "arrsrll": return 0x2944; // SHORT RIGHTWARDS ARROW ABOVE LEFTWARDS ARROW
                case "ascr": return 0x1D4B6; // MATHEMATICAL SCRIPT SMALL A
                case "ast": return 0x2A; // ASTERISK
                case "astb": return 0x29C6; // SQUARED ASTERISK
                case "asymp": return 0x2248; // ALMOST EQUAL TO
                case "asympeq": return 0x224D; // EQUIVALENT TO
                case "atilde": return 0xE3; // LATIN SMALL LETTER A WITH TILDE
                case "auml": return 0xE4; // LATIN SMALL LETTER A WITH DIAERESIS
                case "awconint": return 0x2233; // ANTICLOCKWISE CONTOUR INTEGRAL
                case "awint": return 0x2A11; // ANTICLOCKWISE INTEGRATION
            }

        case 'b':
            switch (name)
            {
                case "b.Delta": return 0x1D6AB; // MATHEMATICAL BOLD CAPITAL DELTA
                case "b.Gamma": return 0x1D6AA; // MATHEMATICAL BOLD CAPITAL GAMMA
                case "b.Gammad": return 0x1D7CA; // MATHEMATICAL BOLD CAPITAL DIGAMMA
                case "b.Lambda": return 0x1D6B2; // MATHEMATICAL BOLD CAPITAL LAMDA
                case "b.Omega": return 0x1D6C0; // MATHEMATICAL BOLD CAPITAL OMEGA
                case "b.Phi": return 0x1D6BD; // MATHEMATICAL BOLD CAPITAL PHI
                case "b.Pi": return 0x1D6B7; // MATHEMATICAL BOLD CAPITAL PI
                case "b.Psi": return 0x1D6BF; // MATHEMATICAL BOLD CAPITAL PSI
                case "b.Sigma": return 0x1D6BA; // MATHEMATICAL BOLD CAPITAL SIGMA
                case "b.Theta": return 0x1D6AF; // MATHEMATICAL BOLD CAPITAL THETA
                case "b.Upsi": return 0x1D6BC; // MATHEMATICAL BOLD CAPITAL UPSILON
                case "b.Xi": return 0x1D6B5; // MATHEMATICAL BOLD CAPITAL XI
                case "b.alpha": return 0x1D6C2; // MATHEMATICAL BOLD SMALL ALPHA
                case "b.beta": return 0x1D6C3; // MATHEMATICAL BOLD SMALL BETA
                case "b.chi": return 0x1D6D8; // MATHEMATICAL BOLD SMALL CHI
                case "b.delta": return 0x1D6C5; // MATHEMATICAL BOLD SMALL DELTA
                case "b.epsi": return 0x1D6C6; // MATHEMATICAL BOLD SMALL EPSILON
                case "b.epsiv": return 0x1D6DC; // MATHEMATICAL BOLD EPSILON SYMBOL
                case "b.eta": return 0x1D6C8; // MATHEMATICAL BOLD SMALL ETA
                case "b.gamma": return 0x1D6C4; // MATHEMATICAL BOLD SMALL GAMMA
                case "b.gammad": return 0x1D7CB; // MATHEMATICAL BOLD SMALL DIGAMMA
                case "b.iota": return 0x1D6CA; // MATHEMATICAL BOLD SMALL IOTA
                case "b.kappa": return 0x1D6CB; // MATHEMATICAL BOLD SMALL KAPPA
                case "b.kappav": return 0x1D6DE; // MATHEMATICAL BOLD KAPPA SYMBOL
                case "b.lambda": return 0x1D6CC; // MATHEMATICAL BOLD SMALL LAMDA
                case "b.mu": return 0x1D6CD; // MATHEMATICAL BOLD SMALL MU
                case "b.nu": return 0x1D6CE; // MATHEMATICAL BOLD SMALL NU
                case "b.omega": return 0x1D6DA; // MATHEMATICAL BOLD SMALL OMEGA
                case "b.phi": return 0x1D6D7; // MATHEMATICAL BOLD SMALL PHI
                case "b.phiv": return 0x1D6DF; // MATHEMATICAL BOLD PHI SYMBOL
                case "b.pi": return 0x1D6D1; // MATHEMATICAL BOLD SMALL PI
                case "b.piv": return 0x1D6E1; // MATHEMATICAL BOLD PI SYMBOL
                case "b.psi": return 0x1D6D9; // MATHEMATICAL BOLD SMALL PSI
                case "b.rho": return 0x1D6D2; // MATHEMATICAL BOLD SMALL RHO
                case "b.rhov": return 0x1D6E0; // MATHEMATICAL BOLD RHO SYMBOL
                case "b.sigma": return 0x1D6D4; // MATHEMATICAL BOLD SMALL SIGMA
                case "b.sigmav": return 0x1D6D3; // MATHEMATICAL BOLD SMALL FINAL SIGMA
                case "b.tau": return 0x1D6D5; // MATHEMATICAL BOLD SMALL TAU
                case "b.thetas": return 0x1D6C9; // MATHEMATICAL BOLD SMALL THETA
                case "b.thetav": return 0x1D6DD; // MATHEMATICAL BOLD THETA SYMBOL
                case "b.upsi": return 0x1D6D6; // MATHEMATICAL BOLD SMALL UPSILON
                case "b.xi": return 0x1D6CF; // MATHEMATICAL BOLD SMALL XI
                case "b.zeta": return 0x1D6C7; // MATHEMATICAL BOLD SMALL ZETA
                case "bNot": return 0x2AED; // REVERSED DOUBLE STROKE NOT SIGN
                case "backcong": return 0x224C; // ALL EQUAL TO
                case "backepsilon": return 0x3F6; // GREEK REVERSED LUNATE EPSILON SYMBOL
                case "backprime": return 0x2035; // REVERSED PRIME
                case "backsim": return 0x223D; // REVERSED TILDE
                case "backsimeq": return 0x22CD; // REVERSED TILDE EQUALS
                case "barV": return 0x2AEA; // DOUBLE DOWN TACK
                case "barvee": return 0x22BD; // NOR
                case "barwed": return 0x2305; // PROJECTIVE
                case "barwedge": return 0x2305; // PROJECTIVE
                case "bbrk": return 0x23B5; // BOTTOM SQUARE BRACKET
                case "bbrktbrk": return 0x23B6; // BOTTOM SQUARE BRACKET OVER TOP SQUARE BRACKET
                case "bcong": return 0x224C; // ALL EQUAL TO
                case "bcy": return 0x431; // CYRILLIC SMALL LETTER BE
                case "bdlhar": return 0x2961; // DOWNWARDS HARPOON WITH BARB LEFT FROM BAR
                case "bdquo": return 0x201E; // DOUBLE LOW-9 QUOTATION MARK
                case "bdrhar": return 0x295D; // DOWNWARDS HARPOON WITH BARB RIGHT FROM BAR
                case "becaus": return 0x2235; // BECAUSE
                case "because": return 0x2235; // BECAUSE
                case "bemptyv": return 0x29B0; // REVERSED EMPTY SET
                case "bepsi": return 0x3F6; // GREEK REVERSED LUNATE EPSILON SYMBOL
                case "bernou": return 0x212C; // SCRIPT CAPITAL B
                case "beta": return 0x3B2; // GREEK SMALL LETTER BETA
                case "beth": return 0x2136; // BET SYMBOL
                case "between": return 0x226C; // BETWEEN
                case "bfr": return 0x1D51F; // MATHEMATICAL FRAKTUR SMALL B
                case "bgr": return 0x3B2; // GREEK SMALL LETTER BETA
                case "bigcap": return 0x22C2; // N-ARY INTERSECTION
                case "bigcirc": return 0x25EF; // LARGE CIRCLE
                case "bigcup": return 0x22C3; // N-ARY UNION
                case "bigodot": return 0x2A00; // N-ARY CIRCLED DOT OPERATOR
                case "bigoplus": return 0x2A01; // N-ARY CIRCLED PLUS OPERATOR
                case "bigotimes": return 0x2A02; // N-ARY CIRCLED TIMES OPERATOR
                case "bigsqcup": return 0x2A06; // N-ARY SQUARE UNION OPERATOR
                case "bigstar": return 0x2605; // BLACK STAR
                case "bigtriangledown": return 0x25BD; // WHITE DOWN-POINTING TRIANGLE
                case "bigtriangleup": return 0x25B3; // WHITE UP-POINTING TRIANGLE
                case "biguplus": return 0x2A04; // N-ARY UNION OPERATOR WITH PLUS
                case "bigvee": return 0x22C1; // N-ARY LOGICAL OR
                case "bigwedge": return 0x22C0; // N-ARY LOGICAL AND
                case "bkarow": return 0x290D; // RIGHTWARDS DOUBLE DASH ARROW
                case "blacklozenge": return 0x29EB; // BLACK LOZENGE
                case "blacksquare": return 0x25AA; // BLACK SMALL SQUARE
                case "blacktriangle": return 0x25B4; // BLACK UP-POINTING SMALL TRIANGLE
                case "blacktriangledown": return 0x25BE; // BLACK DOWN-POINTING SMALL TRIANGLE
                case "blacktriangleleft": return 0x25C2; // BLACK LEFT-POINTING SMALL TRIANGLE
                case "blacktriangleright": return 0x25B8; // BLACK RIGHT-POINTING SMALL TRIANGLE
                case "blank": return 0x2422; // BLANK SYMBOL
                case "bldhar": return 0x295E; // LEFTWARDS HARPOON WITH BARB DOWN FROM BAR
                case "blk12": return 0x2592; // MEDIUM SHADE
                case "blk14": return 0x2591; // LIGHT SHADE
                case "blk34": return 0x2593; // DARK SHADE
                case "block": return 0x2588; // FULL BLOCK
                case "bluhar": return 0x295A; // LEFTWARDS HARPOON WITH BARB UP FROM BAR
                case "bnot": return 0x2310; // REVERSED NOT SIGN
                case "bopf": return 0x1D553; // MATHEMATICAL DOUBLE-STRUCK SMALL B
                case "bot": return 0x22A5; // UP TACK
                case "bottom": return 0x22A5; // UP TACK
                case "bowtie": return 0x22C8; // BOWTIE
                case "boxDL": return 0x2557; // BOX DRAWINGS DOUBLE DOWN AND LEFT
                case "boxDR": return 0x2554; // BOX DRAWINGS DOUBLE DOWN AND RIGHT
                case "boxDl": return 0x2556; // BOX DRAWINGS DOWN DOUBLE AND LEFT SINGLE
                case "boxDr": return 0x2553; // BOX DRAWINGS DOWN DOUBLE AND RIGHT SINGLE
                case "boxH": return 0x2550; // BOX DRAWINGS DOUBLE HORIZONTAL
                case "boxHD": return 0x2566; // BOX DRAWINGS DOUBLE DOWN AND HORIZONTAL
                case "boxHU": return 0x2569; // BOX DRAWINGS DOUBLE UP AND HORIZONTAL
                case "boxHd": return 0x2564; // BOX DRAWINGS DOWN SINGLE AND HORIZONTAL DOUBLE
                case "boxHu": return 0x2567; // BOX DRAWINGS UP SINGLE AND HORIZONTAL DOUBLE
                case "boxUL": return 0x255D; // BOX DRAWINGS DOUBLE UP AND LEFT
                case "boxUR": return 0x255A; // BOX DRAWINGS DOUBLE UP AND RIGHT
                case "boxUl": return 0x255C; // BOX DRAWINGS UP DOUBLE AND LEFT SINGLE
                case "boxUr": return 0x2559; // BOX DRAWINGS UP DOUBLE AND RIGHT SINGLE
                case "boxV": return 0x2551; // BOX DRAWINGS DOUBLE VERTICAL
                case "boxVH": return 0x256C; // BOX DRAWINGS DOUBLE VERTICAL AND HORIZONTAL
                case "boxVL": return 0x2563; // BOX DRAWINGS DOUBLE VERTICAL AND LEFT
                case "boxVR": return 0x2560; // BOX DRAWINGS DOUBLE VERTICAL AND RIGHT
                case "boxVh": return 0x256B; // BOX DRAWINGS VERTICAL DOUBLE AND HORIZONTAL SINGLE
                case "boxVl": return 0x2562; // BOX DRAWINGS VERTICAL DOUBLE AND LEFT SINGLE
                case "boxVr": return 0x255F; // BOX DRAWINGS VERTICAL DOUBLE AND RIGHT SINGLE
                case "boxbox": return 0x29C9; // TWO JOINED SQUARES
                case "boxdL": return 0x2555; // BOX DRAWINGS DOWN SINGLE AND LEFT DOUBLE
                case "boxdR": return 0x2552; // BOX DRAWINGS DOWN SINGLE AND RIGHT DOUBLE
                case "boxdl": return 0x2510; // BOX DRAWINGS LIGHT DOWN AND LEFT
                case "boxdr": return 0x250C; // BOX DRAWINGS LIGHT DOWN AND RIGHT
                case "boxh": return 0x2500; // BOX DRAWINGS LIGHT HORIZONTAL
                case "boxhD": return 0x2565; // BOX DRAWINGS DOWN DOUBLE AND HORIZONTAL SINGLE
                case "boxhU": return 0x2568; // BOX DRAWINGS UP DOUBLE AND HORIZONTAL SINGLE
                case "boxhd": return 0x252C; // BOX DRAWINGS LIGHT DOWN AND HORIZONTAL
                case "boxhu": return 0x2534; // BOX DRAWINGS LIGHT UP AND HORIZONTAL
                case "boxminus": return 0x229F; // SQUARED MINUS
                case "boxplus": return 0x229E; // SQUARED PLUS
                case "boxtimes": return 0x22A0; // SQUARED TIMES
                case "boxuL": return 0x255B; // BOX DRAWINGS UP SINGLE AND LEFT DOUBLE
                case "boxuR": return 0x2558; // BOX DRAWINGS UP SINGLE AND RIGHT DOUBLE
                case "boxul": return 0x2518; // BOX DRAWINGS LIGHT UP AND LEFT
                case "boxur": return 0x2514; // BOX DRAWINGS LIGHT UP AND RIGHT
                case "boxv": return 0x2502; // BOX DRAWINGS LIGHT VERTICAL
                case "boxvH": return 0x256A; // BOX DRAWINGS VERTICAL SINGLE AND HORIZONTAL DOUBLE
                case "boxvL": return 0x2561; // BOX DRAWINGS VERTICAL SINGLE AND LEFT DOUBLE
                case "boxvR": return 0x255E; // BOX DRAWINGS VERTICAL SINGLE AND RIGHT DOUBLE
                case "boxvh": return 0x253C; // BOX DRAWINGS LIGHT VERTICAL AND HORIZONTAL
                case "boxvl": return 0x2524; // BOX DRAWINGS LIGHT VERTICAL AND LEFT
                case "boxvr": return 0x251C; // BOX DRAWINGS LIGHT VERTICAL AND RIGHT
                case "bprime": return 0x2035; // REVERSED PRIME
                case "brdhar": return 0x295F; // RIGHTWARDS HARPOON WITH BARB DOWN FROM BAR
                case "breve": return 0x2D8; // BREVE
                case "bruhar": return 0x295B; // RIGHTWARDS HARPOON WITH BARB UP FROM BAR
                case "brvbar": return 0xA6; // BROKEN BAR
                case "bscr": return 0x1D4B7; // MATHEMATICAL SCRIPT SMALL B
                case "bsemi": return 0x204F; // REVERSED SEMICOLON
                case "bsim": return 0x223D; // REVERSED TILDE
                case "bsime": return 0x22CD; // REVERSED TILDE EQUALS
                case "bsol": return 0x5C; // REVERSE SOLIDUS
                case "bsolb": return 0x29C5; // SQUARED FALLING DIAGONAL SLASH
                case "bsolhsub": return 0x27C8; // REVERSE SOLIDUS PRECEDING SUBSET
                case "btimes": return 0x2A32; // SEMIDIRECT PRODUCT WITH BOTTOM CLOSED
                case "bulhar": return 0x2960; // UPWARDS HARPOON WITH BARB LEFT FROM BAR
                case "bull": return 0x2022; // BULLET
                case "bullet": return 0x2022; // BULLET
                case "bump": return 0x224E; // GEOMETRICALLY EQUIVALENT TO
                case "bumpE": return 0x2AAE; // EQUALS SIGN WITH BUMPY ABOVE
                case "bumpe": return 0x224F; // DIFFERENCE BETWEEN
                case "bumpeq": return 0x224F; // DIFFERENCE BETWEEN
                case "burhar": return 0x295C; // UPWARDS HARPOON WITH BARB RIGHT FROM BAR
            }

        case 'c':
            switch (name)
            {
                case "cacute": return 0x107; // LATIN SMALL LETTER C WITH ACUTE
                case "cap": return 0x2229; // INTERSECTION
                case "capand": return 0x2A44; // INTERSECTION WITH LOGICAL AND
                case "capbrcup": return 0x2A49; // INTERSECTION ABOVE BAR ABOVE UNION
                case "capcap": return 0x2A4B; // INTERSECTION BESIDE AND JOINED WITH INTERSECTION
                case "capcup": return 0x2A47; // INTERSECTION ABOVE UNION
                case "capdot": return 0x2A40; // INTERSECTION WITH DOT
                case "capint": return 0x2A19; // INTEGRAL WITH INTERSECTION
                case "caret": return 0x2041; // CARET INSERTION POINT
                case "caron": return 0x2C7; // CARON
                case "ccaps": return 0x2A4D; // CLOSED INTERSECTION WITH SERIFS
                case "ccaron": return 0x10D; // LATIN SMALL LETTER C WITH CARON
                case "ccedil": return 0xE7; // LATIN SMALL LETTER C WITH CEDILLA
                case "ccirc": return 0x109; // LATIN SMALL LETTER C WITH CIRCUMFLEX
                case "ccups": return 0x2A4C; // CLOSED UNION WITH SERIFS
                case "ccupssm": return 0x2A50; // CLOSED UNION WITH SERIFS AND SMASH PRODUCT
                case "cdot": return 0x10B; // LATIN SMALL LETTER C WITH DOT ABOVE
                case "cedil": return 0xB8; // CEDILLA
                case "cemptyv": return 0x29B2; // EMPTY SET WITH SMALL CIRCLE ABOVE
                case "cent": return 0xA2; // CENT SIGN
                case "centerdot": return 0xB7; // MIDDLE DOT
                case "cfr": return 0x1D520; // MATHEMATICAL FRAKTUR SMALL C
                case "chcy": return 0x447; // CYRILLIC SMALL LETTER CHE
                case "check": return 0x2713; // CHECK MARK
                case "checkmark": return 0x2713; // CHECK MARK
                case "chi": return 0x3C7; // GREEK SMALL LETTER CHI
                case "cir": return 0x25CB; // WHITE CIRCLE
                case "cirE": return 0x29C3; // CIRCLE WITH TWO HORIZONTAL STROKES TO THE RIGHT
                case "cirb": return 0x29C7; // SQUARED SMALL CIRCLE
                case "circ": return 0x2C6; // MODIFIER LETTER CIRCUMFLEX ACCENT
                case "circeq": return 0x2257; // RING EQUAL TO
                case "circlearrowleft": return 0x21BA; // ANTICLOCKWISE OPEN CIRCLE ARROW
                case "circlearrowright": return 0x21BB; // CLOCKWISE OPEN CIRCLE ARROW
                case "circledR": return 0xAE; // REGISTERED SIGN
                case "circledS": return 0x24C8; // CIRCLED LATIN CAPITAL LETTER S
                case "circledast": return 0x229B; // CIRCLED ASTERISK OPERATOR
                case "circledcirc": return 0x229A; // CIRCLED RING OPERATOR
                case "circleddash": return 0x229D; // CIRCLED DASH
                case "cirdarr": return 0x29EC; // WHITE CIRCLE WITH DOWN ARROW
                case "cire": return 0x2257; // RING EQUAL TO
                case "cirerr": return 0x29F2; // ERROR-BARRED WHITE CIRCLE
                case "cirfdarr": return 0x29ED; // BLACK CIRCLE WITH DOWN ARROW
                case "cirferr": return 0x29F3; // ERROR-BARRED BLACK CIRCLE
                case "cirfnint": return 0x2A10; // CIRCULATION FUNCTION
                case "cirmid": return 0x2AEF; // VERTICAL LINE WITH CIRCLE ABOVE
                case "cirscir": return 0x29C2; // CIRCLE WITH SMALL CIRCLE TO THE RIGHT
                case "closur": return 0x2050; // CLOSE UP
                case "clubs": return 0x2663; // BLACK CLUB SUIT
                case "clubsuit": return 0x2663; // BLACK CLUB SUIT
                case "colon": return 0x3A; // COLON
                case "colone": return 0x2254; // COLON EQUALS
                case "coloneq": return 0x2254; // COLON EQUALS
                case "comma": return 0x2C; // COMMA
                case "commat": return 0x40; // COMMERCIAL AT
                case "comp": return 0x2201; // COMPLEMENT
                case "compfn": return 0x2218; // RING OPERATOR
                case "complement": return 0x2201; // COMPLEMENT
                case "complexes": return 0x2102; // DOUBLE-STRUCK CAPITAL C
                case "cong": return 0x2245; // APPROXIMATELY EQUAL TO
                case "congdot": return 0x2A6D; // CONGRUENT WITH DOT ABOVE
                case "conint": return 0x222E; // CONTOUR INTEGRAL
                case "copf": return 0x1D554; // MATHEMATICAL DOUBLE-STRUCK SMALL C
                case "coprod": return 0x2210; // N-ARY COPRODUCT
                case "copy": return 0xA9; // COPYRIGHT SIGN
                case "copysr": return 0x2117; // SOUND RECORDING COPYRIGHT
                case "crarr": return 0x21B5; // DOWNWARDS ARROW WITH CORNER LEFTWARDS
                case "cross": return 0x2717; // BALLOT X
                case "cscr": return 0x1D4B8; // MATHEMATICAL SCRIPT SMALL C
                case "csub": return 0x2ACF; // CLOSED SUBSET
                case "csube": return 0x2AD1; // CLOSED SUBSET OR EQUAL TO
                case "csup": return 0x2AD0; // CLOSED SUPERSET
                case "csupe": return 0x2AD2; // CLOSED SUPERSET OR EQUAL TO
                case "ctdot": return 0x22EF; // MIDLINE HORIZONTAL ELLIPSIS
                case "cudarrl": return 0x2938; // RIGHT-SIDE ARC CLOCKWISE ARROW
                case "cudarrr": return 0x2935; // ARROW POINTING RIGHTWARDS THEN CURVING DOWNWARDS
                case "cuepr": return 0x22DE; // EQUAL TO OR PRECEDES
                case "cuesc": return 0x22DF; // EQUAL TO OR SUCCEEDS
                case "cularr": return 0x21B6; // ANTICLOCKWISE TOP SEMICIRCLE ARROW
                case "cularrp": return 0x293D; // TOP ARC ANTICLOCKWISE ARROW WITH PLUS
                case "cup": return 0x222A; // UNION
                case "cupbrcap": return 0x2A48; // UNION ABOVE BAR ABOVE INTERSECTION
                case "cupcap": return 0x2A46; // UNION ABOVE INTERSECTION
                case "cupcup": return 0x2A4A; // UNION BESIDE AND JOINED WITH UNION
                case "cupdot": return 0x228D; // MULTISET MULTIPLICATION
                case "cupint": return 0x2A1A; // INTEGRAL WITH UNION
                case "cupor": return 0x2A45; // UNION WITH LOGICAL OR
                case "cupre": return 0x227C; // PRECEDES OR EQUAL TO
                case "curarr": return 0x21B7; // CLOCKWISE TOP SEMICIRCLE ARROW
                case "curarrm": return 0x293C; // TOP ARC CLOCKWISE ARROW WITH MINUS
                case "curlyeqprec": return 0x22DE; // EQUAL TO OR PRECEDES
                case "curlyeqsucc": return 0x22DF; // EQUAL TO OR SUCCEEDS
                case "curlyvee": return 0x22CE; // CURLY LOGICAL OR
                case "curlywedge": return 0x22CF; // CURLY LOGICAL AND
                case "curren": return 0xA4; // CURRENCY SIGN
                case "curvearrowleft": return 0x21B6; // ANTICLOCKWISE TOP SEMICIRCLE ARROW
                case "curvearrowright": return 0x21B7; // CLOCKWISE TOP SEMICIRCLE ARROW
                case "cuvee": return 0x22CE; // CURLY LOGICAL OR
                case "cuwed": return 0x22CF; // CURLY LOGICAL AND
                case "cwconint": return 0x2232; // CLOCKWISE CONTOUR INTEGRAL
                case "cwint": return 0x2231; // CLOCKWISE INTEGRAL
                case "cylcty": return 0x232D; // CYLINDRICITY
            }

        case 'd':
            switch (name)
            {
                case "dAarr": return 0x290B; // DOWNWARDS TRIPLE ARROW
                case "dArr": return 0x21D3; // DOWNWARDS DOUBLE ARROW
                case "dHar": return 0x2965; // DOWNWARDS HARPOON WITH BARB LEFT BESIDE DOWNWARDS HARPOON WITH BARB RIGHT
                case "dagger": return 0x2020; // DAGGER
                case "dalembrt": return 0x29E0; // SQUARE WITH CONTOURED OUTLINE
                case "daleth": return 0x2138; // DALET SYMBOL
                case "darr": return 0x2193; // DOWNWARDS ARROW
                case "darr2": return 0x21CA; // DOWNWARDS PAIRED ARROWS
                case "darrb": return 0x2913; // DOWNWARDS ARROW TO BAR
                case "darrln": return 0x2908; // DOWNWARDS ARROW WITH HORIZONTAL STROKE
                case "dash": return 0x2010; // HYPHEN
                case "dashV": return 0x2AE3; // DOUBLE VERTICAL BAR LEFT TURNSTILE
                case "dashv": return 0x22A3; // LEFT TACK
                case "dbkarow": return 0x290F; // RIGHTWARDS TRIPLE DASH ARROW
                case "dblac": return 0x2DD; // DOUBLE ACUTE ACCENT
                case "dcaron": return 0x10F; // LATIN SMALL LETTER D WITH CARON
                case "dcy": return 0x434; // CYRILLIC SMALL LETTER DE
                case "dd": return 0x2146; // DOUBLE-STRUCK ITALIC SMALL D
                case "ddagger": return 0x2021; // DOUBLE DAGGER
                case "ddarr": return 0x21CA; // DOWNWARDS PAIRED ARROWS
                case "ddotseq": return 0x2A77; // EQUALS SIGN WITH TWO DOTS ABOVE AND TWO DOTS BELOW
                case "deg": return 0xB0; // DEGREE SIGN
                case "delta": return 0x3B4; // GREEK SMALL LETTER DELTA
                case "demptyv": return 0x29B1; // EMPTY SET WITH OVERBAR
                case "dfisht": return 0x297F; // DOWN FISH TAIL
                case "dfr": return 0x1D521; // MATHEMATICAL FRAKTUR SMALL D
                case "dgr": return 0x3B4; // GREEK SMALL LETTER DELTA
                case "dharl": return 0x21C3; // DOWNWARDS HARPOON WITH BARB LEFTWARDS
                case "dharr": return 0x21C2; // DOWNWARDS HARPOON WITH BARB RIGHTWARDS
                case "diam": return 0x22C4; // DIAMOND OPERATOR
                case "diamdarr": return 0x29EA; // BLACK DIAMOND WITH DOWN ARROW
                case "diamerr": return 0x29F0; // ERROR-BARRED WHITE DIAMOND
                case "diamerrf": return 0x29F1; // ERROR-BARRED BLACK DIAMOND
                case "diamond": return 0x22C4; // DIAMOND OPERATOR
                case "diamondsuit": return 0x2666; // BLACK DIAMOND SUIT
                case "diams": return 0x2666; // BLACK DIAMOND SUIT
                case "die": return 0xA8; // DIAERESIS
                case "digamma": return 0x3DD; // GREEK SMALL LETTER DIGAMMA
                case "disin": return 0x22F2; // ELEMENT OF WITH LONG HORIZONTAL STROKE
                case "div": return 0xF7; // DIVISION SIGN
                case "divide": return 0xF7; // DIVISION SIGN
                case "divideontimes": return 0x22C7; // DIVISION TIMES
                case "divonx": return 0x22C7; // DIVISION TIMES
                case "djcy": return 0x452; // CYRILLIC SMALL LETTER DJE
                case "dlarr": return 0x2199; // SOUTH WEST ARROW
                case "dlcorn": return 0x231E; // BOTTOM LEFT CORNER
                case "dlcrop": return 0x230D; // BOTTOM LEFT CROP
                case "dlharb": return 0x2959; // DOWNWARDS HARPOON WITH BARB LEFT TO BAR
                case "dollar": return 0x24; // DOLLAR SIGN
                case "dopf": return 0x1D555; // MATHEMATICAL DOUBLE-STRUCK SMALL D
                case "dot": return 0x2D9; // DOT ABOVE
                case "doteq": return 0x2250; // APPROACHES THE LIMIT
                case "doteqdot": return 0x2251; // GEOMETRICALLY EQUAL TO
                case "dotminus": return 0x2238; // DOT MINUS
                case "dotplus": return 0x2214; // DOT PLUS
                case "dotsquare": return 0x22A1; // SQUARED DOT OPERATOR
                case "doublebarwedge": return 0x2306; // PERSPECTIVE
                case "downarrow": return 0x2193; // DOWNWARDS ARROW
                case "downdownarrows": return 0x21CA; // DOWNWARDS PAIRED ARROWS
                case "downharpoonleft": return 0x21C3; // DOWNWARDS HARPOON WITH BARB LEFTWARDS
                case "downharpoonright": return 0x21C2; // DOWNWARDS HARPOON WITH BARB RIGHTWARDS
                case "drarr": return 0x2198; // SOUTH EAST ARROW
                case "drbkarow": return 0x2910; // RIGHTWARDS TWO-HEADED TRIPLE DASH ARROW
                case "drcorn": return 0x231F; // BOTTOM RIGHT CORNER
                case "drcrop": return 0x230C; // BOTTOM RIGHT CROP
                case "drharb": return 0x2955; // DOWNWARDS HARPOON WITH BARB RIGHT TO BAR
                case "dscr": return 0x1D4B9; // MATHEMATICAL SCRIPT SMALL D
                case "dscy": return 0x455; // CYRILLIC SMALL LETTER DZE
                case "dsol": return 0x29F6; // SOLIDUS WITH OVERBAR
                case "dstrok": return 0x111; // LATIN SMALL LETTER D WITH STROKE
                case "dtdot": return 0x22F1; // DOWN RIGHT DIAGONAL ELLIPSIS
                case "dtri": return 0x25BF; // WHITE DOWN-POINTING SMALL TRIANGLE
                case "dtrif": return 0x25BE; // BLACK DOWN-POINTING SMALL TRIANGLE
                case "dtrilf": return 0x29E8; // DOWN-POINTING TRIANGLE WITH LEFT HALF BLACK
                case "dtrirf": return 0x29E9; // DOWN-POINTING TRIANGLE WITH RIGHT HALF BLACK
                case "duarr": return 0x21F5; // DOWNWARDS ARROW LEFTWARDS OF UPWARDS ARROW
                case "duhar": return 0x296F; // DOWNWARDS HARPOON WITH BARB LEFT BESIDE UPWARDS HARPOON WITH BARB RIGHT
                case "dumap": return 0x29DF; // DOUBLE-ENDED MULTIMAP
                case "dwangle": return 0x29A6; // OBLIQUE ANGLE OPENING UP
                case "dzcy": return 0x45F; // CYRILLIC SMALL LETTER DZHE
                case "dzigrarr": return 0x27FF; // LONG RIGHTWARDS SQUIGGLE ARROW
            }

        case 'e':
            switch (name)
            {
                case "eDDot": return 0x2A77; // EQUALS SIGN WITH TWO DOTS ABOVE AND TWO DOTS BELOW
                case "eDot": return 0x2251; // GEOMETRICALLY EQUAL TO
                case "eacgr": return 0x3AD; // GREEK SMALL LETTER EPSILON WITH TONOS
                case "eacute": return 0xE9; // LATIN SMALL LETTER E WITH ACUTE
                case "easter": return 0x2A6E; // EQUALS WITH ASTERISK
                case "ecaron": return 0x11B; // LATIN SMALL LETTER E WITH CARON
                case "ecir": return 0x2256; // RING IN EQUAL TO
                case "ecirc": return 0xEA; // LATIN SMALL LETTER E WITH CIRCUMFLEX
                case "ecolon": return 0x2255; // EQUALS COLON
                case "ecy": return 0x44D; // CYRILLIC SMALL LETTER E
                case "edot": return 0x117; // LATIN SMALL LETTER E WITH DOT ABOVE
                case "ee": return 0x2147; // DOUBLE-STRUCK ITALIC SMALL E
                case "eeacgr": return 0x3AE; // GREEK SMALL LETTER ETA WITH TONOS
                case "eegr": return 0x3B7; // GREEK SMALL LETTER ETA
                case "efDot": return 0x2252; // APPROXIMATELY EQUAL TO OR THE IMAGE OF
                case "efr": return 0x1D522; // MATHEMATICAL FRAKTUR SMALL E
                case "eg": return 0x2A9A; // DOUBLE-LINE EQUAL TO OR GREATER-THAN
                case "egr": return 0x3B5; // GREEK SMALL LETTER EPSILON
                case "egrave": return 0xE8; // LATIN SMALL LETTER E WITH GRAVE
                case "egs": return 0x2A96; // SLANTED EQUAL TO OR GREATER-THAN
                case "egsdot": return 0x2A98; // SLANTED EQUAL TO OR GREATER-THAN WITH DOT INSIDE
                case "el": return 0x2A99; // DOUBLE-LINE EQUAL TO OR LESS-THAN
                case "elinters": return 0x23E7; // ELECTRICAL INTERSECTION
                case "ell": return 0x2113; // SCRIPT SMALL L
                case "els": return 0x2A95; // SLANTED EQUAL TO OR LESS-THAN
                case "elsdot": return 0x2A97; // SLANTED EQUAL TO OR LESS-THAN WITH DOT INSIDE
                case "emacr": return 0x113; // LATIN SMALL LETTER E WITH MACRON
                case "empty": return 0x2205; // EMPTY SET
                case "emptyset": return 0x2205; // EMPTY SET
                case "emptyv": return 0x2205; // EMPTY SET
                case "emsp": return 0x2003; // EM SPACE
                case "emsp13": return 0x2004; // THREE-PER-EM SPACE
                case "emsp14": return 0x2005; // FOUR-PER-EM SPACE
                case "eng": return 0x14B; // LATIN SMALL LETTER ENG
                case "ensp": return 0x2002; // EN SPACE
                case "eogon": return 0x119; // LATIN SMALL LETTER E WITH OGONEK
                case "eopf": return 0x1D556; // MATHEMATICAL DOUBLE-STRUCK SMALL E
                case "epar": return 0x22D5; // EQUAL AND PARALLEL TO
                case "eparsl": return 0x29E3; // EQUALS SIGN AND SLANTED PARALLEL
                case "eplus": return 0x2A71; // EQUALS SIGN ABOVE PLUS SIGN
                case "epsi": return 0x3B5; // GREEK SMALL LETTER EPSILON
                case "epsilon": return 0x3B5; // GREEK SMALL LETTER EPSILON
                case "epsis": return 0x3F5; // GREEK LUNATE EPSILON SYMBOL
                case "epsiv": return 0x3F5; // GREEK LUNATE EPSILON SYMBOL
                case "eqcirc": return 0x2256; // RING IN EQUAL TO
                case "eqcolon": return 0x2255; // EQUALS COLON
                case "eqeq": return 0x2A75; // TWO CONSECUTIVE EQUALS SIGNS
                case "eqsim": return 0x2242; // MINUS TILDE
                case "eqslantgtr": return 0x2A96; // SLANTED EQUAL TO OR GREATER-THAN
                case "eqslantless": return 0x2A95; // SLANTED EQUAL TO OR LESS-THAN
                case "equals": return 0x3D; // EQUALS SIGN
                case "equest": return 0x225F; // QUESTIONED EQUAL TO
                case "equiv": return 0x2261; // IDENTICAL TO
                case "equivDD": return 0x2A78; // EQUIVALENT WITH FOUR DOTS ABOVE
                case "eqvparsl": return 0x29E5; // IDENTICAL TO AND SLANTED PARALLEL
                case "erDot": return 0x2253; // IMAGE OF OR APPROXIMATELY EQUAL TO
                case "erarr": return 0x2971; // EQUALS SIGN ABOVE RIGHTWARDS ARROW
                case "escr": return 0x212F; // SCRIPT SMALL E
                case "esdot": return 0x2250; // APPROACHES THE LIMIT
                case "esim": return 0x2242; // MINUS TILDE
                case "eta": return 0x3B7; // GREEK SMALL LETTER ETA
                case "eth": return 0xF0; // LATIN SMALL LETTER ETH
                case "euml": return 0xEB; // LATIN SMALL LETTER E WITH DIAERESIS
                case "euro": return 0x20AC; // EURO SIGN
                case "excl": return 0x21; // EXCLAMATION MARK
                case "exist": return 0x2203; // THERE EXISTS
                case "expectation": return 0x2130; // SCRIPT CAPITAL E
                case "exponentiale": return 0x2147; // DOUBLE-STRUCK ITALIC SMALL E
            }

        case 'f':
            switch (name)
            {
                case "fallingdotseq": return 0x2252; // APPROXIMATELY EQUAL TO OR THE IMAGE OF
                case "fbowtie": return 0x29D3; // BLACK BOWTIE
                case "fcy": return 0x444; // CYRILLIC SMALL LETTER EF
                case "fdiag": return 0x2572; // BOX DRAWINGS LIGHT DIAGONAL UPPER LEFT TO LOWER RIGHT
                case "fdiordi": return 0x292C; // FALLING DIAGONAL CROSSING RISING DIAGONAL
                case "fdonearr": return 0x292F; // FALLING DIAGONAL CROSSING NORTH EAST ARROW
                case "female": return 0x2640; // FEMALE SIGN
                case "ffilig": return 0xFB03; // LATIN SMALL LIGATURE FFI
                case "fflig": return 0xFB00; // LATIN SMALL LIGATURE FF
                case "ffllig": return 0xFB04; // LATIN SMALL LIGATURE FFL
                case "ffr": return 0x1D523; // MATHEMATICAL FRAKTUR SMALL F
                case "fhrglass": return 0x29D7; // BLACK HOURGLASS
                case "filig": return 0xFB01; // LATIN SMALL LIGATURE FI
                case "flat": return 0x266D; // MUSIC FLAT SIGN
                case "fllig": return 0xFB02; // LATIN SMALL LIGATURE FL
                case "fltns": return 0x25B1; // WHITE PARALLELOGRAM
                case "fnof": return 0x192; // LATIN SMALL LETTER F WITH HOOK
                case "fopf": return 0x1D557; // MATHEMATICAL DOUBLE-STRUCK SMALL F
                case "forall": return 0x2200; // FOR ALL
                case "fork": return 0x22D4; // PITCHFORK
                case "forkv": return 0x2AD9; // ELEMENT OF OPENING DOWNWARDS
                case "fpartint": return 0x2A0D; // FINITE PART INTEGRAL
                case "frac12": return 0xBD; // VULGAR FRACTION ONE HALF
                case "frac13": return 0x2153; // VULGAR FRACTION ONE THIRD
                case "frac14": return 0xBC; // VULGAR FRACTION ONE QUARTER
                case "frac15": return 0x2155; // VULGAR FRACTION ONE FIFTH
                case "frac16": return 0x2159; // VULGAR FRACTION ONE SIXTH
                case "frac18": return 0x215B; // VULGAR FRACTION ONE EIGHTH
                case "frac23": return 0x2154; // VULGAR FRACTION TWO THIRDS
                case "frac25": return 0x2156; // VULGAR FRACTION TWO FIFTHS
                case "frac34": return 0xBE; // VULGAR FRACTION THREE QUARTERS
                case "frac35": return 0x2157; // VULGAR FRACTION THREE FIFTHS
                case "frac38": return 0x215C; // VULGAR FRACTION THREE EIGHTHS
                case "frac45": return 0x2158; // VULGAR FRACTION FOUR FIFTHS
                case "frac56": return 0x215A; // VULGAR FRACTION FIVE SIXTHS
                case "frac58": return 0x215D; // VULGAR FRACTION FIVE EIGHTHS
                case "frac78": return 0x215E; // VULGAR FRACTION SEVEN EIGHTHS
                case "frasl": return 0x2044; // FRACTION SLASH
                case "frown": return 0x2322; // FROWN
                case "fscr": return 0x1D4BB; // MATHEMATICAL SCRIPT SMALL F
            }

        case 'g':
            switch (name)
            {
                case "gE": return 0x2267; // GREATER-THAN OVER EQUAL TO
                case "gEl": return 0x2A8C; // GREATER-THAN ABOVE DOUBLE-LINE EQUAL ABOVE LESS-THAN
                case "gacute": return 0x1F5; // LATIN SMALL LETTER G WITH ACUTE
                case "gamma": return 0x3B3; // GREEK SMALL LETTER GAMMA
                case "gammad": return 0x3DD; // GREEK SMALL LETTER DIGAMMA
                case "gap": return 0x2A86; // GREATER-THAN OR APPROXIMATE
                case "gbreve": return 0x11F; // LATIN SMALL LETTER G WITH BREVE
                case "gcedil": return 0x123; // LATIN SMALL LETTER G WITH CEDILLA
                case "gcirc": return 0x11D; // LATIN SMALL LETTER G WITH CIRCUMFLEX
                case "gcy": return 0x433; // CYRILLIC SMALL LETTER GHE
                case "gdot": return 0x121; // LATIN SMALL LETTER G WITH DOT ABOVE
                case "ge": return 0x2265; // GREATER-THAN OR EQUAL TO
                case "gel": return 0x22DB; // GREATER-THAN EQUAL TO OR LESS-THAN
                case "geq": return 0x2265; // GREATER-THAN OR EQUAL TO
                case "geqq": return 0x2267; // GREATER-THAN OVER EQUAL TO
                case "geqslant": return 0x2A7E; // GREATER-THAN OR SLANTED EQUAL TO
                case "ges": return 0x2A7E; // GREATER-THAN OR SLANTED EQUAL TO
                case "gescc": return 0x2AA9; // GREATER-THAN CLOSED BY CURVE ABOVE SLANTED EQUAL
                case "gesdot": return 0x2A80; // GREATER-THAN OR SLANTED EQUAL TO WITH DOT INSIDE
                case "gesdoto": return 0x2A82; // GREATER-THAN OR SLANTED EQUAL TO WITH DOT ABOVE
                case "gesdotol": return 0x2A84; // GREATER-THAN OR SLANTED EQUAL TO WITH DOT ABOVE LEFT
                case "gesles": return 0x2A94; // GREATER-THAN ABOVE SLANTED EQUAL ABOVE LESS-THAN ABOVE SLANTED EQUAL
                case "gfr": return 0x1D524; // MATHEMATICAL FRAKTUR SMALL G
                case "gg": return 0x226B; // MUCH GREATER-THAN
                case "ggg": return 0x22D9; // VERY MUCH GREATER-THAN
                case "ggr": return 0x3B3; // GREEK SMALL LETTER GAMMA
                case "gimel": return 0x2137; // GIMEL SYMBOL
                case "gjcy": return 0x453; // CYRILLIC SMALL LETTER GJE
                case "gl": return 0x2277; // GREATER-THAN OR LESS-THAN
                case "glE": return 0x2A92; // GREATER-THAN ABOVE LESS-THAN ABOVE DOUBLE-LINE EQUAL
                case "gla": return 0x2AA5; // GREATER-THAN BESIDE LESS-THAN
                case "glj": return 0x2AA4; // GREATER-THAN OVERLAPPING LESS-THAN
                case "gnE": return 0x2269; // GREATER-THAN BUT NOT EQUAL TO
                case "gnap": return 0x2A8A; // GREATER-THAN AND NOT APPROXIMATE
                case "gnapprox": return 0x2A8A; // GREATER-THAN AND NOT APPROXIMATE
                case "gne": return 0x2A88; // GREATER-THAN AND SINGLE-LINE NOT EQUAL TO
                case "gneq": return 0x2A88; // GREATER-THAN AND SINGLE-LINE NOT EQUAL TO
                case "gneqq": return 0x2269; // GREATER-THAN BUT NOT EQUAL TO
                case "gnsim": return 0x22E7; // GREATER-THAN BUT NOT EQUIVALENT TO
                case "gopf": return 0x1D558; // MATHEMATICAL DOUBLE-STRUCK SMALL G
                case "grave": return 0x60; // GRAVE ACCENT
                case "gscr": return 0x210A; // SCRIPT SMALL G
                case "gsdot": return 0x22D7; // GREATER-THAN WITH DOT
                case "gsim": return 0x2273; // GREATER-THAN OR EQUIVALENT TO
                case "gsime": return 0x2A8E; // GREATER-THAN ABOVE SIMILAR OR EQUAL
                case "gsiml": return 0x2A90; // GREATER-THAN ABOVE SIMILAR ABOVE LESS-THAN
                case "gt": return 0x3E; // GREATER-THAN SIGN
                case "gtcc": return 0x2AA7; // GREATER-THAN CLOSED BY CURVE
                case "gtcir": return 0x2A7A; // GREATER-THAN WITH CIRCLE INSIDE
                case "gtdot": return 0x22D7; // GREATER-THAN WITH DOT
                case "gtlPar": return 0x2995; // DOUBLE LEFT ARC GREATER-THAN BRACKET
                case "gtquest": return 0x2A7C; // GREATER-THAN WITH QUESTION MARK ABOVE
                case "gtrapprox": return 0x2A86; // GREATER-THAN OR APPROXIMATE
                case "gtrarr": return 0x2978; // GREATER-THAN ABOVE RIGHTWARDS ARROW
                case "gtrdot": return 0x22D7; // GREATER-THAN WITH DOT
                case "gtreqless": return 0x22DB; // GREATER-THAN EQUAL TO OR LESS-THAN
                case "gtreqqless": return 0x2A8C; // GREATER-THAN ABOVE DOUBLE-LINE EQUAL ABOVE LESS-THAN
                case "gtrless": return 0x2277; // GREATER-THAN OR LESS-THAN
                case "gtrpar": return 0x29A0; // SPHERICAL ANGLE OPENING LEFT
                case "gtrsim": return 0x2273; // GREATER-THAN OR EQUIVALENT TO
            }

        case 'h':
            switch (name)
            {
                case "hArr": return 0x21D4; // LEFT RIGHT DOUBLE ARROW
                case "hairsp": return 0x200A; // HAIR SPACE
                case "half": return 0xBD; // VULGAR FRACTION ONE HALF
                case "hamilt": return 0x210B; // SCRIPT CAPITAL H
                case "hardcy": return 0x44A; // CYRILLIC SMALL LETTER HARD SIGN
                case "harr": return 0x2194; // LEFT RIGHT ARROW
                case "harrcir": return 0x2948; // LEFT RIGHT ARROW THROUGH SMALL CIRCLE
                case "harrw": return 0x21AD; // LEFT RIGHT WAVE ARROW
                case "hbar": return 0x210F; // PLANCK CONSTANT OVER TWO PI
                case "hcirc": return 0x125; // LATIN SMALL LETTER H WITH CIRCUMFLEX
                case "hearts": return 0x2665; // BLACK HEART SUIT
                case "heartsuit": return 0x2665; // BLACK HEART SUIT
                case "hellip": return 0x2026; // HORIZONTAL ELLIPSIS
                case "hercon": return 0x22B9; // HERMITIAN CONJUGATE MATRIX
                case "hfr": return 0x1D525; // MATHEMATICAL FRAKTUR SMALL H
                case "hksearow": return 0x2925; // SOUTH EAST ARROW WITH HOOK
                case "hkswarow": return 0x2926; // SOUTH WEST ARROW WITH HOOK
                case "hoarr": return 0x21FF; // LEFT RIGHT OPEN-HEADED ARROW
                case "homtht": return 0x223B; // HOMOTHETIC
                case "hookleftarrow": return 0x21A9; // LEFTWARDS ARROW WITH HOOK
                case "hookrightarrow": return 0x21AA; // RIGHTWARDS ARROW WITH HOOK
                case "hopf": return 0x1D559; // MATHEMATICAL DOUBLE-STRUCK SMALL H
                case "horbar": return 0x2015; // HORIZONTAL BAR
                case "hrglass": return 0x29D6; // WHITE HOURGLASS
                case "hscr": return 0x1D4BD; // MATHEMATICAL SCRIPT SMALL H
                case "hslash": return 0x210F; // PLANCK CONSTANT OVER TWO PI
                case "hstrok": return 0x127; // LATIN SMALL LETTER H WITH STROKE
                case "htimes": return 0x2A2F; // VECTOR OR CROSS PRODUCT
                case "hybull": return 0x2043; // HYPHEN BULLET
                case "hyphen": return 0x2010; // HYPHEN
            }

        case 'i':
            switch (name)
            {
                case "iacgr": return 0x3AF; // GREEK SMALL LETTER IOTA WITH TONOS
                case "iacute": return 0xED; // LATIN SMALL LETTER I WITH ACUTE
                case "ic": return 0x2063; // INVISIBLE SEPARATOR
                case "icirc": return 0xEE; // LATIN SMALL LETTER I WITH CIRCUMFLEX
                case "icy": return 0x438; // CYRILLIC SMALL LETTER I
                case "idiagr": return 0x390; // GREEK SMALL LETTER IOTA WITH DIALYTIKA AND TONOS
                case "idigr": return 0x3CA; // GREEK SMALL LETTER IOTA WITH DIALYTIKA
                case "iecy": return 0x435; // CYRILLIC SMALL LETTER IE
                case "iexcl": return 0xA1; // INVERTED EXCLAMATION MARK
                case "iff": return 0x21D4; // LEFT RIGHT DOUBLE ARROW
                case "ifr": return 0x1D526; // MATHEMATICAL FRAKTUR SMALL I
                case "igr": return 0x3B9; // GREEK SMALL LETTER IOTA
                case "igrave": return 0xEC; // LATIN SMALL LETTER I WITH GRAVE
                case "ii": return 0x2148; // DOUBLE-STRUCK ITALIC SMALL I
                case "iiiint": return 0x2A0C; // QUADRUPLE INTEGRAL OPERATOR
                case "iiint": return 0x222D; // TRIPLE INTEGRAL
                case "iinfin": return 0x29DC; // INCOMPLETE INFINITY
                case "iiota": return 0x2129; // TURNED GREEK SMALL LETTER IOTA
                case "ijlig": return 0x133; // LATIN SMALL LIGATURE IJ
                case "imacr": return 0x12B; // LATIN SMALL LETTER I WITH MACRON
                case "image": return 0x2111; // BLACK-LETTER CAPITAL I
                case "imagline": return 0x2110; // SCRIPT CAPITAL I
                case "imagpart": return 0x2111; // BLACK-LETTER CAPITAL I
                case "imath": return 0x131; // LATIN SMALL LETTER DOTLESS I
                case "imof": return 0x22B7; // IMAGE OF
                case "imped": return 0x1B5; // LATIN CAPITAL LETTER Z WITH STROKE
                case "in": return 0x2208; // ELEMENT OF
                case "incare": return 0x2105; // CARE OF
                case "infin": return 0x221E; // INFINITY
                case "infintie": return 0x29DD; // TIE OVER INFINITY
                case "inodot": return 0x131; // LATIN SMALL LETTER DOTLESS I
                case "int": return 0x222B; // INTEGRAL
                case "intcal": return 0x22BA; // INTERCALATE
                case "integers": return 0x2124; // DOUBLE-STRUCK CAPITAL Z
                case "intercal": return 0x22BA; // INTERCALATE
                case "intlarhk": return 0x2A17; // INTEGRAL WITH LEFTWARDS ARROW WITH HOOK
                case "intprod": return 0x2A3C; // INTERIOR PRODUCT
                case "iocy": return 0x451; // CYRILLIC SMALL LETTER IO
                case "iogon": return 0x12F; // LATIN SMALL LETTER I WITH OGONEK
                case "iopf": return 0x1D55A; // MATHEMATICAL DOUBLE-STRUCK SMALL I
                case "iota": return 0x3B9; // GREEK SMALL LETTER IOTA
                case "iprod": return 0x2A3C; // INTERIOR PRODUCT
                case "iprodr": return 0x2A3D; // RIGHTHAND INTERIOR PRODUCT
                case "iquest": return 0xBF; // INVERTED QUESTION MARK
                case "iscr": return 0x1D4BE; // MATHEMATICAL SCRIPT SMALL I
                case "isin": return 0x2208; // ELEMENT OF
                case "isinE": return 0x22F9; // ELEMENT OF WITH TWO HORIZONTAL STROKES
                case "isindot": return 0x22F5; // ELEMENT OF WITH DOT ABOVE
                case "isins": return 0x22F4; // SMALL ELEMENT OF WITH VERTICAL BAR AT END OF HORIZONTAL STROKE
                case "isinsv": return 0x22F3; // ELEMENT OF WITH VERTICAL BAR AT END OF HORIZONTAL STROKE
                case "isinv": return 0x2208; // ELEMENT OF
                case "isinvb": return 0x22F8; // ELEMENT OF WITH UNDERBAR
                case "it": return 0x2062; // INVISIBLE TIMES
                case "itilde": return 0x129; // LATIN SMALL LETTER I WITH TILDE
                case "iukcy": return 0x456; // CYRILLIC SMALL LETTER BYELORUSSIAN-UKRAINIAN I
                case "iuml": return 0xEF; // LATIN SMALL LETTER I WITH DIAERESIS
            }

        case 'j':
            switch (name)
            {
                case "jcirc": return 0x135; // LATIN SMALL LETTER J WITH CIRCUMFLEX
                case "jcy": return 0x439; // CYRILLIC SMALL LETTER SHORT I
                case "jfr": return 0x1D527; // MATHEMATICAL FRAKTUR SMALL J
                case "jmath": return 0x237; // LATIN SMALL LETTER DOTLESS J
                case "jnodot": return 0x237; // LATIN SMALL LETTER DOTLESS J
                case "jopf": return 0x1D55B; // MATHEMATICAL DOUBLE-STRUCK SMALL J
                case "jscr": return 0x1D4BF; // MATHEMATICAL SCRIPT SMALL J
                case "jsercy": return 0x458; // CYRILLIC SMALL LETTER JE
                case "jukcy": return 0x454; // CYRILLIC SMALL LETTER UKRAINIAN IE
            }

        case 'k':
            switch (name)
            {
                case "kappa": return 0x3BA; // GREEK SMALL LETTER KAPPA
                case "kappav": return 0x3F0; // GREEK KAPPA SYMBOL
                case "kcedil": return 0x137; // LATIN SMALL LETTER K WITH CEDILLA
                case "kcy": return 0x43A; // CYRILLIC SMALL LETTER KA
                case "kfr": return 0x1D528; // MATHEMATICAL FRAKTUR SMALL K
                case "kgr": return 0x3BA; // GREEK SMALL LETTER KAPPA
                case "kgreen": return 0x138; // LATIN SMALL LETTER KRA
                case "khcy": return 0x445; // CYRILLIC SMALL LETTER HA
                case "khgr": return 0x3C7; // GREEK SMALL LETTER CHI
                case "kjcy": return 0x45C; // CYRILLIC SMALL LETTER KJE
                case "kopf": return 0x1D55C; // MATHEMATICAL DOUBLE-STRUCK SMALL K
                case "koppa": return 0x3DE; // GREEK LETTER KOPPA
                case "kscr": return 0x1D4C0; // MATHEMATICAL SCRIPT SMALL K
            }

        case 'l':
            switch (name)
            {
                case "lAarr": return 0x21DA; // LEFTWARDS TRIPLE ARROW
                case "lArr": return 0x21D0; // LEFTWARDS DOUBLE ARROW
                case "lAtail": return 0x291B; // LEFTWARDS DOUBLE ARROW-TAIL
                case "lBarr": return 0x290E; // LEFTWARDS TRIPLE DASH ARROW
                case "lE": return 0x2266; // LESS-THAN OVER EQUAL TO
                case "lEg": return 0x2A8B; // LESS-THAN ABOVE DOUBLE-LINE EQUAL ABOVE GREATER-THAN
                case "lHar": return 0x2962; // LEFTWARDS HARPOON WITH BARB UP ABOVE LEFTWARDS HARPOON WITH BARB DOWN
                case "lacute": return 0x13A; // LATIN SMALL LETTER L WITH ACUTE
                case "laemptyv": return 0x29B4; // EMPTY SET WITH LEFT ARROW ABOVE
                case "lagran": return 0x2112; // SCRIPT CAPITAL L
                case "lambda": return 0x3BB; // GREEK SMALL LETTER LAMDA
                case "lang": return 0x27E8; // MATHEMATICAL LEFT ANGLE BRACKET
                case "langd": return 0x2991; // LEFT ANGLE BRACKET WITH DOT
                case "langle": return 0x27E8; // MATHEMATICAL LEFT ANGLE BRACKET
                case "lap": return 0x2A85; // LESS-THAN OR APPROXIMATE
                case "laquo": return 0xAB; // LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
                case "larr": return 0x2190; // LEFTWARDS ARROW
                case "larr2": return 0x21C7; // LEFTWARDS PAIRED ARROWS
                case "larrb": return 0x21E4; // LEFTWARDS ARROW TO BAR
                case "larrbfs": return 0x291F; // LEFTWARDS ARROW FROM BAR TO BLACK DIAMOND
                case "larrfs": return 0x291D; // LEFTWARDS ARROW TO BLACK DIAMOND
                case "larrhk": return 0x21A9; // LEFTWARDS ARROW WITH HOOK
                case "larrlp": return 0x21AB; // LEFTWARDS ARROW WITH LOOP
                case "larrpl": return 0x2939; // LEFT-SIDE ARC ANTICLOCKWISE ARROW
                case "larrsim": return 0x2973; // LEFTWARDS ARROW ABOVE TILDE OPERATOR
                case "larrtl": return 0x21A2; // LEFTWARDS ARROW WITH TAIL
                case "lat": return 0x2AAB; // LARGER THAN
                case "latail": return 0x2919; // LEFTWARDS ARROW-TAIL
                case "late": return 0x2AAD; // LARGER THAN OR EQUAL TO
                case "lbarr": return 0x290C; // LEFTWARDS DOUBLE DASH ARROW
                case "lbbrk": return 0x2772; // LIGHT LEFT TORTOISE SHELL BRACKET ORNAMENT
                case "lbrace": return 0x7B; // LEFT CURLY BRACKET
                case "lbrack": return 0x5B; // LEFT SQUARE BRACKET
                case "lbrke": return 0x298B; // LEFT SQUARE BRACKET WITH UNDERBAR
                case "lbrksld": return 0x298F; // LEFT SQUARE BRACKET WITH TICK IN BOTTOM CORNER
                case "lbrkslu": return 0x298D; // LEFT SQUARE BRACKET WITH TICK IN TOP CORNER
                case "lcaron": return 0x13E; // LATIN SMALL LETTER L WITH CARON
                case "lcedil": return 0x13C; // LATIN SMALL LETTER L WITH CEDILLA
                case "lceil": return 0x2308; // LEFT CEILING
                case "lcub": return 0x7B; // LEFT CURLY BRACKET
                case "lcy": return 0x43B; // CYRILLIC SMALL LETTER EL
                case "ldca": return 0x2936; // ARROW POINTING DOWNWARDS THEN CURVING LEFTWARDS
                case "ldharb": return 0x2956; // LEFTWARDS HARPOON WITH BARB DOWN TO BAR
                case "ldot": return 0x22D6; // LESS-THAN WITH DOT
                case "ldquo": return 0x201C; // LEFT DOUBLE QUOTATION MARK
                case "ldquor": return 0x201E; // DOUBLE LOW-9 QUOTATION MARK
                case "ldrdhar": return 0x2967; // LEFTWARDS HARPOON WITH BARB DOWN ABOVE RIGHTWARDS HARPOON WITH BARB DOWN
                case "ldrdshar": return 0x2950; // LEFT BARB DOWN RIGHT BARB DOWN HARPOON
                case "ldrushar": return 0x294B; // LEFT BARB DOWN RIGHT BARB UP HARPOON
                case "ldsh": return 0x21B2; // DOWNWARDS ARROW WITH TIP LEFTWARDS
                case "le": return 0x2264; // LESS-THAN OR EQUAL TO
                case "leftarrow": return 0x2190; // LEFTWARDS ARROW
                case "leftarrowtail": return 0x21A2; // LEFTWARDS ARROW WITH TAIL
                case "leftharpoondown": return 0x21BD; // LEFTWARDS HARPOON WITH BARB DOWNWARDS
                case "leftharpoonup": return 0x21BC; // LEFTWARDS HARPOON WITH BARB UPWARDS
                case "leftleftarrows": return 0x21C7; // LEFTWARDS PAIRED ARROWS
                case "leftrightarrow": return 0x2194; // LEFT RIGHT ARROW
                case "leftrightarrows": return 0x21C6; // LEFTWARDS ARROW OVER RIGHTWARDS ARROW
                case "leftrightharpoons": return 0x21CB; // LEFTWARDS HARPOON OVER RIGHTWARDS HARPOON
                case "leftrightsquigarrow": return 0x21AD; // LEFT RIGHT WAVE ARROW
                case "leftthreetimes": return 0x22CB; // LEFT SEMIDIRECT PRODUCT
                case "leg": return 0x22DA; // LESS-THAN EQUAL TO OR GREATER-THAN
                case "leq": return 0x2264; // LESS-THAN OR EQUAL TO
                case "leqq": return 0x2266; // LESS-THAN OVER EQUAL TO
                case "leqslant": return 0x2A7D; // LESS-THAN OR SLANTED EQUAL TO
                case "les": return 0x2A7D; // LESS-THAN OR SLANTED EQUAL TO
                case "lescc": return 0x2AA8; // LESS-THAN CLOSED BY CURVE ABOVE SLANTED EQUAL
                case "lesdot": return 0x2A7F; // LESS-THAN OR SLANTED EQUAL TO WITH DOT INSIDE
                case "lesdoto": return 0x2A81; // LESS-THAN OR SLANTED EQUAL TO WITH DOT ABOVE
                case "lesdotor": return 0x2A83; // LESS-THAN OR SLANTED EQUAL TO WITH DOT ABOVE RIGHT
                case "lesges": return 0x2A93; // LESS-THAN ABOVE SLANTED EQUAL ABOVE GREATER-THAN ABOVE SLANTED EQUAL
                case "lessapprox": return 0x2A85; // LESS-THAN OR APPROXIMATE
                case "lessdot": return 0x22D6; // LESS-THAN WITH DOT
                case "lesseqgtr": return 0x22DA; // LESS-THAN EQUAL TO OR GREATER-THAN
                case "lesseqqgtr": return 0x2A8B; // LESS-THAN ABOVE DOUBLE-LINE EQUAL ABOVE GREATER-THAN
                case "lessgtr": return 0x2276; // LESS-THAN OR GREATER-THAN
                case "lesssim": return 0x2272; // LESS-THAN OR EQUIVALENT TO
                case "lfbowtie": return 0x29D1; // BOWTIE WITH LEFT HALF BLACK
                case "lfisht": return 0x297C; // LEFT FISH TAIL
                case "lfloor": return 0x230A; // LEFT FLOOR
                case "lfr": return 0x1D529; // MATHEMATICAL FRAKTUR SMALL L
                case "lftimes": return 0x29D4; // TIMES WITH LEFT HALF BLACK
                case "lg": return 0x2276; // LESS-THAN OR GREATER-THAN
                case "lgE": return 0x2A91; // LESS-THAN ABOVE GREATER-THAN ABOVE DOUBLE-LINE EQUAL
                case "lgr": return 0x3BB; // GREEK SMALL LETTER LAMDA
                case "lhard": return 0x21BD; // LEFTWARDS HARPOON WITH BARB DOWNWARDS
                case "lharu": return 0x21BC; // LEFTWARDS HARPOON WITH BARB UPWARDS
                case "lharul": return 0x296A; // LEFTWARDS HARPOON WITH BARB UP ABOVE LONG DASH
                case "lhblk": return 0x2584; // LOWER HALF BLOCK
                case "ljcy": return 0x459; // CYRILLIC SMALL LETTER LJE
                case "ll": return 0x226A; // MUCH LESS-THAN
                case "llarr": return 0x21C7; // LEFTWARDS PAIRED ARROWS
                case "llcorner": return 0x231E; // BOTTOM LEFT CORNER
                case "llhard": return 0x296B; // LEFTWARDS HARPOON WITH BARB DOWN BELOW LONG DASH
                case "lltri": return 0x25FA; // LOWER LEFT TRIANGLE
                case "lltrif": return 0x25E3; // BLACK LOWER LEFT TRIANGLE
                case "lmidot": return 0x140; // LATIN SMALL LETTER L WITH MIDDLE DOT
                case "lmoust": return 0x23B0; // UPPER LEFT OR LOWER RIGHT CURLY BRACKET SECTION
                case "lmoustache": return 0x23B0; // UPPER LEFT OR LOWER RIGHT CURLY BRACKET SECTION
                case "lnE": return 0x2268; // LESS-THAN BUT NOT EQUAL TO
                case "lnap": return 0x2A89; // LESS-THAN AND NOT APPROXIMATE
                case "lnapprox": return 0x2A89; // LESS-THAN AND NOT APPROXIMATE
                case "lne": return 0x2A87; // LESS-THAN AND SINGLE-LINE NOT EQUAL TO
                case "lneq": return 0x2A87; // LESS-THAN AND SINGLE-LINE NOT EQUAL TO
                case "lneqq": return 0x2268; // LESS-THAN BUT NOT EQUAL TO
                case "lnsim": return 0x22E6; // LESS-THAN BUT NOT EQUIVALENT TO
                case "loang": return 0x27EC; // MATHEMATICAL LEFT WHITE TORTOISE SHELL BRACKET
                case "loarr": return 0x21FD; // LEFTWARDS OPEN-HEADED ARROW
                case "lobrk": return 0x27E6; // MATHEMATICAL LEFT WHITE SQUARE BRACKET
                case "locub": return 0x2983; // LEFT WHITE CURLY BRACKET
                case "longleftarrow": return 0x27F5; // LONG LEFTWARDS ARROW
                case "longleftrightarrow": return 0x27F7; // LONG LEFT RIGHT ARROW
                case "longmapsto": return 0x27FC; // LONG RIGHTWARDS ARROW FROM BAR
                case "longrightarrow": return 0x27F6; // LONG RIGHTWARDS ARROW
                case "looparrowleft": return 0x21AB; // LEFTWARDS ARROW WITH LOOP
                case "looparrowright": return 0x21AC; // RIGHTWARDS ARROW WITH LOOP
                case "lopar": return 0x2985; // LEFT WHITE PARENTHESIS
                case "lopf": return 0x1D55D; // MATHEMATICAL DOUBLE-STRUCK SMALL L
                case "loplus": return 0x2A2D; // PLUS SIGN IN LEFT HALF CIRCLE
                case "lotimes": return 0x2A34; // MULTIPLICATION SIGN IN LEFT HALF CIRCLE
                case "lowast": return 0x204E; // LOW ASTERISK
                case "lowbar": return 0x5F; // LOW LINE
                case "lowint": return 0x2A1C; // INTEGRAL WITH UNDERBAR
                case "loz": return 0x25CA; // LOZENGE
                case "lozenge": return 0x25CA; // LOZENGE
                case "lozf": return 0x29EB; // BLACK LOZENGE
                case "lpar": return 0x28; // LEFT PARENTHESIS
                case "lpargt": return 0x29A0; // SPHERICAL ANGLE OPENING LEFT
                case "lparlt": return 0x2993; // LEFT ARC LESS-THAN BRACKET
                case "lrarr": return 0x21C6; // LEFTWARDS ARROW OVER RIGHTWARDS ARROW
                case "lrarr2": return 0x21C6; // LEFTWARDS ARROW OVER RIGHTWARDS ARROW
                case "lrcorner": return 0x231F; // BOTTOM RIGHT CORNER
                case "lrhar": return 0x21CB; // LEFTWARDS HARPOON OVER RIGHTWARDS HARPOON
                case "lrhar2": return 0x21CB; // LEFTWARDS HARPOON OVER RIGHTWARDS HARPOON
                case "lrhard": return 0x296D; // RIGHTWARDS HARPOON WITH BARB DOWN BELOW LONG DASH
                case "lrm": return 0x200E; // LEFT-TO-RIGHT MARK
                case "lrtri": return 0x22BF; // RIGHT TRIANGLE
                case "lsaquo": return 0x2039; // SINGLE LEFT-POINTING ANGLE QUOTATION MARK
                case "lscr": return 0x1D4C1; // MATHEMATICAL SCRIPT SMALL L
                case "lsh": return 0x21B0; // UPWARDS ARROW WITH TIP LEFTWARDS
                case "lsim": return 0x2272; // LESS-THAN OR EQUIVALENT TO
                case "lsime": return 0x2A8D; // LESS-THAN ABOVE SIMILAR OR EQUAL
                case "lsimg": return 0x2A8F; // LESS-THAN ABOVE SIMILAR ABOVE GREATER-THAN
                case "lsqb": return 0x5B; // LEFT SQUARE BRACKET
                case "lsquo": return 0x2018; // LEFT SINGLE QUOTATION MARK
                case "lsquor": return 0x201A; // SINGLE LOW-9 QUOTATION MARK
                case "lstrok": return 0x142; // LATIN SMALL LETTER L WITH STROKE
                case "lt": return 0x3C; // LESS-THAN SIGN
                case "ltcc": return 0x2AA6; // LESS-THAN CLOSED BY CURVE
                case "ltcir": return 0x2A79; // LESS-THAN WITH CIRCLE INSIDE
                case "ltdot": return 0x22D6; // LESS-THAN WITH DOT
                case "lthree": return 0x22CB; // LEFT SEMIDIRECT PRODUCT
                case "ltimes": return 0x22C9; // LEFT NORMAL FACTOR SEMIDIRECT PRODUCT
                case "ltlarr": return 0x2976; // LESS-THAN ABOVE LEFTWARDS ARROW
                case "ltquest": return 0x2A7B; // LESS-THAN WITH QUESTION MARK ABOVE
                case "ltrPar": return 0x2996; // DOUBLE RIGHT ARC LESS-THAN BRACKET
                case "ltri": return 0x25C3; // WHITE LEFT-POINTING SMALL TRIANGLE
                case "ltrie": return 0x22B4; // NORMAL SUBGROUP OF OR EQUAL TO
                case "ltrif": return 0x25C2; // BLACK LEFT-POINTING SMALL TRIANGLE
                case "ltrivb": return 0x29CF; // LEFT TRIANGLE BESIDE VERTICAL BAR
                case "luharb": return 0x2952; // LEFTWARDS HARPOON WITH BARB UP TO BAR
                case "lurdshar": return 0x294A; // LEFT BARB UP RIGHT BARB DOWN HARPOON
                case "luruhar": return 0x2966; // LEFTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB UP
                case "lurushar": return 0x294E; // LEFT BARB UP RIGHT BARB UP HARPOON
            }

        case 'm':
            switch (name)
            {
                case "mDDot": return 0x223A; // GEOMETRIC PROPORTION
                case "macr": return 0xAF; // MACRON
                case "male": return 0x2642; // MALE SIGN
                case "malt": return 0x2720; // MALTESE CROSS
                case "maltese": return 0x2720; // MALTESE CROSS
                case "map": return 0x21A6; // RIGHTWARDS ARROW FROM BAR
                case "mapsto": return 0x21A6; // RIGHTWARDS ARROW FROM BAR
                case "mapstodown": return 0x21A7; // DOWNWARDS ARROW FROM BAR
                case "mapstoleft": return 0x21A4; // LEFTWARDS ARROW FROM BAR
                case "mapstoup": return 0x21A5; // UPWARDS ARROW FROM BAR
                case "marker": return 0x25AE; // BLACK VERTICAL RECTANGLE
                case "mcomma": return 0x2A29; // MINUS SIGN WITH COMMA ABOVE
                case "mcy": return 0x43C; // CYRILLIC SMALL LETTER EM
                case "mdash": return 0x2014; // EM DASH
                case "measuredangle": return 0x2221; // MEASURED ANGLE
                case "mfr": return 0x1D52A; // MATHEMATICAL FRAKTUR SMALL M
                case "mgr": return 0x3BC; // GREEK SMALL LETTER MU
                case "mho": return 0x2127; // INVERTED OHM SIGN
                case "micro": return 0xB5; // MICRO SIGN
                case "mid": return 0x2223; // DIVIDES
                case "midast": return 0x2A; // ASTERISK
                case "midcir": return 0x2AF0; // VERTICAL LINE WITH CIRCLE BELOW
                case "middot": return 0xB7; // MIDDLE DOT
                case "minus": return 0x2212; // MINUS SIGN
                case "minusb": return 0x229F; // SQUARED MINUS
                case "minusd": return 0x2238; // DOT MINUS
                case "minusdu": return 0x2A2A; // MINUS SIGN WITH DOT BELOW
                case "mlcp": return 0x2ADB; // TRANSVERSAL INTERSECTION
                case "mldr": return 0x2026; // HORIZONTAL ELLIPSIS
                case "mnplus": return 0x2213; // MINUS-OR-PLUS SIGN
                case "models": return 0x22A7; // MODELS
                case "mopf": return 0x1D55E; // MATHEMATICAL DOUBLE-STRUCK SMALL M
                case "mp": return 0x2213; // MINUS-OR-PLUS SIGN
                case "mscr": return 0x1D4C2; // MATHEMATICAL SCRIPT SMALL M
                case "mstpos": return 0x223E; // INVERTED LAZY S
                case "mu": return 0x3BC; // GREEK SMALL LETTER MU
                case "multimap": return 0x22B8; // MULTIMAP
                case "mumap": return 0x22B8; // MULTIMAP
            }

        case 'n':
            switch (name)
            {
                case "nLeftarrow": return 0x21CD; // LEFTWARDS DOUBLE ARROW WITH STROKE
                case "nLeftrightarrow": return 0x21CE; // LEFT RIGHT DOUBLE ARROW WITH STROKE
                case "nRightarrow": return 0x21CF; // RIGHTWARDS DOUBLE ARROW WITH STROKE
                case "nVDash": return 0x22AF; // NEGATED DOUBLE VERTICAL BAR DOUBLE RIGHT TURNSTILE
                case "nVdash": return 0x22AE; // DOES NOT FORCE
                case "nabla": return 0x2207; // NABLA
                case "nacute": return 0x144; // LATIN SMALL LETTER N WITH ACUTE
                case "nap": return 0x2249; // NOT ALMOST EQUAL TO
                case "napos": return 0x149; // LATIN SMALL LETTER N PRECEDED BY APOSTROPHE
                case "napprox": return 0x2249; // NOT ALMOST EQUAL TO
                case "natur": return 0x266E; // MUSIC NATURAL SIGN
                case "natural": return 0x266E; // MUSIC NATURAL SIGN
                case "naturals": return 0x2115; // DOUBLE-STRUCK CAPITAL N
                case "nbsp": return 0xA0; // NO-BREAK SPACE
                case "ncap": return 0x2A43; // INTERSECTION WITH OVERBAR
                case "ncaron": return 0x148; // LATIN SMALL LETTER N WITH CARON
                case "ncedil": return 0x146; // LATIN SMALL LETTER N WITH CEDILLA
                case "ncong": return 0x2247; // NEITHER APPROXIMATELY NOR ACTUALLY EQUAL TO
                case "ncup": return 0x2A42; // UNION WITH OVERBAR
                case "ncy": return 0x43D; // CYRILLIC SMALL LETTER EN
                case "ndash": return 0x2013; // EN DASH
                case "ne": return 0x2260; // NOT EQUAL TO
                case "neArr": return 0x21D7; // NORTH EAST DOUBLE ARROW
                case "nearhk": return 0x2924; // NORTH EAST ARROW WITH HOOK
                case "nearr": return 0x2197; // NORTH EAST ARROW
                case "nearrow": return 0x2197; // NORTH EAST ARROW
                case "neonwarr": return 0x2931; // NORTH EAST ARROW CROSSING NORTH WEST ARROW
                case "neosearr": return 0x292E; // NORTH EAST ARROW CROSSING SOUTH EAST ARROW
                case "nequiv": return 0x2262; // NOT IDENTICAL TO
                case "nesear": return 0x2928; // NORTH EAST ARROW AND SOUTH EAST ARROW
                case "neswsarr": return 0x2922; // NORTH EAST AND SOUTH WEST ARROW
                case "nexist": return 0x2204; // THERE DOES NOT EXIST
                case "nexists": return 0x2204; // THERE DOES NOT EXIST
                case "nfr": return 0x1D52B; // MATHEMATICAL FRAKTUR SMALL N
                case "nge": return 0x2271; // NEITHER GREATER-THAN NOR EQUAL TO
                case "ngeq": return 0x2271; // NEITHER GREATER-THAN NOR EQUAL TO
                case "ngr": return 0x3BD; // GREEK SMALL LETTER NU
                case "ngsim": return 0x2275; // NEITHER GREATER-THAN NOR EQUIVALENT TO
                case "ngt": return 0x226F; // NOT GREATER-THAN
                case "ngtr": return 0x226F; // NOT GREATER-THAN
                case "nhArr": return 0x21CE; // LEFT RIGHT DOUBLE ARROW WITH STROKE
                case "nharr": return 0x21AE; // LEFT RIGHT ARROW WITH STROKE
                case "nhpar": return 0x2AF2; // PARALLEL WITH HORIZONTAL STROKE
                case "ni": return 0x220B; // CONTAINS AS MEMBER
                case "nis": return 0x22FC; // SMALL CONTAINS WITH VERTICAL BAR AT END OF HORIZONTAL STROKE
                case "nisd": return 0x22FA; // CONTAINS WITH LONG HORIZONTAL STROKE
                case "niv": return 0x220B; // CONTAINS AS MEMBER
                case "njcy": return 0x45A; // CYRILLIC SMALL LETTER NJE
                case "nlArr": return 0x21CD; // LEFTWARDS DOUBLE ARROW WITH STROKE
                case "nlarr": return 0x219A; // LEFTWARDS ARROW WITH STROKE
                case "nldr": return 0x2025; // TWO DOT LEADER
                case "nle": return 0x2270; // NEITHER LESS-THAN NOR EQUAL TO
                case "nleftarrow": return 0x219A; // LEFTWARDS ARROW WITH STROKE
                case "nleftrightarrow": return 0x21AE; // LEFT RIGHT ARROW WITH STROKE
                case "nleq": return 0x2270; // NEITHER LESS-THAN NOR EQUAL TO
                case "nless": return 0x226E; // NOT LESS-THAN
                case "nlsim": return 0x2274; // NEITHER LESS-THAN NOR EQUIVALENT TO
                case "nlt": return 0x226E; // NOT LESS-THAN
                case "nltri": return 0x22EA; // NOT NORMAL SUBGROUP OF
                case "nltrie": return 0x22EC; // NOT NORMAL SUBGROUP OF OR EQUAL TO
                case "nmid": return 0x2224; // DOES NOT DIVIDE
                case "nopf": return 0x1D55F; // MATHEMATICAL DOUBLE-STRUCK SMALL N
                case "not": return 0xAC; // NOT SIGN
                case "notin": return 0x2209; // NOT AN ELEMENT OF
                case "notinva": return 0x2209; // NOT AN ELEMENT OF
                case "notinvb": return 0x22F7; // SMALL ELEMENT OF WITH OVERBAR
                case "notinvc": return 0x22F6; // ELEMENT OF WITH OVERBAR
                case "notni": return 0x220C; // DOES NOT CONTAIN AS MEMBER
                case "notniva": return 0x220C; // DOES NOT CONTAIN AS MEMBER
                case "notnivb": return 0x22FE; // SMALL CONTAINS WITH OVERBAR
                case "notnivc": return 0x22FD; // CONTAINS WITH OVERBAR
                case "npar": return 0x2226; // NOT PARALLEL TO
                case "nparallel": return 0x2226; // NOT PARALLEL TO
                case "npolint": return 0x2A14; // LINE INTEGRATION NOT INCLUDING THE POLE
                case "npr": return 0x2280; // DOES NOT PRECEDE
                case "nprcue": return 0x22E0; // DOES NOT PRECEDE OR EQUAL
                case "nprec": return 0x2280; // DOES NOT PRECEDE
                case "nrArr": return 0x21CF; // RIGHTWARDS DOUBLE ARROW WITH STROKE
                case "nrarr": return 0x219B; // RIGHTWARDS ARROW WITH STROKE
                case "nrightarrow": return 0x219B; // RIGHTWARDS ARROW WITH STROKE
                case "nrtri": return 0x22EB; // DOES NOT CONTAIN AS NORMAL SUBGROUP
                case "nrtrie": return 0x22ED; // DOES NOT CONTAIN AS NORMAL SUBGROUP OR EQUAL
                case "nsc": return 0x2281; // DOES NOT SUCCEED
                case "nsccue": return 0x22E1; // DOES NOT SUCCEED OR EQUAL
                case "nscr": return 0x1D4C3; // MATHEMATICAL SCRIPT SMALL N
                case "nshortmid": return 0x2224; // DOES NOT DIVIDE
                case "nshortparallel": return 0x2226; // NOT PARALLEL TO
                case "nsim": return 0x2241; // NOT TILDE
                case "nsime": return 0x2244; // NOT ASYMPTOTICALLY EQUAL TO
                case "nsimeq": return 0x2244; // NOT ASYMPTOTICALLY EQUAL TO
                case "nsmid": return 0x2224; // DOES NOT DIVIDE
                case "nspar": return 0x2226; // NOT PARALLEL TO
                case "nsqsube": return 0x22E2; // NOT SQUARE IMAGE OF OR EQUAL TO
                case "nsqsupe": return 0x22E3; // NOT SQUARE ORIGINAL OF OR EQUAL TO
                case "nsub": return 0x2284; // NOT A SUBSET OF
                case "nsube": return 0x2288; // NEITHER A SUBSET OF NOR EQUAL TO
                case "nsubseteq": return 0x2288; // NEITHER A SUBSET OF NOR EQUAL TO
                case "nsucc": return 0x2281; // DOES NOT SUCCEED
                case "nsup": return 0x2285; // NOT A SUPERSET OF
                case "nsupe": return 0x2289; // NEITHER A SUPERSET OF NOR EQUAL TO
                case "nsupseteq": return 0x2289; // NEITHER A SUPERSET OF NOR EQUAL TO
                case "ntgl": return 0x2279; // NEITHER GREATER-THAN NOR LESS-THAN
                case "ntilde": return 0xF1; // LATIN SMALL LETTER N WITH TILDE
                case "ntlg": return 0x2278; // NEITHER LESS-THAN NOR GREATER-THAN
                case "ntriangleleft": return 0x22EA; // NOT NORMAL SUBGROUP OF
                case "ntrianglelefteq": return 0x22EC; // NOT NORMAL SUBGROUP OF OR EQUAL TO
                case "ntriangleright": return 0x22EB; // DOES NOT CONTAIN AS NORMAL SUBGROUP
                case "ntrianglerighteq": return 0x22ED; // DOES NOT CONTAIN AS NORMAL SUBGROUP OR EQUAL
                case "nu": return 0x3BD; // GREEK SMALL LETTER NU
                case "num": return 0x23; // NUMBER SIGN
                case "numero": return 0x2116; // NUMERO SIGN
                case "numsp": return 0x2007; // FIGURE SPACE
                case "nvDash": return 0x22AD; // NOT TRUE
                case "nvHarr": return 0x2904; // LEFT RIGHT DOUBLE ARROW WITH VERTICAL STROKE
                case "nvdash": return 0x22AC; // DOES NOT PROVE
                case "nvinfin": return 0x29DE; // INFINITY NEGATED WITH VERTICAL BAR
                case "nvlArr": return 0x2902; // LEFTWARDS DOUBLE ARROW WITH VERTICAL STROKE
                case "nvrArr": return 0x2903; // RIGHTWARDS DOUBLE ARROW WITH VERTICAL STROKE
                case "nwArr": return 0x21D6; // NORTH WEST DOUBLE ARROW
                case "nwarhk": return 0x2923; // NORTH WEST ARROW WITH HOOK
                case "nwarr": return 0x2196; // NORTH WEST ARROW
                case "nwarrow": return 0x2196; // NORTH WEST ARROW
                case "nwnear": return 0x2927; // NORTH WEST ARROW AND NORTH EAST ARROW
                case "nwonearr": return 0x2932; // NORTH WEST ARROW CROSSING NORTH EAST ARROW
                case "nwsesarr": return 0x2921; // NORTH WEST AND SOUTH EAST ARROW
            }

        case 'o':
            switch (name)
            {
                case "oS": return 0x24C8; // CIRCLED LATIN CAPITAL LETTER S
                case "oacgr": return 0x3CC; // GREEK SMALL LETTER OMICRON WITH TONOS
                case "oacute": return 0xF3; // LATIN SMALL LETTER O WITH ACUTE
                case "oast": return 0x229B; // CIRCLED ASTERISK OPERATOR
                case "obsol": return 0x29B8; // CIRCLED REVERSE SOLIDUS
                case "ocir": return 0x229A; // CIRCLED RING OPERATOR
                case "ocirc": return 0xF4; // LATIN SMALL LETTER O WITH CIRCUMFLEX
                case "ocy": return 0x43E; // CYRILLIC SMALL LETTER O
                case "odash": return 0x229D; // CIRCLED DASH
                case "odblac": return 0x151; // LATIN SMALL LETTER O WITH DOUBLE ACUTE
                case "odiv": return 0x2A38; // CIRCLED DIVISION SIGN
                case "odot": return 0x2299; // CIRCLED DOT OPERATOR
                case "odsold": return 0x29BC; // CIRCLED ANTICLOCKWISE-ROTATED DIVISION SIGN
                case "oelig": return 0x153; // LATIN SMALL LIGATURE OE
                case "ofcir": return 0x29BF; // CIRCLED BULLET
                case "ofr": return 0x1D52C; // MATHEMATICAL FRAKTUR SMALL O
                case "ogon": return 0x2DB; // OGONEK
                case "ogr": return 0x3BF; // GREEK SMALL LETTER OMICRON
                case "ograve": return 0xF2; // LATIN SMALL LETTER O WITH GRAVE
                case "ogt": return 0x29C1; // CIRCLED GREATER-THAN
                case "ohacgr": return 0x3CE; // GREEK SMALL LETTER OMEGA WITH TONOS
                case "ohbar": return 0x29B5; // CIRCLE WITH HORIZONTAL BAR
                case "ohgr": return 0x3C9; // GREEK SMALL LETTER OMEGA
                case "ohm": return 0x3A9; // GREEK CAPITAL LETTER OMEGA
                case "oint": return 0x222E; // CONTOUR INTEGRAL
                case "olarr": return 0x21BA; // ANTICLOCKWISE OPEN CIRCLE ARROW
                case "olcir": return 0x29BE; // CIRCLED WHITE BULLET
                case "olcross": return 0x29BB; // CIRCLE WITH SUPERIMPOSED X
                case "oline": return 0x203E; // OVERLINE
                case "olt": return 0x29C0; // CIRCLED LESS-THAN
                case "omacr": return 0x14D; // LATIN SMALL LETTER O WITH MACRON
                case "omega": return 0x3C9; // GREEK SMALL LETTER OMEGA
                case "omicron": return 0x3BF; // GREEK SMALL LETTER OMICRON
                case "omid": return 0x29B6; // CIRCLED VERTICAL BAR
                case "ominus": return 0x2296; // CIRCLED MINUS
                case "oopf": return 0x1D560; // MATHEMATICAL DOUBLE-STRUCK SMALL O
                case "opar": return 0x29B7; // CIRCLED PARALLEL
                case "operp": return 0x29B9; // CIRCLED PERPENDICULAR
                case "opfgamma": return 0x213D; // DOUBLE-STRUCK SMALL GAMMA
                case "opfpi": return 0x213F; // DOUBLE-STRUCK CAPITAL PI
                case "opfsum": return 0x2140; // DOUBLE-STRUCK N-ARY SUMMATION
                case "oplus": return 0x2295; // CIRCLED PLUS
                case "or": return 0x2228; // LOGICAL OR
                case "orarr": return 0x21BB; // CLOCKWISE OPEN CIRCLE ARROW
                case "ord": return 0x2A5D; // LOGICAL OR WITH HORIZONTAL DASH
                case "order": return 0x2134; // SCRIPT SMALL O
                case "orderof": return 0x2134; // SCRIPT SMALL O
                case "ordf": return 0xAA; // FEMININE ORDINAL INDICATOR
                case "ordm": return 0xBA; // MASCULINE ORDINAL INDICATOR
                case "origof": return 0x22B6; // ORIGINAL OF
                case "oror": return 0x2A56; // TWO INTERSECTING LOGICAL OR
                case "orslope": return 0x2A57; // SLOPING LARGE OR
                case "orv": return 0x2A5B; // LOGICAL OR WITH MIDDLE STEM
                case "oscr": return 0x2134; // SCRIPT SMALL O
                case "oslash": return 0xF8; // LATIN SMALL LETTER O WITH STROKE
                case "osol": return 0x2298; // CIRCLED DIVISION SLASH
                case "otilde": return 0xF5; // LATIN SMALL LETTER O WITH TILDE
                case "otimes": return 0x2297; // CIRCLED TIMES
                case "otimesas": return 0x2A36; // CIRCLED MULTIPLICATION SIGN WITH CIRCUMFLEX ACCENT
                case "ouml": return 0xF6; // LATIN SMALL LETTER O WITH DIAERESIS
                case "ovbar": return 0x233D; // APL FUNCTIONAL SYMBOL CIRCLE STILE
                case "ovrbrk": return 0x23B4; // TOP SQUARE BRACKET
                case "ovrcub": return 0x23DE; // TOP CURLY BRACKET
                case "ovrpar": return 0x23DC; // TOP PARENTHESIS
                case "oxuarr": return 0x29BD; // UP ARROW THROUGH CIRCLE
            }

        case 'p':
            switch (name)
            {
                case "par": return 0x2225; // PARALLEL TO
                case "para": return 0xB6; // PILCROW SIGN
                case "parallel": return 0x2225; // PARALLEL TO
                case "parsim": return 0x2AF3; // PARALLEL WITH TILDE OPERATOR
                case "parsl": return 0x2AFD; // DOUBLE SOLIDUS OPERATOR
                case "part": return 0x2202; // PARTIAL DIFFERENTIAL
                case "pcy": return 0x43F; // CYRILLIC SMALL LETTER PE
                case "percnt": return 0x25; // PERCENT SIGN
                case "period": return 0x2E; // FULL STOP
                case "permil": return 0x2030; // PER MILLE SIGN
                case "perp": return 0x22A5; // UP TACK
                case "pertenk": return 0x2031; // PER TEN THOUSAND SIGN
                case "pfr": return 0x1D52D; // MATHEMATICAL FRAKTUR SMALL P
                case "pgr": return 0x3C0; // GREEK SMALL LETTER PI
                case "phgr": return 0x3C6; // GREEK SMALL LETTER PHI
                case "phi": return 0x3C6; // GREEK SMALL LETTER PHI
                case "phis": return 0x3D5; // GREEK PHI SYMBOL
                case "phiv": return 0x3D5; // GREEK PHI SYMBOL
                case "phmmat": return 0x2133; // SCRIPT CAPITAL M
                case "phone": return 0x260E; // BLACK TELEPHONE
                case "pi": return 0x3C0; // GREEK SMALL LETTER PI
                case "pitchfork": return 0x22D4; // PITCHFORK
                case "piv": return 0x3D6; // GREEK PI SYMBOL
                case "planck": return 0x210F; // PLANCK CONSTANT OVER TWO PI
                case "planckh": return 0x210E; // PLANCK CONSTANT
                case "plankv": return 0x210F; // PLANCK CONSTANT OVER TWO PI
                case "plus": return 0x2B; // PLUS SIGN
                case "plusacir": return 0x2A23; // PLUS SIGN WITH CIRCUMFLEX ACCENT ABOVE
                case "plusb": return 0x229E; // SQUARED PLUS
                case "pluscir": return 0x2A22; // PLUS SIGN WITH SMALL CIRCLE ABOVE
                case "plusdo": return 0x2214; // DOT PLUS
                case "plusdu": return 0x2A25; // PLUS SIGN WITH DOT BELOW
                case "pluse": return 0x2A72; // PLUS SIGN ABOVE EQUALS SIGN
                case "plusmn": return 0xB1; // PLUS-MINUS SIGN
                case "plussim": return 0x2A26; // PLUS SIGN WITH TILDE BELOW
                case "plustrif": return 0x2A28; // PLUS SIGN WITH BLACK TRIANGLE
                case "plustwo": return 0x2A27; // PLUS SIGN WITH SUBSCRIPT TWO
                case "pm": return 0xB1; // PLUS-MINUS SIGN
                case "pointint": return 0x2A15; // INTEGRAL AROUND A POINT OPERATOR
                case "popf": return 0x1D561; // MATHEMATICAL DOUBLE-STRUCK SMALL P
                case "pound": return 0xA3; // POUND SIGN
                case "pr": return 0x227A; // PRECEDES
                case "prE": return 0x2AB3; // PRECEDES ABOVE EQUALS SIGN
                case "prap": return 0x2AB7; // PRECEDES ABOVE ALMOST EQUAL TO
                case "prcue": return 0x227C; // PRECEDES OR EQUAL TO
                case "pre": return 0x2AAF; // PRECEDES ABOVE SINGLE-LINE EQUALS SIGN
                case "prec": return 0x227A; // PRECEDES
                case "precapprox": return 0x2AB7; // PRECEDES ABOVE ALMOST EQUAL TO
                case "preccurlyeq": return 0x227C; // PRECEDES OR EQUAL TO
                case "preceq": return 0x2AAF; // PRECEDES ABOVE SINGLE-LINE EQUALS SIGN
                case "precnapprox": return 0x2AB9; // PRECEDES ABOVE NOT ALMOST EQUAL TO
                case "precneqq": return 0x2AB5; // PRECEDES ABOVE NOT EQUAL TO
                case "precnsim": return 0x22E8; // PRECEDES BUT NOT EQUIVALENT TO
                case "precsim": return 0x227E; // PRECEDES OR EQUIVALENT TO
                case "prime": return 0x2032; // PRIME
                case "primes": return 0x2119; // DOUBLE-STRUCK CAPITAL P
                case "prnE": return 0x2AB5; // PRECEDES ABOVE NOT EQUAL TO
                case "prnap": return 0x2AB9; // PRECEDES ABOVE NOT ALMOST EQUAL TO
                case "prnsim": return 0x22E8; // PRECEDES BUT NOT EQUIVALENT TO
                case "prod": return 0x220F; // N-ARY PRODUCT
                case "profalar": return 0x232E; // ALL AROUND-PROFILE
                case "profline": return 0x2312; // ARC
                case "profsurf": return 0x2313; // SEGMENT
                case "prop": return 0x221D; // PROPORTIONAL TO
                case "propto": return 0x221D; // PROPORTIONAL TO
                case "prsim": return 0x227E; // PRECEDES OR EQUIVALENT TO
                case "prurel": return 0x22B0; // PRECEDES UNDER RELATION
                case "pscr": return 0x1D4C5; // MATHEMATICAL SCRIPT SMALL P
                case "psgr": return 0x3C8; // GREEK SMALL LETTER PSI
                case "psi": return 0x3C8; // GREEK SMALL LETTER PSI
                case "puncsp": return 0x2008; // PUNCTUATION SPACE
            }

        case 'q':
            switch (name)
            {
                case "qfr": return 0x1D52E; // MATHEMATICAL FRAKTUR SMALL Q
                case "qint": return 0x2A0C; // QUADRUPLE INTEGRAL OPERATOR
                case "qopf": return 0x1D562; // MATHEMATICAL DOUBLE-STRUCK SMALL Q
                case "qprime": return 0x2057; // QUADRUPLE PRIME
                case "qscr": return 0x1D4C6; // MATHEMATICAL SCRIPT SMALL Q
                case "quaternions": return 0x210D; // DOUBLE-STRUCK CAPITAL H
                case "quatint": return 0x2A16; // QUATERNION INTEGRAL OPERATOR
                case "quest": return 0x3F; // QUESTION MARK
                case "questeq": return 0x225F; // QUESTIONED EQUAL TO
                case "quot": return 0x22; // QUOTATION MARK
            }

        case 'r':
            switch (name)
            {
                case "rAarr": return 0x21DB; // RIGHTWARDS TRIPLE ARROW
                case "rArr": return 0x21D2; // RIGHTWARDS DOUBLE ARROW
                case "rAtail": return 0x291C; // RIGHTWARDS DOUBLE ARROW-TAIL
                case "rBarr": return 0x290F; // RIGHTWARDS TRIPLE DASH ARROW
                case "rHar": return 0x2964; // RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN
                case "racute": return 0x155; // LATIN SMALL LETTER R WITH ACUTE
                case "radic": return 0x221A; // SQUARE ROOT
                case "raemptyv": return 0x29B3; // EMPTY SET WITH RIGHT ARROW ABOVE
                case "rang": return 0x27E9; // MATHEMATICAL RIGHT ANGLE BRACKET
                case "rangd": return 0x2992; // RIGHT ANGLE BRACKET WITH DOT
                case "range": return 0x29A5; // REVERSED ANGLE WITH UNDERBAR
                case "rangle": return 0x27E9; // MATHEMATICAL RIGHT ANGLE BRACKET
                case "raquo": return 0xBB; // RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
                case "rarr": return 0x2192; // RIGHTWARDS ARROW
                case "rarr2": return 0x21C9; // RIGHTWARDS PAIRED ARROWS
                case "rarr3": return 0x21F6; // THREE RIGHTWARDS ARROWS
                case "rarrap": return 0x2975; // RIGHTWARDS ARROW ABOVE ALMOST EQUAL TO
                case "rarrb": return 0x21E5; // RIGHTWARDS ARROW TO BAR
                case "rarrbfs": return 0x2920; // RIGHTWARDS ARROW FROM BAR TO BLACK DIAMOND
                case "rarrc": return 0x2933; // WAVE ARROW POINTING DIRECTLY RIGHT
                case "rarrfs": return 0x291E; // RIGHTWARDS ARROW TO BLACK DIAMOND
                case "rarrhk": return 0x21AA; // RIGHTWARDS ARROW WITH HOOK
                case "rarrlp": return 0x21AC; // RIGHTWARDS ARROW WITH LOOP
                case "rarrpl": return 0x2945; // RIGHTWARDS ARROW WITH PLUS BELOW
                case "rarrsim": return 0x2974; // RIGHTWARDS ARROW ABOVE TILDE OPERATOR
                case "rarrtl": return 0x21A3; // RIGHTWARDS ARROW WITH TAIL
                case "rarrw": return 0x219D; // RIGHTWARDS WAVE ARROW
                case "rarrx": return 0x2947; // RIGHTWARDS ARROW THROUGH X
                case "ratail": return 0x291A; // RIGHTWARDS ARROW-TAIL
                case "ratio": return 0x2236; // RATIO
                case "rationals": return 0x211A; // DOUBLE-STRUCK CAPITAL Q
                case "rbarr": return 0x290D; // RIGHTWARDS DOUBLE DASH ARROW
                case "rbbrk": return 0x2773; // LIGHT RIGHT TORTOISE SHELL BRACKET ORNAMENT
                case "rbrace": return 0x7D; // RIGHT CURLY BRACKET
                case "rbrack": return 0x5D; // RIGHT SQUARE BRACKET
                case "rbrke": return 0x298C; // RIGHT SQUARE BRACKET WITH UNDERBAR
                case "rbrksld": return 0x298E; // RIGHT SQUARE BRACKET WITH TICK IN BOTTOM CORNER
                case "rbrkslu": return 0x2990; // RIGHT SQUARE BRACKET WITH TICK IN TOP CORNER
                case "rcaron": return 0x159; // LATIN SMALL LETTER R WITH CARON
                case "rcedil": return 0x157; // LATIN SMALL LETTER R WITH CEDILLA
                case "rceil": return 0x2309; // RIGHT CEILING
                case "rcub": return 0x7D; // RIGHT CURLY BRACKET
                case "rcy": return 0x440; // CYRILLIC SMALL LETTER ER
                case "rdca": return 0x2937; // ARROW POINTING DOWNWARDS THEN CURVING RIGHTWARDS
                case "rdharb": return 0x2957; // RIGHTWARDS HARPOON WITH BARB DOWN TO BAR
                case "rdiag": return 0x2571; // BOX DRAWINGS LIGHT DIAGONAL UPPER RIGHT TO LOWER LEFT
                case "rdiofdi": return 0x292B; // RISING DIAGONAL CROSSING FALLING DIAGONAL
                case "rdldhar": return 0x2969; // RIGHTWARDS HARPOON WITH BARB DOWN ABOVE LEFTWARDS HARPOON WITH BARB DOWN
                case "rdosearr": return 0x2930; // RISING DIAGONAL CROSSING SOUTH EAST ARROW
                case "rdquo": return 0x201D; // RIGHT DOUBLE QUOTATION MARK
                case "rdquor": return 0x201D; // RIGHT DOUBLE QUOTATION MARK
                case "rdsh": return 0x21B3; // DOWNWARDS ARROW WITH TIP RIGHTWARDS
                case "real": return 0x211C; // BLACK-LETTER CAPITAL R
                case "realine": return 0x211B; // SCRIPT CAPITAL R
                case "realpart": return 0x211C; // BLACK-LETTER CAPITAL R
                case "reals": return 0x211D; // DOUBLE-STRUCK CAPITAL R
                case "rect": return 0x25AD; // WHITE RECTANGLE
                case "reg": return 0xAE; // REGISTERED SIGN
                case "rfbowtie": return 0x29D2; // BOWTIE WITH RIGHT HALF BLACK
                case "rfisht": return 0x297D; // RIGHT FISH TAIL
                case "rfloor": return 0x230B; // RIGHT FLOOR
                case "rfr": return 0x1D52F; // MATHEMATICAL FRAKTUR SMALL R
                case "rftimes": return 0x29D5; // TIMES WITH RIGHT HALF BLACK
                case "rgr": return 0x3C1; // GREEK SMALL LETTER RHO
                case "rhard": return 0x21C1; // RIGHTWARDS HARPOON WITH BARB DOWNWARDS
                case "rharu": return 0x21C0; // RIGHTWARDS HARPOON WITH BARB UPWARDS
                case "rharul": return 0x296C; // RIGHTWARDS HARPOON WITH BARB UP ABOVE LONG DASH
                case "rho": return 0x3C1; // GREEK SMALL LETTER RHO
                case "rhov": return 0x3F1; // GREEK RHO SYMBOL
                case "rightarrow": return 0x2192; // RIGHTWARDS ARROW
                case "rightarrowtail": return 0x21A3; // RIGHTWARDS ARROW WITH TAIL
                case "rightharpoondown": return 0x21C1; // RIGHTWARDS HARPOON WITH BARB DOWNWARDS
                case "rightharpoonup": return 0x21C0; // RIGHTWARDS HARPOON WITH BARB UPWARDS
                case "rightleftarrows": return 0x21C4; // RIGHTWARDS ARROW OVER LEFTWARDS ARROW
                case "rightleftharpoons": return 0x21CC; // RIGHTWARDS HARPOON OVER LEFTWARDS HARPOON
                case "rightrightarrows": return 0x21C9; // RIGHTWARDS PAIRED ARROWS
                case "rightsquigarrow": return 0x219D; // RIGHTWARDS WAVE ARROW
                case "rightthreetimes": return 0x22CC; // RIGHT SEMIDIRECT PRODUCT
                case "rimply": return 0x2970; // RIGHT DOUBLE ARROW WITH ROUNDED HEAD
                case "ring": return 0x2DA; // RING ABOVE
                case "risingdotseq": return 0x2253; // IMAGE OF OR APPROXIMATELY EQUAL TO
                case "rlarr": return 0x21C4; // RIGHTWARDS ARROW OVER LEFTWARDS ARROW
                case "rlarr2": return 0x21C4; // RIGHTWARDS ARROW OVER LEFTWARDS ARROW
                case "rlhar": return 0x21CC; // RIGHTWARDS HARPOON OVER LEFTWARDS HARPOON
                case "rlhar2": return 0x21CC; // RIGHTWARDS HARPOON OVER LEFTWARDS HARPOON
                case "rlm": return 0x200F; // RIGHT-TO-LEFT MARK
                case "rmoust": return 0x23B1; // UPPER RIGHT OR LOWER LEFT CURLY BRACKET SECTION
                case "rmoustache": return 0x23B1; // UPPER RIGHT OR LOWER LEFT CURLY BRACKET SECTION
                case "rnmid": return 0x2AEE; // DOES NOT DIVIDE WITH REVERSED NEGATION SLASH
                case "roang": return 0x27ED; // MATHEMATICAL RIGHT WHITE TORTOISE SHELL BRACKET
                case "roarr": return 0x21FE; // RIGHTWARDS OPEN-HEADED ARROW
                case "robrk": return 0x27E7; // MATHEMATICAL RIGHT WHITE SQUARE BRACKET
                case "rocub": return 0x2984; // RIGHT WHITE CURLY BRACKET
                case "ropar": return 0x2986; // RIGHT WHITE PARENTHESIS
                case "ropf": return 0x1D563; // MATHEMATICAL DOUBLE-STRUCK SMALL R
                case "roplus": return 0x2A2E; // PLUS SIGN IN RIGHT HALF CIRCLE
                case "rotimes": return 0x2A35; // MULTIPLICATION SIGN IN RIGHT HALF CIRCLE
                case "rpar": return 0x29; // RIGHT PARENTHESIS
                case "rpargt": return 0x2994; // RIGHT ARC GREATER-THAN BRACKET
                case "rppolint": return 0x2A12; // LINE INTEGRATION WITH RECTANGULAR PATH AROUND POLE
                case "rrarr": return 0x21C9; // RIGHTWARDS PAIRED ARROWS
                case "rsaquo": return 0x203A; // SINGLE RIGHT-POINTING ANGLE QUOTATION MARK
                case "rscr": return 0x1D4C7; // MATHEMATICAL SCRIPT SMALL R
                case "rsh": return 0x21B1; // UPWARDS ARROW WITH TIP RIGHTWARDS
                case "rsolbar": return 0x29F7; // REVERSE SOLIDUS WITH HORIZONTAL STROKE
                case "rsqb": return 0x5D; // RIGHT SQUARE BRACKET
                case "rsquo": return 0x2019; // RIGHT SINGLE QUOTATION MARK
                case "rsquor": return 0x2019; // RIGHT SINGLE QUOTATION MARK
                case "rthree": return 0x22CC; // RIGHT SEMIDIRECT PRODUCT
                case "rtimes": return 0x22CA; // RIGHT NORMAL FACTOR SEMIDIRECT PRODUCT
                case "rtri": return 0x25B9; // WHITE RIGHT-POINTING SMALL TRIANGLE
                case "rtrie": return 0x22B5; // CONTAINS AS NORMAL SUBGROUP OR EQUAL TO
                case "rtrif": return 0x25B8; // BLACK RIGHT-POINTING SMALL TRIANGLE
                case "rtriltri": return 0x29CE; // RIGHT TRIANGLE ABOVE LEFT TRIANGLE
                case "ruharb": return 0x2953; // RIGHTWARDS HARPOON WITH BARB UP TO BAR
                case "ruluhar": return 0x2968; // RIGHTWARDS HARPOON WITH BARB UP ABOVE LEFTWARDS HARPOON WITH BARB UP
                case "rx": return 0x211E; // PRESCRIPTION TAKE
            }

        case 's':
            switch (name)
            {
                case "sacute": return 0x15B; // LATIN SMALL LETTER S WITH ACUTE
                case "samalg": return 0x2210; // N-ARY COPRODUCT
                case "sampi": return 0x3E0; // GREEK LETTER SAMPI
                case "sbquo": return 0x201A; // SINGLE LOW-9 QUOTATION MARK
                case "sbsol": return 0xFE68; // SMALL REVERSE SOLIDUS
                case "sc": return 0x227B; // SUCCEEDS
                case "scE": return 0x2AB4; // SUCCEEDS ABOVE EQUALS SIGN
                case "scap": return 0x2AB8; // SUCCEEDS ABOVE ALMOST EQUAL TO
                case "scaron": return 0x161; // LATIN SMALL LETTER S WITH CARON
                case "sccue": return 0x227D; // SUCCEEDS OR EQUAL TO
                case "sce": return 0x2AB0; // SUCCEEDS ABOVE SINGLE-LINE EQUALS SIGN
                case "scedil": return 0x15F; // LATIN SMALL LETTER S WITH CEDILLA
                case "scirc": return 0x15D; // LATIN SMALL LETTER S WITH CIRCUMFLEX
                case "scnE": return 0x2AB6; // SUCCEEDS ABOVE NOT EQUAL TO
                case "scnap": return 0x2ABA; // SUCCEEDS ABOVE NOT ALMOST EQUAL TO
                case "scnsim": return 0x22E9; // SUCCEEDS BUT NOT EQUIVALENT TO
                case "scpolint": return 0x2A13; // LINE INTEGRATION WITH SEMICIRCULAR PATH AROUND POLE
                case "scsim": return 0x227F; // SUCCEEDS OR EQUIVALENT TO
                case "scy": return 0x441; // CYRILLIC SMALL LETTER ES
                case "sdot": return 0x22C5; // DOT OPERATOR
                case "sdotb": return 0x22A1; // SQUARED DOT OPERATOR
                case "sdote": return 0x2A66; // EQUALS SIGN WITH DOT BELOW
                case "seArr": return 0x21D8; // SOUTH EAST DOUBLE ARROW
                case "searhk": return 0x2925; // SOUTH EAST ARROW WITH HOOK
                case "searr": return 0x2198; // SOUTH EAST ARROW
                case "searrow": return 0x2198; // SOUTH EAST ARROW
                case "sect": return 0xA7; // SECTION SIGN
                case "semi": return 0x3B; // SEMICOLON
                case "seonearr": return 0x292D; // SOUTH EAST ARROW CROSSING NORTH EAST ARROW
                case "seswar": return 0x2929; // SOUTH EAST ARROW AND SOUTH WEST ARROW
                case "setminus": return 0x2216; // SET MINUS
                case "setmn": return 0x2216; // SET MINUS
                case "sext": return 0x2736; // SIX POINTED BLACK STAR
                case "sfgr": return 0x3C2; // GREEK SMALL LETTER FINAL SIGMA
                case "sfr": return 0x1D530; // MATHEMATICAL FRAKTUR SMALL S
                case "sfrown": return 0x2322; // FROWN
                case "sgr": return 0x3C3; // GREEK SMALL LETTER SIGMA
                case "sharp": return 0x266F; // MUSIC SHARP SIGN
                case "shchcy": return 0x449; // CYRILLIC SMALL LETTER SHCHA
                case "shcy": return 0x448; // CYRILLIC SMALL LETTER SHA
                case "shortmid": return 0x2223; // DIVIDES
                case "shortparallel": return 0x2225; // PARALLEL TO
                case "shuffle": return 0x29E2; // SHUFFLE PRODUCT
                case "shy": return 0xAD; // SOFT HYPHEN
                case "sigma": return 0x3C3; // GREEK SMALL LETTER SIGMA
                case "sigmaf": return 0x3C2; // GREEK SMALL LETTER FINAL SIGMA
                case "sigmav": return 0x3C2; // GREEK SMALL LETTER FINAL SIGMA
                case "sim": return 0x223C; // TILDE OPERATOR
                case "simdot": return 0x2A6A; // TILDE OPERATOR WITH DOT ABOVE
                case "sime": return 0x2243; // ASYMPTOTICALLY EQUAL TO
                case "simeq": return 0x2243; // ASYMPTOTICALLY EQUAL TO
                case "simg": return 0x2A9E; // SIMILAR OR GREATER-THAN
                case "simgE": return 0x2AA0; // SIMILAR ABOVE GREATER-THAN ABOVE EQUALS SIGN
                case "siml": return 0x2A9D; // SIMILAR OR LESS-THAN
                case "simlE": return 0x2A9F; // SIMILAR ABOVE LESS-THAN ABOVE EQUALS SIGN
                case "simne": return 0x2246; // APPROXIMATELY BUT NOT ACTUALLY EQUAL TO
                case "simplus": return 0x2A24; // PLUS SIGN WITH TILDE ABOVE
                case "simrarr": return 0x2972; // TILDE OPERATOR ABOVE RIGHTWARDS ARROW
                case "slarr": return 0x2190; // LEFTWARDS ARROW
                case "slint": return 0x2A0F; // INTEGRAL AVERAGE WITH SLASH
                case "smallsetminus": return 0x2216; // SET MINUS
                case "smashp": return 0x2A33; // SMASH PRODUCT
                case "smeparsl": return 0x29E4; // EQUALS SIGN AND SLANTED PARALLEL WITH TILDE ABOVE
                case "smid": return 0x2223; // DIVIDES
                case "smile": return 0x2323; // SMILE
                case "smt": return 0x2AAA; // SMALLER THAN
                case "smte": return 0x2AAC; // SMALLER THAN OR EQUAL TO
                case "softcy": return 0x44C; // CYRILLIC SMALL LETTER SOFT SIGN
                case "sol": return 0x2F; // SOLIDUS
                case "solb": return 0x29C4; // SQUARED RISING DIAGONAL SLASH
                case "solbar": return 0x233F; // APL FUNCTIONAL SYMBOL SLASH BAR
                case "sopf": return 0x1D564; // MATHEMATICAL DOUBLE-STRUCK SMALL S
                case "spades": return 0x2660; // BLACK SPADE SUIT
                case "spadesuit": return 0x2660; // BLACK SPADE SUIT
                case "spar": return 0x2225; // PARALLEL TO
                case "sqcap": return 0x2293; // SQUARE CAP
                case "sqcup": return 0x2294; // SQUARE CUP
                case "sqsub": return 0x228F; // SQUARE IMAGE OF
                case "sqsube": return 0x2291; // SQUARE IMAGE OF OR EQUAL TO
                case "sqsubset": return 0x228F; // SQUARE IMAGE OF
                case "sqsubseteq": return 0x2291; // SQUARE IMAGE OF OR EQUAL TO
                case "sqsup": return 0x2290; // SQUARE ORIGINAL OF
                case "sqsupe": return 0x2292; // SQUARE ORIGINAL OF OR EQUAL TO
                case "sqsupset": return 0x2290; // SQUARE ORIGINAL OF
                case "sqsupseteq": return 0x2292; // SQUARE ORIGINAL OF OR EQUAL TO
                case "squ": return 0x25A1; // WHITE SQUARE
                case "square": return 0x25A1; // WHITE SQUARE
                case "squarf": return 0x25AA; // BLACK SMALL SQUARE
                case "squb": return 0x29C8; // SQUARED SQUARE
                case "squerr": return 0x29EE; // ERROR-BARRED WHITE SQUARE
                case "squf": return 0x25AA; // BLACK SMALL SQUARE
                case "squferr": return 0x29EF; // ERROR-BARRED BLACK SQUARE
                case "srarr": return 0x2192; // RIGHTWARDS ARROW
                case "sscr": return 0x1D4C8; // MATHEMATICAL SCRIPT SMALL S
                case "ssetmn": return 0x2216; // SET MINUS
                case "ssmile": return 0x2323; // SMILE
                case "sstarf": return 0x22C6; // STAR OPERATOR
                case "star": return 0x2606; // WHITE STAR
                case "starf": return 0x2605; // BLACK STAR
                case "stigma": return 0x3DA; // GREEK LETTER STIGMA
                case "straightepsilon": return 0x3F5; // GREEK LUNATE EPSILON SYMBOL
                case "straightphi": return 0x3D5; // GREEK PHI SYMBOL
                case "strns": return 0xAF; // MACRON
                case "sub": return 0x2282; // SUBSET OF
                case "subE": return 0x2AC5; // SUBSET OF ABOVE EQUALS SIGN
                case "subdot": return 0x2ABD; // SUBSET WITH DOT
                case "sube": return 0x2286; // SUBSET OF OR EQUAL TO
                case "subedot": return 0x2AC3; // SUBSET OF OR EQUAL TO WITH DOT ABOVE
                case "submult": return 0x2AC1; // SUBSET WITH MULTIPLICATION SIGN BELOW
                case "subnE": return 0x2ACB; // SUBSET OF ABOVE NOT EQUAL TO
                case "subne": return 0x228A; // SUBSET OF WITH NOT EQUAL TO
                case "subplus": return 0x2ABF; // SUBSET WITH PLUS SIGN BELOW
                case "subrarr": return 0x2979; // SUBSET ABOVE RIGHTWARDS ARROW
                case "subset": return 0x2282; // SUBSET OF
                case "subseteq": return 0x2286; // SUBSET OF OR EQUAL TO
                case "subseteqq": return 0x2AC5; // SUBSET OF ABOVE EQUALS SIGN
                case "subsetneq": return 0x228A; // SUBSET OF WITH NOT EQUAL TO
                case "subsetneqq": return 0x2ACB; // SUBSET OF ABOVE NOT EQUAL TO
                case "subsim": return 0x2AC7; // SUBSET OF ABOVE TILDE OPERATOR
                case "subsub": return 0x2AD5; // SUBSET ABOVE SUBSET
                case "subsup": return 0x2AD3; // SUBSET ABOVE SUPERSET
                case "succ": return 0x227B; // SUCCEEDS
                case "succapprox": return 0x2AB8; // SUCCEEDS ABOVE ALMOST EQUAL TO
                case "succcurlyeq": return 0x227D; // SUCCEEDS OR EQUAL TO
                case "succeq": return 0x2AB0; // SUCCEEDS ABOVE SINGLE-LINE EQUALS SIGN
                case "succnapprox": return 0x2ABA; // SUCCEEDS ABOVE NOT ALMOST EQUAL TO
                case "succneqq": return 0x2AB6; // SUCCEEDS ABOVE NOT EQUAL TO
                case "succnsim": return 0x22E9; // SUCCEEDS BUT NOT EQUIVALENT TO
                case "succsim": return 0x227F; // SUCCEEDS OR EQUIVALENT TO
                case "sum": return 0x2211; // N-ARY SUMMATION
                case "sumint": return 0x2A0B; // SUMMATION WITH INTEGRAL
                case "sung": return 0x266A; // EIGHTH NOTE
                case "sup": return 0x2283; // SUPERSET OF
                case "sup1": return 0xB9; // SUPERSCRIPT ONE
                case "sup2": return 0xB2; // SUPERSCRIPT TWO
                case "sup3": return 0xB3; // SUPERSCRIPT THREE
                case "supE": return 0x2AC6; // SUPERSET OF ABOVE EQUALS SIGN
                case "supdot": return 0x2ABE; // SUPERSET WITH DOT
                case "supdsub": return 0x2AD8; // SUPERSET BESIDE AND JOINED BY DASH WITH SUBSET
                case "supe": return 0x2287; // SUPERSET OF OR EQUAL TO
                case "supedot": return 0x2AC4; // SUPERSET OF OR EQUAL TO WITH DOT ABOVE
                case "suphsol": return 0x27C9; // SUPERSET PRECEDING SOLIDUS
                case "suphsub": return 0x2AD7; // SUPERSET BESIDE SUBSET
                case "suplarr": return 0x297B; // SUPERSET ABOVE LEFTWARDS ARROW
                case "supmult": return 0x2AC2; // SUPERSET WITH MULTIPLICATION SIGN BELOW
                case "supnE": return 0x2ACC; // SUPERSET OF ABOVE NOT EQUAL TO
                case "supne": return 0x228B; // SUPERSET OF WITH NOT EQUAL TO
                case "supplus": return 0x2AC0; // SUPERSET WITH PLUS SIGN BELOW
                case "supset": return 0x2283; // SUPERSET OF
                case "supseteq": return 0x2287; // SUPERSET OF OR EQUAL TO
                case "supseteqq": return 0x2AC6; // SUPERSET OF ABOVE EQUALS SIGN
                case "supsetneq": return 0x228B; // SUPERSET OF WITH NOT EQUAL TO
                case "supsetneqq": return 0x2ACC; // SUPERSET OF ABOVE NOT EQUAL TO
                case "supsim": return 0x2AC8; // SUPERSET OF ABOVE TILDE OPERATOR
                case "supsub": return 0x2AD4; // SUPERSET ABOVE SUBSET
                case "supsup": return 0x2AD6; // SUPERSET ABOVE SUPERSET
                case "swArr": return 0x21D9; // SOUTH WEST DOUBLE ARROW
                case "swarhk": return 0x2926; // SOUTH WEST ARROW WITH HOOK
                case "swarr": return 0x2199; // SOUTH WEST ARROW
                case "swarrow": return 0x2199; // SOUTH WEST ARROW
                case "swnwar": return 0x292A; // SOUTH WEST ARROW AND NORTH WEST ARROW
                case "szlig": return 0xDF; // LATIN SMALL LETTER SHARP S
            }

        case 't':
            switch (name)
            {
                case "target": return 0x2316; // POSITION INDICATOR
                case "tau": return 0x3C4; // GREEK SMALL LETTER TAU
                case "tbrk": return 0x23B4; // TOP SQUARE BRACKET
                case "tcaron": return 0x165; // LATIN SMALL LETTER T WITH CARON
                case "tcedil": return 0x163; // LATIN SMALL LETTER T WITH CEDILLA
                case "tcy": return 0x442; // CYRILLIC SMALL LETTER TE
                case "tdot": return 0x20DB; // COMBINING THREE DOTS ABOVE
                case "telrec": return 0x2315; // TELEPHONE RECORDER
                case "tfr": return 0x1D531; // MATHEMATICAL FRAKTUR SMALL T
                case "tgr": return 0x3C4; // GREEK SMALL LETTER TAU
                case "there4": return 0x2234; // THEREFORE
                case "therefore": return 0x2234; // THEREFORE
                case "thermod": return 0x29E7; // THERMODYNAMIC
                case "theta": return 0x3B8; // GREEK SMALL LETTER THETA
                case "thetas": return 0x3B8; // GREEK SMALL LETTER THETA
                case "thetasym": return 0x3D1; // GREEK THETA SYMBOL
                case "thetav": return 0x3D1; // GREEK THETA SYMBOL
                case "thgr": return 0x3B8; // GREEK SMALL LETTER THETA
                case "thickapprox": return 0x2248; // ALMOST EQUAL TO
                case "thicksim": return 0x223C; // TILDE OPERATOR
                case "thinsp": return 0x2009; // THIN SPACE
                case "thkap": return 0x2248; // ALMOST EQUAL TO
                case "thksim": return 0x223C; // TILDE OPERATOR
                case "thorn": return 0xFE; // LATIN SMALL LETTER THORN
                case "tilde": return 0x2DC; // SMALL TILDE
                case "timeint": return 0x2A18; // INTEGRAL WITH TIMES SIGN
                case "times": return 0xD7; // MULTIPLICATION SIGN
                case "timesb": return 0x22A0; // SQUARED TIMES
                case "timesbar": return 0x2A31; // MULTIPLICATION SIGN WITH UNDERBAR
                case "timesd": return 0x2A30; // MULTIPLICATION SIGN WITH DOT ABOVE
                case "tint": return 0x222D; // TRIPLE INTEGRAL
                case "toea": return 0x2928; // NORTH EAST ARROW AND SOUTH EAST ARROW
                case "top": return 0x22A4; // DOWN TACK
                case "topbot": return 0x2336; // APL FUNCTIONAL SYMBOL I-BEAM
                case "topcir": return 0x2AF1; // DOWN TACK WITH CIRCLE BELOW
                case "topf": return 0x1D565; // MATHEMATICAL DOUBLE-STRUCK SMALL T
                case "topfork": return 0x2ADA; // PITCHFORK WITH TEE TOP
                case "tosa": return 0x2929; // SOUTH EAST ARROW AND SOUTH WEST ARROW
                case "tprime": return 0x2034; // TRIPLE PRIME
                case "trade": return 0x2122; // TRADE MARK SIGN
                case "triS": return 0x29CC; // S IN TRIANGLE
                case "triangle": return 0x25B5; // WHITE UP-POINTING SMALL TRIANGLE
                case "triangledown": return 0x25BF; // WHITE DOWN-POINTING SMALL TRIANGLE
                case "triangleleft": return 0x25C3; // WHITE LEFT-POINTING SMALL TRIANGLE
                case "trianglelefteq": return 0x22B4; // NORMAL SUBGROUP OF OR EQUAL TO
                case "triangleq": return 0x225C; // DELTA EQUAL TO
                case "triangleright": return 0x25B9; // WHITE RIGHT-POINTING SMALL TRIANGLE
                case "trianglerighteq": return 0x22B5; // CONTAINS AS NORMAL SUBGROUP OR EQUAL TO
                case "tribar": return 0x29CB; // TRIANGLE WITH UNDERBAR
                case "tridot": return 0x25EC; // WHITE UP-POINTING TRIANGLE WITH DOT
                case "tridoto": return 0x29CA; // TRIANGLE WITH DOT ABOVE
                case "trie": return 0x225C; // DELTA EQUAL TO
                case "triminus": return 0x2A3A; // MINUS SIGN IN TRIANGLE
                case "triplus": return 0x2A39; // PLUS SIGN IN TRIANGLE
                case "trisb": return 0x29CD; // TRIANGLE WITH SERIFS AT BOTTOM
                case "tritime": return 0x2A3B; // MULTIPLICATION SIGN IN TRIANGLE
                case "trpezium": return 0x23E2; // WHITE TRAPEZIUM
                case "tscr": return 0x1D4C9; // MATHEMATICAL SCRIPT SMALL T
                case "tscy": return 0x446; // CYRILLIC SMALL LETTER TSE
                case "tshcy": return 0x45B; // CYRILLIC SMALL LETTER TSHE
                case "tstrok": return 0x167; // LATIN SMALL LETTER T WITH STROKE
                case "tverbar": return 0x2980; // TRIPLE VERTICAL BAR DELIMITER
                case "twixt": return 0x226C; // BETWEEN
                case "twoheadleftarrow": return 0x219E; // LEFTWARDS TWO HEADED ARROW
                case "twoheadrightarrow": return 0x21A0; // RIGHTWARDS TWO HEADED ARROW
            }

        case 'u':
            switch (name)
            {
                case "uAarr": return 0x290A; // UPWARDS TRIPLE ARROW
                case "uArr": return 0x21D1; // UPWARDS DOUBLE ARROW
                case "uHar": return 0x2963; // UPWARDS HARPOON WITH BARB LEFT BESIDE UPWARDS HARPOON WITH BARB RIGHT
                case "uacgr": return 0x3CD; // GREEK SMALL LETTER UPSILON WITH TONOS
                case "uacute": return 0xFA; // LATIN SMALL LETTER U WITH ACUTE
                case "uarr": return 0x2191; // UPWARDS ARROW
                case "uarr2": return 0x21C8; // UPWARDS PAIRED ARROWS
                case "uarrb": return 0x2912; // UPWARDS ARROW TO BAR
                case "uarrln": return 0x2909; // UPWARDS ARROW WITH HORIZONTAL STROKE
                case "ubrcy": return 0x45E; // CYRILLIC SMALL LETTER SHORT U
                case "ubreve": return 0x16D; // LATIN SMALL LETTER U WITH BREVE
                case "ucirc": return 0xFB; // LATIN SMALL LETTER U WITH CIRCUMFLEX
                case "ucy": return 0x443; // CYRILLIC SMALL LETTER U
                case "udarr": return 0x21C5; // UPWARDS ARROW LEFTWARDS OF DOWNWARDS ARROW
                case "udblac": return 0x171; // LATIN SMALL LETTER U WITH DOUBLE ACUTE
                case "udhar": return 0x296E; // UPWARDS HARPOON WITH BARB LEFT BESIDE DOWNWARDS HARPOON WITH BARB RIGHT
                case "udiagr": return 0x3B0; // GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND TONOS
                case "udigr": return 0x3CB; // GREEK SMALL LETTER UPSILON WITH DIALYTIKA
                case "udrbrk": return 0x23B5; // BOTTOM SQUARE BRACKET
                case "udrcub": return 0x23DF; // BOTTOM CURLY BRACKET
                case "udrpar": return 0x23DD; // BOTTOM PARENTHESIS
                case "ufisht": return 0x297E; // UP FISH TAIL
                case "ufr": return 0x1D532; // MATHEMATICAL FRAKTUR SMALL U
                case "ugr": return 0x3C5; // GREEK SMALL LETTER UPSILON
                case "ugrave": return 0xF9; // LATIN SMALL LETTER U WITH GRAVE
                case "uharl": return 0x21BF; // UPWARDS HARPOON WITH BARB LEFTWARDS
                case "uharr": return 0x21BE; // UPWARDS HARPOON WITH BARB RIGHTWARDS
                case "uhblk": return 0x2580; // UPPER HALF BLOCK
                case "ulcorn": return 0x231C; // TOP LEFT CORNER
                case "ulcorner": return 0x231C; // TOP LEFT CORNER
                case "ulcrop": return 0x230F; // TOP LEFT CROP
                case "uldlshar": return 0x2951; // UP BARB LEFT DOWN BARB LEFT HARPOON
                case "ulharb": return 0x2958; // UPWARDS HARPOON WITH BARB LEFT TO BAR
                case "ultri": return 0x25F8; // UPPER LEFT TRIANGLE
                case "umacr": return 0x16B; // LATIN SMALL LETTER U WITH MACRON
                case "uml": return 0xA8; // DIAERESIS
                case "uogon": return 0x173; // LATIN SMALL LETTER U WITH OGONEK
                case "uopf": return 0x1D566; // MATHEMATICAL DOUBLE-STRUCK SMALL U
                case "uparrow": return 0x2191; // UPWARDS ARROW
                case "updownarrow": return 0x2195; // UP DOWN ARROW
                case "upharpoonleft": return 0x21BF; // UPWARDS HARPOON WITH BARB LEFTWARDS
                case "upharpoonright": return 0x21BE; // UPWARDS HARPOON WITH BARB RIGHTWARDS
                case "upint": return 0x2A1B; // INTEGRAL WITH OVERBAR
                case "uplus": return 0x228E; // MULTISET UNION
                case "upsi": return 0x3C5; // GREEK SMALL LETTER UPSILON
                case "upsih": return 0x3D2; // GREEK UPSILON WITH HOOK SYMBOL
                case "upsilon": return 0x3C5; // GREEK SMALL LETTER UPSILON
                case "upuparrows": return 0x21C8; // UPWARDS PAIRED ARROWS
                case "urcorn": return 0x231D; // TOP RIGHT CORNER
                case "urcorner": return 0x231D; // TOP RIGHT CORNER
                case "urcrop": return 0x230E; // TOP RIGHT CROP
                case "urdrshar": return 0x294F; // UP BARB RIGHT DOWN BARB RIGHT HARPOON
                case "urharb": return 0x2954; // UPWARDS HARPOON WITH BARB RIGHT TO BAR
                case "uring": return 0x16F; // LATIN SMALL LETTER U WITH RING ABOVE
                case "urtri": return 0x25F9; // UPPER RIGHT TRIANGLE
                case "urtrif": return 0x25E5; // BLACK UPPER RIGHT TRIANGLE
                case "uscr": return 0x1D4CA; // MATHEMATICAL SCRIPT SMALL U
                case "utdot": return 0x22F0; // UP RIGHT DIAGONAL ELLIPSIS
                case "utilde": return 0x169; // LATIN SMALL LETTER U WITH TILDE
                case "utri": return 0x25B5; // WHITE UP-POINTING SMALL TRIANGLE
                case "utrif": return 0x25B4; // BLACK UP-POINTING SMALL TRIANGLE
                case "uuarr": return 0x21C8; // UPWARDS PAIRED ARROWS
                case "uuml": return 0xFC; // LATIN SMALL LETTER U WITH DIAERESIS
                case "uwangle": return 0x29A7; // OBLIQUE ANGLE OPENING DOWN
            }

        case 'v':
            switch (name)
            {
                case "vArr": return 0x21D5; // UP DOWN DOUBLE ARROW
                case "vBar": return 0x2AE8; // SHORT UP TACK WITH UNDERBAR
                case "vBarv": return 0x2AE9; // SHORT UP TACK ABOVE SHORT DOWN TACK
                case "vDash": return 0x22A8; // TRUE
                case "vDdash": return 0x2AE2; // VERTICAL BAR TRIPLE RIGHT TURNSTILE
                case "vangrt": return 0x299C; // RIGHT ANGLE VARIANT WITH SQUARE
                case "varepsilon": return 0x3F5; // GREEK LUNATE EPSILON SYMBOL
                case "varkappa": return 0x3F0; // GREEK KAPPA SYMBOL
                case "varnothing": return 0x2205; // EMPTY SET
                case "varphi": return 0x3D5; // GREEK PHI SYMBOL
                case "varpi": return 0x3D6; // GREEK PI SYMBOL
                case "varpropto": return 0x221D; // PROPORTIONAL TO
                case "varr": return 0x2195; // UP DOWN ARROW
                case "varrho": return 0x3F1; // GREEK RHO SYMBOL
                case "varsigma": return 0x3C2; // GREEK SMALL LETTER FINAL SIGMA
                case "vartheta": return 0x3D1; // GREEK THETA SYMBOL
                case "vartriangleleft": return 0x22B2; // NORMAL SUBGROUP OF
                case "vartriangleright": return 0x22B3; // CONTAINS AS NORMAL SUBGROUP
                case "vbrtri": return 0x29D0; // VERTICAL BAR BESIDE RIGHT TRIANGLE
                case "vcy": return 0x432; // CYRILLIC SMALL LETTER VE
                case "vdash": return 0x22A2; // RIGHT TACK
                case "vee": return 0x2228; // LOGICAL OR
                case "veeBar": return 0x2A63; // LOGICAL OR WITH DOUBLE UNDERBAR
                case "veebar": return 0x22BB; // XOR
                case "veeeq": return 0x225A; // EQUIANGULAR TO
                case "vellip": return 0x22EE; // VERTICAL ELLIPSIS
                case "vellip4": return 0x2999; // DOTTED FENCE
                case "vellipv": return 0x2AF6; // TRIPLE COLON OPERATOR
                case "verbar": return 0x7C; // VERTICAL LINE
                case "vert": return 0x7C; // VERTICAL LINE
                case "vert3": return 0x2AF4; // TRIPLE VERTICAL BAR BINARY RELATION
                case "vfr": return 0x1D533; // MATHEMATICAL FRAKTUR SMALL V
                case "vldash": return 0x23A3; // LEFT SQUARE BRACKET LOWER CORNER
                case "vltri": return 0x22B2; // NORMAL SUBGROUP OF
                case "vopf": return 0x1D567; // MATHEMATICAL DOUBLE-STRUCK SMALL V
                case "vprime": return 0x2032; // PRIME
                case "vprop": return 0x221D; // PROPORTIONAL TO
                case "vrtri": return 0x22B3; // CONTAINS AS NORMAL SUBGROUP
                case "vscr": return 0x1D4CB; // MATHEMATICAL SCRIPT SMALL V
                case "vzigzag": return 0x299A; // VERTICAL ZIGZAG LINE
            }

        case 'w':
            switch (name)
            {
                case "wcirc": return 0x175; // LATIN SMALL LETTER W WITH CIRCUMFLEX
                case "wedbar": return 0x2A5F; // LOGICAL AND WITH UNDERBAR
                case "wedge": return 0x2227; // LOGICAL AND
                case "wedgeq": return 0x2259; // ESTIMATES
                case "weierp": return 0x2118; // SCRIPT CAPITAL P
                case "wfr": return 0x1D534; // MATHEMATICAL FRAKTUR SMALL W
                case "wopf": return 0x1D568; // MATHEMATICAL DOUBLE-STRUCK SMALL W
                case "wp": return 0x2118; // SCRIPT CAPITAL P
                case "wr": return 0x2240; // WREATH PRODUCT
                case "wreath": return 0x2240; // WREATH PRODUCT
                case "wscr": return 0x1D4CC; // MATHEMATICAL SCRIPT SMALL W
            }

        case 'x':
            switch (name)
            {
                case "xandand": return 0x2A07; // TWO LOGICAL AND OPERATOR
                case "xbsol": return 0x2571; // BOX DRAWINGS LIGHT DIAGONAL UPPER RIGHT TO LOWER LEFT
                case "xcap": return 0x22C2; // N-ARY INTERSECTION
                case "xcirc": return 0x25EF; // LARGE CIRCLE
                case "xcup": return 0x22C3; // N-ARY UNION
                case "xcupdot": return 0x2A03; // N-ARY UNION OPERATOR WITH DOT
                case "xdtri": return 0x25BD; // WHITE DOWN-POINTING TRIANGLE
                case "xfr": return 0x1D535; // MATHEMATICAL FRAKTUR SMALL X
                case "xgr": return 0x3BE; // GREEK SMALL LETTER XI
                case "xhArr": return 0x27FA; // LONG LEFT RIGHT DOUBLE ARROW
                case "xharr": return 0x27F7; // LONG LEFT RIGHT ARROW
                case "xi": return 0x3BE; // GREEK SMALL LETTER XI
                case "xlArr": return 0x27F8; // LONG LEFTWARDS DOUBLE ARROW
                case "xlarr": return 0x27F5; // LONG LEFTWARDS ARROW
                case "xmap": return 0x27FC; // LONG RIGHTWARDS ARROW FROM BAR
                case "xnis": return 0x22FB; // CONTAINS WITH VERTICAL BAR AT END OF HORIZONTAL STROKE
                case "xodot": return 0x2A00; // N-ARY CIRCLED DOT OPERATOR
                case "xopf": return 0x1D569; // MATHEMATICAL DOUBLE-STRUCK SMALL X
                case "xoplus": return 0x2A01; // N-ARY CIRCLED PLUS OPERATOR
                case "xoror": return 0x2A08; // TWO LOGICAL OR OPERATOR
                case "xotime": return 0x2A02; // N-ARY CIRCLED TIMES OPERATOR
                case "xrArr": return 0x27F9; // LONG RIGHTWARDS DOUBLE ARROW
                case "xrarr": return 0x27F6; // LONG RIGHTWARDS ARROW
                case "xscr": return 0x1D4CD; // MATHEMATICAL SCRIPT SMALL X
                case "xsol": return 0x2572; // BOX DRAWINGS LIGHT DIAGONAL UPPER LEFT TO LOWER RIGHT
                case "xsqcap": return 0x2A05; // N-ARY SQUARE INTERSECTION OPERATOR
                case "xsqcup": return 0x2A06; // N-ARY SQUARE UNION OPERATOR
                case "xsqu": return 0x25FB; // WHITE MEDIUM SQUARE
                case "xsquf": return 0x25FC; // BLACK MEDIUM SQUARE
                case "xtimes": return 0x2A09; // N-ARY TIMES OPERATOR
                case "xuplus": return 0x2A04; // N-ARY UNION OPERATOR WITH PLUS
                case "xutri": return 0x25B3; // WHITE UP-POINTING TRIANGLE
                case "xvee": return 0x22C1; // N-ARY LOGICAL OR
                case "xwedge": return 0x22C0; // N-ARY LOGICAL AND
            }

        case 'y':
            switch (name)
            {
                case "yacute": return 0xFD; // LATIN SMALL LETTER Y WITH ACUTE
                case "yacy": return 0x44F; // CYRILLIC SMALL LETTER YA
                case "ycirc": return 0x177; // LATIN SMALL LETTER Y WITH CIRCUMFLEX
                case "ycy": return 0x44B; // CYRILLIC SMALL LETTER YERU
                case "yen": return 0xA5; // YEN SIGN
                case "yfr": return 0x1D536; // MATHEMATICAL FRAKTUR SMALL Y
                case "yicy": return 0x457; // CYRILLIC SMALL LETTER YI
                case "yopf": return 0x1D56A; // MATHEMATICAL DOUBLE-STRUCK SMALL Y
                case "yscr": return 0x1D4CE; // MATHEMATICAL SCRIPT SMALL Y
                case "yucy": return 0x44E; // CYRILLIC SMALL LETTER YU
                case "yuml": return 0xFF; // LATIN SMALL LETTER Y WITH DIAERESIS
            }

        case 'z':
            switch (name)
            {
                case "zacute": return 0x17A; // LATIN SMALL LETTER Z WITH ACUTE
                case "zcaron": return 0x17E; // LATIN SMALL LETTER Z WITH CARON
                case "zcy": return 0x437; // CYRILLIC SMALL LETTER ZE
                case "zdot": return 0x17C; // LATIN SMALL LETTER Z WITH DOT ABOVE
                case "zeetrf": return 0x2128; // BLACK-LETTER CAPITAL Z
                case "zeta": return 0x3B6; // GREEK SMALL LETTER ZETA
                case "zfr": return 0x1D537; // MATHEMATICAL FRAKTUR SMALL Z
                case "zgr": return 0x3B6; // GREEK SMALL LETTER ZETA
                case "zhcy": return 0x436; // CYRILLIC SMALL LETTER ZHE
                case "zigrarr": return 0x21DD; // RIGHTWARDS SQUIGGLE ARROW
                case "zopf": return 0x1D56B; // MATHEMATICAL DOUBLE-STRUCK SMALL Z
                case "zscr": return 0x1D4CF; // MATHEMATICAL SCRIPT SMALL Z
                case "zwj": return 0x200D; // ZERO WIDTH JOINER
                case "zwnj": return 0x200C; // ZERO WIDTH NON-JOINER
            }
    }

    return 0;
}
