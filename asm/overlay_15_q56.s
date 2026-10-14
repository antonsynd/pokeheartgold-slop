#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FB3F0
	.extern ov15_021FAC2C
	.extern ov15_021FD774
	.extern ov15_021FFECC
	.extern ov15_02200528
	.extern ov15_02200529
	.extern ov15_0220052A
	.extern ov15_0220052B
	.extern ov15_02201468

	.text

	.text
	thumb_func_start ov15_021FB3F0
ov15_021FB3F0: ; 0x021FB3F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021FB4F8 ; =0x0000066C
	mov r2, #0x40
	ldr r1, [r5, r0]
	ldr r0, _021FB4FC ; =gSystem
	add r4, r1, #0
	ldr r0, [r0, #0x48]
	tst r2, r0
	beq _021FB40C
	ldr r0, _021FB500 ; =ov15_02200528
	lsl r2, r1, #2
	ldrb r4, [r0, r2]
	b _021FB434
_021FB40C:
	mov r2, #0x80
	tst r2, r0
	beq _021FB41A
	ldr r0, _021FB504 ; =ov15_02200529
	lsl r2, r1, #2
	ldrb r4, [r0, r2]
	b _021FB434
_021FB41A:
	mov r2, #0x20
	tst r2, r0
	beq _021FB428
	ldr r0, _021FB508 ; =ov15_0220052A
	lsl r2, r1, #2
	ldrb r4, [r0, r2]
	b _021FB434
_021FB428:
	mov r2, #0x10
	tst r0, r2
	beq _021FB434
	ldr r0, _021FB50C ; =ov15_0220052B
	lsl r2, r1, #2
	ldrb r4, [r0, r2]
_021FB434:
	cmp r4, r1
	beq _021FB452
	ldr r0, _021FB4F8 ; =0x0000066C
	ldr r1, _021FB510 ; =ov15_02201468
	str r4, [r5, r0]
	ldrb r1, [r1, r4]
	add r0, r5, #0
	bl ov15_021FFECC
	ldr r0, _021FB514 ; =0x000005DC
	bl PlaySE
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021FB452:
	add r0, r5, #0
	mov r1, #1
	bl ov15_021FAC2C
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021FB4A4
	add r0, r5, #0
	mov r1, #1
	bl ov15_021FD774
	ldr r0, _021FB4F8 ; =0x0000066C
	ldr r1, _021FB510 ; =ov15_02201468
	str r6, [r5, r0]
	ldrb r1, [r1, r6]
	add r0, r5, #0
	bl ov15_021FFECC
	cmp r6, #4
	bne _021FB48C
	mov r0, #SEQ_SE_GS_GEARCANCEL>>6
	lsl r0, r0, #6
	bl PlaySE
	mov r0, #1
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021FB48C:
	lsl r0, r6, #2
	add r1, r5, r0
	mov r0, #0x7f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021FB4F2
	ldr r0, _021FB514 ; =0x000005DC
	bl PlaySE
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021FB4A4:
	ldr r0, _021FB4FC ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _021FB4DE
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x7f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021FB4CE
	ldr r0, _021FB514 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	mov r1, #0
	bl ov15_021FD774
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021FB4CE:
	cmp r4, #4
	bne _021FB4F2
	ldr r0, _021FB514 ; =0x000005DC
	bl PlaySE
	mov r0, #1
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021FB4DE:
	mov r0, #2
	tst r0, r1
	beq _021FB4F2
	mov r0, #SEQ_SE_GS_GEARCANCEL>>6
	lsl r0, r0, #6
	bl PlaySE
	mov r0, #1
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021FB4F2:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021FB4F8: .word 0x0000066C
_021FB4FC: .word gSystem
_021FB500: .word ov15_02200528
_021FB504: .word ov15_02200529
_021FB508: .word ov15_0220052A
_021FB50C: .word ov15_0220052B
_021FB510: .word ov15_02201468
_021FB514: .word 0x000005DC
	thumb_func_end ov15_021FB3F0

