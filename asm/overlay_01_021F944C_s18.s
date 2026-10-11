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
	.public ov01_021F97BC

	.text

	.text
	thumb_func_start ov01_021F97BC
ov01_021F97BC: ; 0x021F97BC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl MapObjectManager_GetObjectCount
	add r4, r0, #0
	add r0, r7, #0
	bl MapObjectManager_GetObjects2
	ldr r7, _021F9804 ; =0x0000FFFF
	str r0, [sp]
_021F97D4:
	ldr r0, [sp]
	cmp r0, r5
	beq _021F97F4
	bl MapObject_CheckActive
	cmp r0, #1
	bne _021F97F4
	ldr r0, [sp]
	bl MapObject_GetSpriteID
	cmp r0, r7
	beq _021F97F4
	cmp r0, r6
	bne _021F97F4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F97F4:
	add r0, sp, #0
	bl MapObjectArray_NextObject
	sub r4, r4, #1
	bne _021F97D4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F9804: .word 0x0000FFFF
	thumb_func_end ov01_021F97BC

