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
	.public ov01_021F8A4C
	.public ov01_021F8AB0
	.public ov01_021F8B30
	.extern ov01_021F8BE0
	.extern ov01_021F8C88
	.extern ov01_022089CC

	.text

	.text
	thumb_func_start ov01_021F8A4C
ov01_021F8A4C: ; 0x021F8A4C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0205F40C
	add r4, r0, #0
	add r0, r6, #0
	ldr r5, [r4, #4]
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F8AAE
	cmp r5, #0
	beq _021F8AAE
	add r0, r6, #0
	bl MapObject_GetFacingDirection
	mov r1, #0
	ldrsb r1, [r4, r1]
	add r7, r0, #0
	cmp r7, r1
	beq _021F8A8A
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
_021F8A8A:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
	add r0, r6, #0
	add r1, r5, #0
	bl ov01_021FA3E8
	add r0, r6, #0
	add r1, r5, #0
	bl ov01_021F8C88
	add r0, r6, #0
	strb r7, [r4]
	bl sub_0205F330
	strb r0, [r4, #2]
_021F8AAE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F8A4C

	thumb_func_start ov01_021F8AB0
ov01_021F8AB0: ; 0x021F8AB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0205F40C
	add r6, r0, #0
	add r0, r5, #0
	ldr r4, [r6, #4]
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F8B2C
	cmp r4, #0
	beq _021F8B2C
	add r0, r5, #0
	bl MapObject_GetFacingDirection
	str r0, [sp]
	add r0, r5, #0
	bl sub_0205F330
	add r7, r0, #0
	mov r0, #2
	ldrsb r0, [r6, r0]
	cmp r7, r0
	beq _021F8B00
	cmp r7, #0
	bne _021F8AF0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023EE0
	b _021F8AF8
_021F8AF0:
	add r0, r4, #0
	mov r1, #1
	bl sub_02023EE0
_021F8AF8:
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
_021F8B00:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
	add r0, r5, #0
	bl MapObject_GetFacingVector
	mov r1, #2
	lsl r1, r1, #0xa
	str r1, [r0, #8]
	ldr r0, [sp]
	add r1, r4, #0
	strb r0, [r6]
	add r0, r5, #0
	strb r7, [r6, #2]
	bl ov01_021FA3E8
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F8C88
_021F8B2C:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F8AB0

	thumb_func_start ov01_021F8B30
ov01_021F8B30: ; 0x021F8B30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0205F40C
	ldr r7, [r0, #4]
	str r0, [sp]
	cmp r7, #0
	beq _021F8B9E
	add r0, r4, #0
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F8B9E
	add r0, r4, #0
	bl MapObject_GetFacingDirection
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0205F330
	add r5, r0, #0
	cmp r5, #1
	blt _021F8B64
	bl GF_AssertFail
_021F8B64:
	lsl r6, r5, #2
	ldr r5, _021F8BA4 ; =ov01_022089CC
	ldr r2, [sp]
	ldr r3, [sp, #4]
	ldr r5, [r5, r6]
	add r0, r4, #0
	add r1, r7, #0
	blx r5
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021F8BE0
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strb r1, [r0]
	add r0, r4, #0
	bl sub_0205F330
	ldr r1, [sp]
	strb r0, [r1, #2]
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021FA3E8
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021F8C88
_021F8B9E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F8BA4: .word ov01_022089CC
	thumb_func_end ov01_021F8B30

