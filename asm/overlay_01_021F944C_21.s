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
	.include "overlay_01_021F944C.inc"
	.include "global.inc"
	.public ov01_021F98CC
	.public ov01_021F9A44
	.public ov01_021F9C78
	.public ov01_021FA1E4

	.text

	thumb_func_start ov01_021F9A44
ov01_021F9A44: ; 0x021F9A44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021FA1E4
	ldr r0, _021F9A6C ; =ov01_022072CC
	add r1, r5, #0
	str r0, [sp]
	add r1, #0xfc
	ldr r1, [r1]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0xff
	bl ov01_021F98CC
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F9C78
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F9A6C: .word ov01_022072CC
	thumb_func_end ov01_021F9A44

