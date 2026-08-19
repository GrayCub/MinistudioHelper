---@meta
---@diagnostic disable: missing-fields

---@class KeyCode : EnumValue<KeyCode>
---@field Value KeyCode
Enum.KeyCode = {
    ---@type KeyCode
    Unknown = {}, -- Value = 0; 未知输入
    ---@type KeyCode
    Backspace = {}, -- Value = 8; Backspace
    ---@type KeyCode
    Tab = {}, -- Value = 9; Tab
    ---@type KeyCode
    Clear = {}, -- Value = 12; Clear
    ---@type KeyCode
    Return = {}, -- Value = 13; Return
    ---@type KeyCode
    Pause = {}, -- Value = 19; Pause
    ---@type KeyCode
    Escape = {}, -- Value = 27; Escape
    ---@type KeyCode
    Space = {}, -- Value = 32; Space
    ---@type KeyCode
    QuotedDouble = {}, -- Value = 34; QuotedDouble
    ---@type KeyCode
    Hash = {}, -- Value = 35; Hash
    ---@type KeyCode
    Dollar = {}, -- Value = 36; Dollar
    ---@type KeyCode
    Percent = {}, -- Value = 37; Percent
    ---@type KeyCode
    Ampersand = {}, -- Value = 38; Ampersand
    ---@type KeyCode
    Quote = {}, -- Value = 39; Quote
    ---@type KeyCode
    LeftParenthesis = {}, -- Value = 40; LeftParenthesis
    ---@type KeyCode
    RightParenthesis = {}, -- Value = 41; RightParenthesis
    ---@type KeyCode
    Asterisk = {}, -- Value = 42; Asterisk
    ---@type KeyCode
    Plus = {}, -- Value = 43; Plus
    ---@type KeyCode
    Comma = {}, -- Value = 44; Comma
    ---@type KeyCode
    Minus = {}, -- Value = 45; Minus
    ---@type KeyCode
    Period = {}, -- Value = 46; Period
    ---@type KeyCode
    Slash = {}, -- Value = 47; Slash
    ---@type KeyCode
    Zero = {}, -- Value = 48; Zero
    ---@type KeyCode
    One = {}, -- Value = 49; One
    ---@type KeyCode
    Two = {}, -- Value = 50; Two
    ---@type KeyCode
    Three = {}, -- Value = 51; Three
    ---@type KeyCode
    Four = {}, -- Value = 52; Four
    ---@type KeyCode
    Five = {}, -- Value = 53; Five
    ---@type KeyCode
    Six = {}, -- Value = 54; Six
    ---@type KeyCode
    Seven = {}, -- Value = 55; Seven
    ---@type KeyCode
    Eight = {}, -- Value = 56; Eight
    ---@type KeyCode
    Nine = {}, -- Value = 57; Nine
    ---@type KeyCode
    Colon = {}, -- Value = 58; Colon
    ---@type KeyCode
    Semicolon = {}, -- Value = 59; Semicolon
    ---@type KeyCode
    LessThan = {}, -- Value = 60; LessThan
    ---@type KeyCode
    Equals = {}, -- Value = 61; Equals
    ---@type KeyCode
    GreaterThan = {}, -- Value = 62; GreaterThan
    ---@type KeyCode
    Question = {}, -- Value = 63; Question
    ---@type KeyCode
    At = {}, -- Value = 64; At
    ---@type KeyCode
    LeftBracket = {}, -- Value = 91; LeftBracket
    ---@type KeyCode
    BackSlash = {}, -- Value = 92; BackSlash
    ---@type KeyCode
    RightBracket = {}, -- Value = 93; RightBracket
    ---@type KeyCode
    Caret = {}, -- Value = 94; Caret
    ---@type KeyCode
    Underscore = {}, -- Value = 95; Underscore
    ---@type KeyCode
    Backquote = {}, -- Value = 96; Backquote
    ---@type KeyCode
    A = {}, -- Value = 97
    ---@type KeyCode
    B = {}, -- Value = 98
    ---@type KeyCode
    C = {}, -- Value = 99
    ---@type KeyCode
    D = {}, -- Value = 100
    ---@type KeyCode
    E = {}, -- Value = 101
    ---@type KeyCode
    F = {}, -- Value = 102
    ---@type KeyCode
    G = {}, -- Value = 103
    ---@type KeyCode
    H = {}, -- Value = 104
    ---@type KeyCode
    I = {}, -- Value = 105
    ---@type KeyCode
    J = {}, -- Value = 106
    ---@type KeyCode
    K = {}, -- Value = 107
    ---@type KeyCode
    L = {}, -- Value = 108
    ---@type KeyCode
    M = {}, -- Value = 109
    ---@type KeyCode
    N = {}, -- Value = 110
    ---@type KeyCode
    O = {}, -- Value = 111
    ---@type KeyCode
    P = {}, -- Value = 112
    ---@type KeyCode
    Q = {}, -- Value = 113
    ---@type KeyCode
    R = {}, -- Value = 114
    ---@type KeyCode
    S = {}, -- Value = 115
    ---@type KeyCode
    T = {}, -- Value = 116
    ---@type KeyCode
    U = {}, -- Value = 117
    ---@type KeyCode
    V = {}, -- Value = 118
    ---@type KeyCode
    W = {}, -- Value = 119
    ---@type KeyCode
    X = {}, -- Value = 120
    ---@type KeyCode
    Y = {}, -- Value = 121
    ---@type KeyCode
    Z = {}, -- Value = 122
    ---@type KeyCode
    LeftCurly = {}, -- Value = 123
    ---@type KeyCode
    Pipe = {}, -- Value = 124
    ---@type KeyCode
    RightCurly = {}, -- Value = 125
    ---@type KeyCode
    Tilde = {}, -- Value = 126
    ---@type KeyCode
    Delete = {}, -- Value = 127
    ---@type KeyCode
    KeypadZero = {}, -- Value = 256
    ---@type KeyCode
    KeypadOne = {}, -- Value = 257
    ---@type KeyCode
    KeypadTwo = {}, -- Value = 258
    ---@type KeyCode
    KeypadThree = {}, -- Value = 259
    ---@type KeyCode
    KeypadFour = {}, -- Value = 260
    ---@type KeyCode
    KeypadFive = {}, -- Value = 261
    ---@type KeyCode
    KeypadSix = {}, -- Value = 262
    ---@type KeyCode
    KeypadSeven = {}, -- Value = 263
    ---@type KeyCode
    KeypadEight = {}, -- Value = 264
    ---@type KeyCode
    KeypadNine = {}, -- Value = 265
    ---@type KeyCode
    KeypadPeriod = {}, -- Value = 266
    ---@type KeyCode
    KeypadDivide = {}, -- Value = 267
    ---@type KeyCode
    KeypadMultiply = {}, -- Value = 268
    ---@type KeyCode
    KeypadMinus = {}, -- Value = 269
    ---@type KeyCode
    KeypadPlus = {}, -- Value = 270
    ---@type KeyCode
    KeypadEnter = {}, -- Value = 271
    ---@type KeyCode
    KeypadEquals = {}, -- Value = 272
    ---@type KeyCode
    Up = {}, -- Value = 273
    ---@type KeyCode
    Down = {}, -- Value = 274
    ---@type KeyCode
    Right = {}, -- Value = 275
    ---@type KeyCode
    Left = {}, -- Value = 276
    ---@type KeyCode
    Insert = {}, -- Value = 277
    ---@type KeyCode
    Home = {}, -- Value = 278
    ---@type KeyCode
    End = {}, -- Value = 279
    ---@type KeyCode
    PageUp = {}, -- Value = 280
    ---@type KeyCode
    PageDown = {}, -- Value = 281
    ---@type KeyCode
    F1 = {}, -- Value = 282
    ---@type KeyCode
    F2 = {}, -- Value = 283
    ---@type KeyCode
    F3 = {}, -- Value = 284
    ---@type KeyCode
    F4 = {}, -- Value = 285
    ---@type KeyCode
    F5 = {}, -- Value = 286
    ---@type KeyCode
    F6 = {}, -- Value = 287
    ---@type KeyCode
    F7 = {}, -- Value = 288
    ---@type KeyCode
    F8 = {}, -- Value = 289
    ---@type KeyCode
    F9 = {}, -- Value = 290
    ---@type KeyCode
    F10 = {}, -- Value = 291
    ---@type KeyCode
    F11 = {}, -- Value = 292
    ---@type KeyCode
    F12 = {}, -- Value = 293
    ---@type KeyCode
    F13 = {}, -- Value = 294
    ---@type KeyCode
    F14 = {}, -- Value = 295
    ---@type KeyCode
    F15 = {}, -- Value = 296
    ---@type KeyCode
    NumLock = {}, -- Value = 300
    ---@type KeyCode
    CapsLock = {}, -- Value = 301
    ---@type KeyCode
    ScrollLock = {}, -- Value = 302
    ---@type KeyCode
    RightShift = {}, -- Value = 303
    ---@type KeyCode
    LeftShift = {}, -- Value = 304
    ---@type KeyCode
    RightControl = {}, -- Value = 305
    ---@type KeyCode
    LeftControl = {}, -- Value = 306
    ---@type KeyCode
    RightAlt = {}, -- Value = 307
    ---@type KeyCode
    LeftAlt = {}, -- Value = 308
    ---@type KeyCode
    RightMeta = {}, -- Value = 309
    ---@type KeyCode
    LeftMeta = {}, -- Value = 310
    ---@type KeyCode
    LeftSuper = {}, -- Value = 311
    ---@type KeyCode
    RightSuper = {}, -- Value = 312
    ---@type KeyCode
    Mode = {}, -- Value = 313
    ---@type KeyCode
    Compose = {}, -- Value = 314
    ---@type KeyCode
    Help = {}, -- Value = 315
    ---@type KeyCode
    Print = {}, -- Value = 316
    ---@type KeyCode
    SysReq = {}, -- Value = 317
    ---@type KeyCode
    Break = {}, -- Value = 318
    ---@type KeyCode
    Menu = {}, -- Value = 319
    ---@type KeyCode
    Power = {}, -- Value = 320
    ---@type KeyCode
    Euro = {}, -- Value = 321
    ---@type KeyCode
    Undo = {}, -- Value = 322
}
