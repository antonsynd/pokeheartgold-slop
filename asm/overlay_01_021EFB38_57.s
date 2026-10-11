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
	.include "overlay_01_021EFB38.inc"
	.include "global.inc"
	.public ov01_021F0EAC
	.extern ov01_02209B64

	.text

	.text
	thumb_func_start ov01_021F0EAC
ov01_021F0EAC: ; 0x021F0EAC
	push {r3, lr}
	ldr r0, _021F0EBC ; =ov01_02209B64
	ldr r0, [r0]
	cmp r0, #0
	beq _021F0EBA
	bl sub_0201543C
_021F0EBA:
	pop {r3, pc}
	.balign 4, 0
_021F0EBC: .word ov01_02209B64
	thumb_func_end ov01_021F0EAC

