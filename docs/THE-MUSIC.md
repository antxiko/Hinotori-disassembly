# The music

Everything you hear here comes from running the cartridge's own sound engine (`el_sonido_de_un_cuadro`, p14:9497, and the request routine at p14:9400; the interrupt calls it at p00:4073 with banks 14 and 15) on an emulated Z80, frame by frame at 60 per second, just as the game calls it. What the engine writes to the PSG is turned into sound with an AY-3-8910 (`tools/musica.py`). Each MP3 is the whole piece up to where it starts again, plus 8 seconds of the repeat fading out; those that do not repeat end where the engine ends.

## Checked against openMSX

The PSG writes have been compared frame by frame with those of openMSX (C-BIOS MSX2 japonés). In every frame the PSG ends up the same:

- track 0x37, its first 157 frames;
- track 0x6A, 166 frames, as the game asks for it.

The timbre is not checked: it is a textbook AY-3-8910, not a recording of the emulator. The probes are `tools/omsx_psg.tcl` and `tools/coteja_psg.py`.

## How a piece is asked for

The routine at p14:9400 takes the number in A: 0x00 to 0x36 are one-channel effects and from 0x37 up there is more music; the game computes the number, so all the tracks are «in the table». There are four 32-byte channels from 0xC010 and 0xC0F0 holds the copy of the PSG mixer, which start-up leaves at 0xB8. Tracks that sound like another are published once; nearly silent ones are left out, and those that last over 75 seconds without starting again are cut at 75. Only tracks 0x37 and 0x6A have been checked against openMSX.

## The tunes

**Track 0x37** (0x37)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; is cut at 75 s (the piece goes on).

<audio controls preload="none" src="audio/musica_37.mp3?v=dda52ada"></audio>

**Track 0x38** (0x38)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; is cut at 75 s (the piece goes on).

<audio controls preload="none" src="audio/musica_38.mp3?v=71214c7f"></audio>

**Track 0x39** (0x39)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; is cut at 75 s (the piece goes on).

<audio controls preload="none" src="audio/musica_39.mp3?v=dcc4a35e"></audio>

**Track 0x3A** (0x3A)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 35.6 s and starts again at second 5.7.

<audio controls preload="none" src="audio/musica_3A.mp3?v=cbc6169b"></audio>

**Track 0x3B** (0x3B)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; is cut at 75 s (the piece goes on).

<audio controls preload="none" src="audio/musica_3B.mp3?v=9fe8956c"></audio>

**Track 0x3C** (0x3C)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; is cut at 75 s (the piece goes on).

<audio controls preload="none" src="audio/musica_3C.mp3?v=6cea6406"></audio>

**Track 0x3D** (0x3D)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 49.5 s and starts again at second 23.4.

<audio controls preload="none" src="audio/musica_3D.mp3?v=e7a5a62b"></audio>

**Track 0x3E** (0x3E)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; is cut at 75 s (the piece goes on).

<audio controls preload="none" src="audio/musica_3E.mp3?v=03e74b06"></audio>

**Track 0x3F** (0x3F)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; is cut at 75 s (the piece goes on).

<audio controls preload="none" src="audio/musica_3F.mp3?v=00b9a0cb"></audio>

**Track 0x40** (0x40)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 45.2 s and starts again at second 32.4.

<audio controls preload="none" src="audio/musica_40.mp3?v=0794f642"></audio>

**Track 0x41** (0x41)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; is cut at 75 s (the piece goes on).

<audio controls preload="none" src="audio/musica_41.mp3?v=46dd6e41"></audio>

**Track 0x42** (0x42)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; is cut at 75 s (the piece goes on).

<audio controls preload="none" src="audio/musica_42.mp3?v=9127a853"></audio>

**Track 0x43** (0x43)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 17.5 s and starts again at second 7.1.

<audio controls preload="none" src="audio/musica_43.mp3?v=6f835d39"></audio>

**Track 0x44** (0x44)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; is cut at 75 s (the piece goes on).

<audio controls preload="none" src="audio/musica_44.mp3?v=29484d44"></audio>

**Track 0x45** (0x45)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; is cut at 75 s (the piece goes on).

<audio controls preload="none" src="audio/musica_45.mp3?v=b7c060bc"></audio>

