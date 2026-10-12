#include "constants/sndseq.h"
#include "constants/species.h"
#include "constants/maps.h"
#include "constants/pokemon.h"
#include "constants/flags.h"
#include "constants/vars.h"
#include "constants/items.h"
#include "constants/std_script.h"
#include "fielddata/script/scr_seq/event_D24R0204.h"
#include "constants/field_move_response.h"
	.include "asm/macros.inc"
	.include "unk_0205FD20.inc"
	.include "global.inc"
	.public sub_02060CA8

	.text

	.text
	thumb_func_start sub_02060CA8
sub_02060CA8: ; 0x02060CA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl MapObject_GetManager
	add r7, r0, #0
	bl MapObjectManager_GetObjects2
	str r0, [sp, #4]
	add r0, r7, #0
	bl MapObjectManager_GetObjectCount
	add r7, r0, #0
_02060CC8:
	ldr r0, [sp, #4]
	ldr r1, [sp]
	cmp r0, r1
	beq _02060D84
	mov r1, #1
	bl MapObject_GetFlagsBitsMask
	cmp r0, #0
	beq _02060D84
	ldr r0, [sp, #4]
	bl MapObject_GetXCoord
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	bl MapObject_GetZCoord
	ldr r1, [sp, #0xc]
	str r0, [sp, #8]
	cmp r1, r5
	bne _02060D0A
	cmp r0, r6
	bne _02060D0A
	ldr r0, [sp, #4]
	bl MapObject_GetYCoord
	sub r0, r0, r4
	bpl _02060D00
	neg r0, r0
_02060D00:
	cmp r0, #2
	bge _02060D0A
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02060D0A:
	ldr r0, [sp, #4]
	bl MapObject_GetPreviousXCoord
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	bl MapObject_GetPreviousZCoord
	ldr r1, [sp, #0xc]
	str r0, [sp, #8]
	cmp r1, r5
	bne _02060D3A
	cmp r0, r6
	bne _02060D3A
	ldr r0, [sp, #4]
	bl MapObject_GetYCoord
	sub r0, r0, r4
	bpl _02060D30
	neg r0, r0
_02060D30:
	cmp r0, #2
	bge _02060D3A
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02060D3A:
	ldr r0, [sp, #4]
	bl MapObject_GetID
	cmp r0, #0xfd
	bne _02060D84
	ldr r0, [sp, #4]
	bl ov01_022055DC
	cmp r0, #0
	beq _02060D84
	ldr r0, [sp, #4]
	bl MapObject_CheckVisible
	cmp r0, #0
	bne _02060D84
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov01_02205664
	ldr r0, [sp, #0xc]
	cmp r0, r5
	bne _02060D84
	ldr r0, [sp, #8]
	cmp r0, r6
	bne _02060D84
	ldr r0, [sp, #4]
	bl MapObject_GetYCoord
	sub r0, r0, r4
	bpl _02060D7A
	neg r0, r0
_02060D7A:
	cmp r0, #2
	bge _02060D84
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02060D84:
	add r0, sp, #4
	bl MapObjectArray_NextObject
	sub r7, r7, #1
	bne _02060CC8
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02060CA8

