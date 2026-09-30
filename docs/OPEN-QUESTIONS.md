# Open questions

What is not solved, said as it is.

- **The route has not been walked.** The gates come from the table at
  `p09:A269` and from the lists of things; we have not gone through a torii
  in openMSX.
- **Area `0x18`.** Gates 14-17 lead to it, and it is in none of the 24-area
  tables. No list of things places those gates.
- **How the game ends.** The stage-6 room asks for five heart jewels (see
  Findings): where they are and what happens when you carry them has not
  been measured. Rooms 3, 5 and 6 send you back to stages already
  crossed; what decides the ending has not been read yet (state 12 is set by
  `0xC4DA`, written by ENDDEMOGAMITAINA and by someone else).
- **METALSLAVE**: it was typed while Gao was dying and could not be measured;
  the code (`p06:B92E`) sets energy `0xC845` to 200.
- **The STOP key** with Q*bert or the Game Master next to it: from the code,
  not tried.
- **The enemies' colour.** The sprites of the sets are in two tones: the
  colour is set by the code of each type and has not been worked out type by
  type.
- **The unused version of five bosses** (`p07:7457`, `p08:82B3`): whether
  it is an earlier drawing, and what the other two figures were.
- **Items 18 to 32** are drawn with nearly empty icons from the sheet of the
  dumped stages; their icons may be uploaded at another moment.
