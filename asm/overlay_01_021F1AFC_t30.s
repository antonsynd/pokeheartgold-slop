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
	.include "overlay_01_021F1AFC.inc"
	.include "global.inc"
	.public ov01_021F26CC
	.public ov01_021F2700

	.text

	.text
	thumb_func_start ov01_021F26CC
ov01_021F26CC: ; 0x021F26CC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov02_02250780
	cmp r0, #0
	beq _021F26EE
	mov r0, #0x42
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl FieldSystem_UnkSub108_AddMonMood
	mov r1, #2
	b _021F26F0
_021F26EE:
	mov r1, #1
_021F26F0:
	ldr r0, [r4, #0xc]
	bl ov02_022507B4
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov01_021F26CC

	thumb_func_start ov01_021F2700
ov01_021F2700: ; 0x021F2700
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #5
	mov r2, #0
	bl GetMonData
	add r4, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	add r1, r0, #0
	lsl r0, r4, #0x10
	lsl r1, r1, #0x18
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	bl PlayCry
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F2700

