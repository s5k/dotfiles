;#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode "Input"  ; Recommended for new scripts due to its superior speed and reliability.
;SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Disable CapsLock
SetCapsLockState "AlwaysOff"

/* Base layer
 * ,----------------------------------------------------------------------------------------.
 * |  Tab   |  Q  |  W  |  E  |  R  |  T  |  Y  |  U  |  I  |  O  |  P  |  [  |  ]  |   \   |
 * |----------------------------------------------------------------------------------------+
 * |         |  A  |  S  |  D  |  F  |  G  |  H  |  J  |  K  |  L  |  ;  |  '  |    Enter   |
 * |----------------------------------------------------------------------------------------+
 * |   Shift   |  Z  |  X  |  C  |  V  |  B  |  N  |  M  |  ,  |  .  |  /  |      Shift     |
 * `----------------------------------------------------------------------------------------'
 */

 /* Caps Lock layer
 * ,----------------------------------------------------------------------------------------.
 * |        |     |     |     |     |     |     |   |    |   |  |     |     |       |
 * |----------------------------------------------------------------------------------------+
 * |         |     |     |     |     |     |     | Left| Down| Up | Right |     |            |
 * |----------------------------------------------------------------------------------------+
 * |           |     |     |     |     |     |     |     |     |     |     |                |
 * `----------------------------------------------------------------------------------------'
 */

; CapsLock + { h, j, k, l } = { Left, Down, Up, Right }
CapsLock & h::Left
CapsLock & l::Right
CapsLock & k::Up
CapsLock & j::Down

; CapsLock + { q, w, e, r, t} = { {, }, [, ], | }
CapsLock & q::Send "{{}"
CapsLock & w::Send "{}}"
CapsLock & e::Send "["
CapsLock & r::Send "]"
CapsLock & t::Send "|"

; CapsLock + { u, i, o, p } = { +, =, -, _ }
CapsLock & u::Send "{+}"
CapsLock & i::Send "="
CapsLock & o::Send "-"
CapsLock & p::Send "_"

; CapsLock + { ;, ', / } = { ~, `, \}
CapsLock & `;::Send "~"
CapsLock & '::Send "{U+0060}"
CapsLock & /::Send "\"

; { [, ] } = { BackSpace }
[::1
]::2
1::Send "{BS}"
2::Send "{BS}"

Return
