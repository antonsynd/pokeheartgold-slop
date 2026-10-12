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
	.public ov01_021F80C4
	.extern ov01_021F8C64
	.extern ov01_02208A48

	.text

	.text
	thumb_func_start ov01_021F80C4
ov01_021F80C4: ; 0x021F80C4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021F80F2
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
	mov r0, #0
	strb r0, [r4, #1]
	b _021F8108
_021F80F2:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #9
	bne _021F8108
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r5, #0
	bl ov01_021F8C64
_021F8108:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #6
	beq _021F8114
	mov r0, #0
	strb r0, [r4, #1]
_021F8114:
	add r0, r6, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _021F815A
	ldr r6, _021F8160 ; =ov01_02208A48
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #1
	str r0, [r3]
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_02023F04
	mov r0, #1
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #1]
	ldrsb r0, [r4, r0]
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _021F815A
	mov r0, #0
	strb r0, [r4, #1]
_021F815A:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_021F8160: .word ov01_02208A48
	thumb_func_end ov01_021F80C4

