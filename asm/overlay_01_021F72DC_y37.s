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
	.public ov01_021F8164
	.extern ov01_021F8C64
	.extern ov01_022089D8

	.text

	.text
	thumb_func_start ov01_021F8164
ov01_021F8164: ; 0x021F8164
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021F8192
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
	b _021F81A8
_021F8192:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #9
	bne _021F81A8
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r5, #0
	bl ov01_021F8C64
_021F81A8:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #7
	beq _021F81B4
	mov r0, #0
	strb r0, [r4, #1]
_021F81B4:
	add r0, r6, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _021F81F2
	ldr r6, _021F81F8 ; =ov01_022089D8
	add r3, sp, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #1
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
	bne _021F81F2
	mov r0, #0
	strb r0, [r4, #1]
_021F81F2:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021F81F8: .word ov01_022089D8
	thumb_func_end ov01_021F8164

