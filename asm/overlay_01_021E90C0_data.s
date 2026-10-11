#include "constants/sndseq.h"
#include "constants/moves.h"
#include "constants/std_script.h"
#include "constants/species.h"
#include "constants/sprites.h"
#include "constants/maps.h"
#include "constants/mmodel.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0096_D31R0201.h"
#include "msgdata/msg/msg_0066_D23R0102.h"
	.include "asm/macros.inc"
	.include "overlay_01_021E90C0.inc"
	.include "global.inc"
	.public ov01_02206408
	.public ov01_02206418
	.public ov01_02206428
	.public ov01_02206450
	.public ov01_02209820
	.public ov01_02209838
	.public ov01_02209850
	.public ov01_02209868
	.public ov01_02209880

	.text




































	.rodata

ov01_02206408: ; 0x02206408
	.byte 0x0B, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00

ov01_02206418: ; 0x02206418
	.byte 0x0B, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00

ov01_02206428: ; 0x02206428
	.byte 0x82, 0xE8, 0xC1, 0x05, 0x00, 0x00, 0x00, 0x00, 0xC3, 0xD4, 0x05, 0x00, 0x43, 0xC0, 0xFD, 0xFF, 0xC1, 0xAE, 0x29, 0x00
	.byte 0x62, 0xE2, 0xC1, 0x05, 0x00, 0x00, 0x00, 0x00, 0x9B, 0x20, 0x05, 0x00, 0xDA, 0x6B, 0xFC, 0xFF, 0xC1, 0x7E, 0x2C, 0x00

ov01_02206450:
	.word ov01_02209820
	.word ov01_02209850
	.word ov01_02209838
	.word ov01_02209868
	.word ov01_02209880

	.data

	.balign 4, 0
ov01_02209820:
	.asciz "data/area00light.txt"
	.balign 4, 0
ov01_02209838:
	.asciz "data/area02light.txt"
	.balign 4, 0
ov01_02209850:
	.asciz "data/area01light.txt"
	.balign 4, 0
ov01_02209868:
	.asciz "data/dun20_01light.txt"
	.balign 4, 0
ov01_02209880:
	.asciz "data/dun20_02light.txt"
