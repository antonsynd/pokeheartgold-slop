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
	.public ov01_021F9FCC
	.public ov01_021FA01C
	.public ov01_021FA094
	.extern ov01_021FA28C
	.extern ov01_021FA2A0

	.text

	.text
	thumb_func_start ov01_021F9FCC
ov01_021F9FCC: ; 0x021F9FCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0
	add r4, r2, #0
	str r1, [sp, #4]
	str r1, [sp]
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	add r6, r0, #0
	bl MapObjectManager_GetNextObjectWithFlagFromIndex
	cmp r0, #1
	bne _021FA016
	add r7, sp, #0
_021F9FEC:
	cmp r4, #0
	beq _021F9FF6
	ldr r0, [sp]
	cmp r4, r0
	beq _021FA006
_021F9FF6:
	ldr r0, [sp]
	bl MapObject_GetSpriteID
	cmp r0, r5
	bne _021FA006
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021FA006:
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #4
	mov r3, #1
	bl MapObjectManager_GetNextObjectWithFlagFromIndex
	cmp r0, #1
	beq _021F9FEC
_021FA016:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F9FCC

	thumb_func_start ov01_021FA01C
ov01_021FA01C: ; 0x021FA01C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	mov r1, #0
	add r5, r2, #0
	str r1, [sp, #4]
	str r1, [sp]
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	add r7, r0, #0
	bl MapObjectManager_GetNextObjectWithFlagFromIndex
	cmp r0, #1
	bne _021FA088
_021FA03A:
	cmp r5, #0
	beq _021FA044
	ldr r0, [sp]
	cmp r5, r0
	beq _021FA078
_021FA044:
	ldr r0, [sp]
	bl MapObject_GetSpriteID
	add r4, r0, #0
	ldr r0, _021FA090 ; =0x0000FFFF
	cmp r4, r0
	beq _021FA078
	ldr r0, [sp]
	bl ov01_021F9318
	ldrh r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _021FA078
	ldr r0, _021FA090 ; =0x0000FFFF
	cmp r4, r0
	beq _021FA078
	add r0, r4, #0
	bl ov01_021FA28C
	cmp r6, r0
	bne _021FA078
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021FA078:
	add r0, r7, #0
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl MapObjectManager_GetNextObjectWithFlagFromIndex
	cmp r0, #1
	beq _021FA03A
_021FA088:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FA090: .word 0x0000FFFF
	thumb_func_end ov01_021FA01C

	thumb_func_start ov01_021FA094
ov01_021FA094: ; 0x021FA094
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	mov r1, #0
	add r5, r2, #0
	str r1, [sp, #4]
	str r1, [sp]
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	add r7, r0, #0
	bl MapObjectManager_GetNextObjectWithFlagFromIndex
	cmp r0, #1
	bne _021FA0FE
_021FA0B2:
	cmp r5, #0
	beq _021FA0BC
	ldr r0, [sp]
	cmp r0, r5
	beq _021FA0EE
_021FA0BC:
	ldr r0, _021FA104 ; =0x0000FFFF
	cmp r4, r0
	beq _021FA0EE
	ldr r0, [sp]
	bl ov01_021F9318
	ldrh r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _021FA0EE
	ldr r0, [sp]
	bl MapObject_GetSpriteID
	ldr r1, _021FA104 ; =0x0000FFFF
	add r4, r0, #0
	cmp r4, r1
	beq _021FA0EE
	bl ov01_021FA2A0
	cmp r6, r0
	bne _021FA0EE
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021FA0EE:
	add r0, r7, #0
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl MapObjectManager_GetNextObjectWithFlagFromIndex
	cmp r0, #1
	beq _021FA0B2
_021FA0FE:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FA104: .word 0x0000FFFF
	thumb_func_end ov01_021FA094