**Track 0x46** (0x46)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 27.4 s and starts again at second 18.8.

<audio controls preload="none" src="audio/musica_46.mp3?v=8ae6fe48"></audio>

**Track 0x47** (0x47)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 27.4 s and starts again at second 18.8.

<audio controls preload="none" src="audio/musica_47.mp3?v=f3810872"></audio>

**Track 0x48** (0x48)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 26.7 s and starts again at second 18.1.

<audio controls preload="none" src="audio/musica_48.mp3?v=31380c8b"></audio>

**Track 0x49** (0x49)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 9.1 s and starts again at second 0.6.

<audio controls preload="none" src="audio/musica_49.mp3?v=039c890a"></audio>

**Track 0x4A** (0x4A)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; is cut at 75 s (the piece goes on).

<audio controls preload="none" src="audio/musica_4A.mp3?v=687a8bc8"></audio>

**Track 0x4B** (0x4B)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; is cut at 75 s (the piece goes on).

<audio controls preload="none" src="audio/musica_4B.mp3?v=afd118ca"></audio>

**Track 0x53** (0x53)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 3.4 s.

<audio controls preload="none" src="audio/musica_53.mp3?v=847db45c"></audio>

**Track 0x54** (0x54)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 3.4 s.

<audio controls preload="none" src="audio/musica_54.mp3?v=d5e92d6c"></audio>

**Track 0x55** (0x55)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 3.4 s.

<audio controls preload="none" src="audio/musica_55.mp3?v=92f911e7"></audio>

**Track 0x56** (0x56)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 3.4 s.

<audio controls preload="none" src="audio/musica_56.mp3?v=01d186b6"></audio>

**Track 0x57** (0x57)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 3.4 s.

<audio controls preload="none" src="audio/musica_57.mp3?v=2924f079"></audio>

**Track 0x5F** (0x5F)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 8.8 s.

<audio controls preload="none" src="audio/musica_5F.mp3?v=0ecc3e92"></audio>

**Track 0x60** (0x60)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 8.8 s.

<audio controls preload="none" src="audio/musica_60.mp3?v=ebd9250f"></audio>

**Track 0x61** (0x61)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 8.8 s.

<audio controls preload="none" src="audio/musica_61.mp3?v=688316d3"></audio>

**Track 0x62** (0x62)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 8.8 s.

<audio controls preload="none" src="audio/musica_62.mp3?v=0a66ce83"></audio>

**Track 0x63** (0x63)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 8.8 s.

<audio controls preload="none" src="audio/musica_63.mp3?v=0dbc7c3a"></audio>

**Track 0x65** (0x65)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 49.1 s and starts again at second 14.9.

<audio controls preload="none" src="audio/musica_65.mp3?v=3f25aaaf"></audio>

**Track 0x66** (0x66)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 49.1 s and starts again at second 14.9.

<audio controls preload="none" src="audio/musica_66.mp3?v=46501f18"></audio>

**Track 0x67** (0x67)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 49.1 s and starts again at second 14.9.

<audio controls preload="none" src="audio/musica_67.mp3?v=81659d7f"></audio>

**Track 0x68** (0x68)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 49.1 s and starts again at second 14.9.

<audio controls preload="none" src="audio/musica_68.mp3?v=c8170681"></audio>

**Track 0x69** (0x69)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 36.9 s and starts again at second 2.8.

<audio controls preload="none" src="audio/musica_69.mp3?v=1f57af11"></audio>

**Track 0x6B** (0x6B)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 5.2 s.

<audio controls preload="none" src="audio/musica_6B.mp3?v=cb560d00"></audio>

**Track 0x6C** (0x6C)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 5.2 s.

<audio controls preload="none" src="audio/musica_6C.mp3?v=d4c262c2"></audio>

**Track 0x6D** (0x6D)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 5.2 s.

<audio controls preload="none" src="audio/musica_6D.mp3?v=3ba397ab"></audio>

**Track 0x6E** (0x6E)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 5.2 s.

<audio controls preload="none" src="audio/musica_6E.mp3?v=cf0f32ce"></audio>

**Track 0x6F** (0x6F)

Asked for by ninguna llamada directa: sale de la tabla de pistas por un número calculado; lasts 5.2 s.

<audio controls preload="none" src="audio/musica_6F.mp3?v=3155996f"></audio>
