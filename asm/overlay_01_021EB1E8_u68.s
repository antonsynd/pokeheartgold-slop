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
	.include "overlay_01_021EB1E8.inc"
	.include "global.inc"
	.public ov01_021EDAB4

	.text

	.text
	thumb_func_start ov01_021EDAB4
ov01_021EDAB4: ; 0x021EDAB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021EDADC ; =0x00000F5C
	add r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021EDAC6
	bl GF_AssertFail
_021EDAC6:
	ldr r1, _021EDADC ; =0x00000F5C
	mov r0, #1
	str r0, [r5, r1]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	add r1, r1, #4
	strh r0, [r5, r1]
	bl PlaySE
	pop {r3, r4, r5, pc}
	nop
_021EDADC: .word 0x00000F5C
	thumb_func_end ov01_021EDAB4

