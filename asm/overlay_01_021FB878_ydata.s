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
	.include "overlay_01_021FB878.inc"
	.include "global.inc"
	.public ov01_02208BA0
	.public ov01_02208BB0
	.public ov01_02209A88
	.public ov01_02209AB4

	.text



































	.rodata

ov01_02208BA0: ; 0x02208BA0
	.byte 0x00, 0x00, 0x84, 0x10, 0x84, 0x10, 0x84, 0x10, 0x84, 0x10, 0x84, 0x10, 0x84, 0x10, 0x84, 0x10

ov01_02208BB0: ; 0x02208BB0
	.byte 0x84, 0x10, 0x84, 0x10, 0x84, 0x10, 0x84, 0x10, 0x84, 0x10, 0x84, 0x10, 0x84, 0x10, 0x84, 0x10

	.data

	.balign 4, 0
ov01_02209A88: ; 0x02209A88
	.asciz "fielddata/build_model/bm_field_matshp.dat"

	.balign 4, 0
ov01_02209AB4: ; 0x02209AB4
	.asciz "fielddata/build_model/bm_room_matshp.dat"
