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
	.public ov01_021F7CE4
	.public ov01_021F7DA8
	.extern ov01_021F8C88

	.text

	.text
	thumb_func_start ov01_021F7CE4
ov01_021F7CE4: ; 0x021F7CE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0205F40C
	add r6, r0, #0
	add r0, r5, #0
	ldr r4, [r6, #4]
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F7DA2
	cmp r4, #0
	beq _021F7DA2
	add r0, r5, #0
	bl MapObject_GetFacingDirection
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0205F330
	cmp r0, #0
	bne _021F7D56
	cmp r7, #1
	bls _021F7D1C
	mov r0, #1
	str r0, [sp, #4]
	b _021F7D20
_021F7D1C:
	mov r0, #0
	str r0, [sp, #4]
_021F7D20:
	add r0, r4, #0
	bl sub_02023EF4
	ldr r1, [sp, #4]
	cmp r1, r0
	bne _021F7D34
	mov r0, #3
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _021F7D4C
_021F7D34:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F04
_021F7D4C:
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F04
	b _021F7D88
_021F7D56:
	cmp r7, #1
	bls _021F7D60
	mov r0, #1
	str r0, [sp]
	b _021F7D64
_021F7D60:
	mov r0, #0
	str r0, [sp]
_021F7D64:
	add r0, r4, #0
	bl sub_02023EF4
	ldr r1, [sp]
	cmp r1, r0
	beq _021F7D7E
	add r0, r4, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
_021F7D7E:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
_021F7D88:
	strb r7, [r6, #2]
	add r0, r5, #0
	bl sub_0205F330
	strb r0, [r6, #3]
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FA3E8
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F8C88
_021F7DA2:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F7CE4

	thumb_func_start ov01_021F7DA8
ov01_021F7DA8: ; 0x021F7DA8
	push {r3, r4, r5, lr}
	mov r1, #0x14
	add r5, r0, #0
	bl sub_0205F3E8
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	strb r0, [r4]
	add r0, r5, #0
	add r1, r4, #4
	bl ov01_021F9510
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F7DCE
	add r0, r5, #0
	bl sub_0205F484
_021F7DCE:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F7DA8

