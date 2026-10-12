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
	.public ov01_021F7B14
	.extern ov01_02208A08

	.text

	.text
	thumb_func_start ov01_021F7B14
ov01_021F7B14: ; 0x021F7B14
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #2
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021F7B40
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
	mov r0, #0
	strh r0, [r4]
_021F7B40:
	mov r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #7
	beq _021F7B4C
	mov r0, #0
	strh r0, [r4]
_021F7B4C:
	add r0, r6, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _021F7B88
	ldr r6, _021F7B8C ; =ov01_02208A08
	add r3, sp, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #0
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_02023F04
	mov r0, #0
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4]
	ldrsh r1, [r4, r0]
	lsl r2, r1, #2
	add r1, sp, #0
	ldr r1, [r1, r2]
	cmp r1, #0
	bne _021F7B88
	strh r0, [r4]
_021F7B88:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F7B8C: .word ov01_02208A08
	thumb_func_end ov01_021F7B14

