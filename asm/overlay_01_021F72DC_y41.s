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
	.public ov01_021F8374
	.public ov01_021F8400
	.extern ov01_02208A38

	.text

	.text
	thumb_func_start ov01_021F8374
ov01_021F8374: ; 0x021F8374
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r3, #0
	add r4, r2, #0
	add r2, sp, #0
	ldr r3, _021F83FC ; =ov01_02208A38
	add r5, r1, #0
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	lsl r0, r6, #2
	ldr r1, [r7, r0]
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r6, r0
	beq _021F83B2
	add r0, r5, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
	ldrb r1, [r4, #3]
	mov r0, #1
	add sp, #0x10
	bic r1, r0
	strb r1, [r4, #3]
	pop {r3, r4, r5, r6, r7, pc}
_021F83B2:
	mov r2, #2
	ldrsb r0, [r4, r2]
	cmp r0, #0
	beq _021F83CA
	ldrb r1, [r4, #3]
	mov r0, #1
	add sp, #0x10
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #3]
	pop {r3, r4, r5, r6, r7, pc}
_021F83CA:
	ldrb r0, [r4, #3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021F83EE
	add r0, r5, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
	ldrb r1, [r4, #3]
	mov r0, #1
	add sp, #0x10
	bic r1, r0
	strb r1, [r4, #3]
	pop {r3, r4, r5, r6, r7, pc}
_021F83EE:
	add r0, r5, #0
	lsl r1, r2, #0xb
	bl sub_02023F04
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F83FC: .word ov01_02208A38
	thumb_func_end ov01_021F8374

	thumb_func_start ov01_021F8400
ov01_021F8400: ; 0x021F8400
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp]
	bl ov01_021FA464
	add r4, r0, #0
	mov r0, #0
	ldrsb r1, [r6, r0]
	ldr r0, [sp]
	cmp r0, r1
	bne _021F8424
	mov r0, #2
	ldrsb r0, [r6, r0]
	cmp r0, #0
	beq _021F8436
_021F8424:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
	b _021F8466
_021F8436:
	cmp r0, #0xa
	beq _021F844C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
	b _021F8466
_021F844C:
	add r0, r5, #0
	bl sub_02023EF4
	cmp r4, r0
	beq _021F8466
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
_021F8466:
	add r0, r7, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _021F847A
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xa
	bl sub_02023F04
_021F847A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F8400

