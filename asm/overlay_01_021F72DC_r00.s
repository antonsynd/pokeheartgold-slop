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
	.include "overlay_01_021F72DC.inc"
	.include "global.inc"
	.public ov01_021F72DC
	.public ov01_021F73CC

	.text

	.text
	thumb_func_start ov01_021F72DC
ov01_021F72DC: ; 0x021F72DC
	push {r4, lr}
	add r4, r0, #0
	bl MapObject_GetSpriteID
	cmp r0, #0xf8
	bgt _021F7356
	bge _021F737E
	cmp r0, #0x62
	bgt _021F7308
	cmp r0, #0x61
	blt _021F72FA
	beq _021F737E
	cmp r0, #0x62
	beq _021F737E
	b _021F7388
_021F72FA:
	cmp r0, #0
	bgt _021F7302
	beq _021F737E
	b _021F7388
_021F7302:
	cmp r0, #0x15
	beq _021F737E
	b _021F7388
_021F7308:
	cmp r0, #0xb0
	bgt _021F7310
	beq _021F737E
	b _021F7388
_021F7310:
	add r1, r0, #0
	sub r1, #0xb1
	cmp r1, #0x18
	bhi _021F7388
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F7324: ; jump table
	.short _021F737E - _021F7324 - 2 ; case 0
	.short _021F737E - _021F7324 - 2 ; case 1
	.short _021F737E - _021F7324 - 2 ; case 2
	.short _021F737E - _021F7324 - 2 ; case 3
	.short _021F737E - _021F7324 - 2 ; case 4
	.short _021F7388 - _021F7324 - 2 ; case 5
	.short _021F7388 - _021F7324 - 2 ; case 6
	.short _021F7388 - _021F7324 - 2 ; case 7
	.short _021F7388 - _021F7324 - 2 ; case 8
	.short _021F7388 - _021F7324 - 2 ; case 9
	.short _021F7388 - _021F7324 - 2 ; case 10
	.short _021F737E - _021F7324 - 2 ; case 11
	.short _021F737E - _021F7324 - 2 ; case 12
	.short _021F7388 - _021F7324 - 2 ; case 13
	.short _021F7388 - _021F7324 - 2 ; case 14
	.short _021F7388 - _021F7324 - 2 ; case 15
	.short _021F7388 - _021F7324 - 2 ; case 16
	.short _021F7388 - _021F7324 - 2 ; case 17
	.short _021F7388 - _021F7324 - 2 ; case 18
	.short _021F737E - _021F7324 - 2 ; case 19
	.short _021F737E - _021F7324 - 2 ; case 20
	.short _021F737E - _021F7324 - 2 ; case 21
	.short _021F737E - _021F7324 - 2 ; case 22
	.short _021F737E - _021F7324 - 2 ; case 23
	.short _021F737E - _021F7324 - 2 ; case 24
_021F7356:
	ldr r2, _021F73C0 ; =0x00000103
	cmp r0, r2
	bgt _021F736E
	bge _021F737E
	cmp r0, #0xf9
	bgt _021F7366
	beq _021F737E
	b _021F7388
_021F7366:
	sub r1, r2, #1
	cmp r0, r1
	beq _021F737E
	b _021F7388
_021F736E:
	add r1, r2, #1
	cmp r0, r1
	bgt _021F7378
	beq _021F737E
	b _021F7388
_021F7378:
	add r1, r2, #2
	cmp r0, r1
	bne _021F7388
_021F737E:
	add r0, r4, #0
	bl sub_0205F40C
	ldr r0, [r0, #4]
	pop {r4, pc}
_021F7388:
	mov r1, #0x6b
	lsl r1, r1, #2
	cmp r0, r1
	blt _021F73A0
	ldr r1, _021F73C4 ; =0x000003E1
	cmp r0, r1
	bgt _021F73A0
	add r0, r4, #0
	bl sub_0205F40C
	ldr r0, [r0]
	pop {r4, pc}
_021F73A0:
	ldr r1, _021F73C8 ; =0x00000106
	cmp r0, r1
	blt _021F73B4
	add r1, r1, #7
	cmp r0, r1
	bgt _021F73B4
	add r0, r4, #0
	bl sub_02064084
	pop {r4, pc}
_021F73B4:
	add r0, r4, #0
	bl sub_0205F40C
	ldr r0, [r0, #4]
	pop {r4, pc}
	nop
_021F73C0: .word 0x00000103
_021F73C4: .word 0x000003E1
_021F73C8: .word 0x00000106
	thumb_func_end ov01_021F72DC

	thumb_func_start ov01_021F73CC
ov01_021F73CC: ; 0x021F73CC
	push {r3, r4, r5, lr}
	mov r1, #0x14
	add r5, r0, #0
	bl sub_0205F3E8
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	strb r0, [r4, #2]
	add r0, r5, #0
	add r1, r4, #4
	bl ov01_021F9510
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F73F2
	add r0, r5, #0
	bl sub_0205F484
_021F73F2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F73CC

