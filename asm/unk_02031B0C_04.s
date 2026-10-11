#include "constants/items.h"
	.include "asm/macros.inc"
	.include "unk_02031B0C.inc"
	.include "global.inc"
	.public sub_02032340
	.public sub_02032354
	.public sub_020324F4
	.public sub_02032504
	.public sub_02032588
	.public sub_020325CC
	.extern _020F68DE
	.extern sub_02031B5C

	.text
	thumb_func_start sub_02032340
sub_02032340: ; 0x02032340
	ldrb r2, [r0, #0xe]
	add r1, r2, r1
	cmp r1, #0xff
	ble _0203234E
	mov r1, #0xff
	strb r1, [r0, #0xe]
	bx lr
_0203234E:
	strb r1, [r0, #0xe]
	bx lr
	.balign 4, 0
	thumb_func_end sub_02032340

	thumb_func_start sub_02032354
sub_02032354: ; 0x02032354
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp]
	ldrh r0, [r0, #0xa]
	add r1, sp, #0x34
	add r1, #1
	str r0, [sp, #0x14]
	ldr r0, [sp]
	add r0, #0xc
	bl sub_020324F4
	mov r0, #0
	str r0, [sp, #0x28]
_0203236E:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, #7
	and r0, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	bne _02032380
	b _020324CA
_02032380:
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x1c]
	sub r0, r1, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	add r1, sp, #0x30
_02032398:
	strb r0, [r1]
	add r0, r0, #1
	add r1, r1, #1
	cmp r0, #5
	blt _02032398
	mov r0, #0
	add r2, sp, #0x30
	add r7, sp, #0x34
	str r0, [sp, #4]
	add r7, #1
	mov ip, r2
_020323AE:
	ldr r0, [sp, #4]
	add r1, r0, #1
	cmp r1, #5
	bge _020323DE
	mov r0, ip
	add r3, r0, r1
_020323BA:
	mov r0, #0
	mov r5, #0
	ldrsb r4, [r3, r0]
	ldrsb r5, [r2, r5]
	ldrsb r0, [r7, r4]
	ldrsb r6, [r7, r5]
	cmp r6, r0
	bgt _020323D6
	cmp r6, r0
	bne _020323D2
	cmp r5, r4
	blt _020323D6
_020323D2:
	strb r4, [r2]
	strb r5, [r3]
_020323D6:
	add r1, r1, #1
	add r3, r3, #1
	cmp r1, #5
	blt _020323BA
_020323DE:
	ldr r0, [sp, #4]
	add r2, r2, #1
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #2
	blt _020323AE
	ldr r0, [sp, #0x20]
	ldr r2, _020324F0 ; =_020F68DE
	lsl r1, r0, #2
	add r0, r0, r1
	add r1, r2, r0
	add r2, sp, #0x34
	mov r4, #0
	add r3, sp, #0x30
	ldrsb r0, [r3, r4]
	add r2, #1
	str r0, [sp, #8]
	add r0, r2, r0
	str r0, [sp, #0xc]
	mov r0, #1
	ldrsb r7, [r3, r0]
	add r0, r2, r7
	str r0, [sp, #0x2c]
_0203240C:
	mov r0, #0
	ldrsb r5, [r1, r0]
	ldrsb r3, [r2, r0]
	add r0, r3, r5
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	cmp r5, #0
	ble _0203243E
	ldr r6, [sp, #0xc]
	mov r5, #0
	ldrsb r5, [r6, r5]
	cmp r5, #0
	beq _0203243E
	ldr r5, [sp, #8]
	cmp r5, r4
	beq _0203243E
	ldr r5, [sp, #0x2c]
	mov r6, #0
	ldrsb r5, [r5, r6]
	cmp r5, #0
	beq _0203243E
	cmp r7, r4
	beq _0203243E
	mov r5, #1
	str r5, [sp, #0x10]
_0203243E:
	cmp r0, #0x3f
	blt _02032446
	mov r0, #0x3f
	b _0203244C
_02032446:
	cmp r0, #0
	bge _0203244C
	mov r0, #0
_0203244C:
	ldr r5, [sp, #0x20]
	cmp r5, #6
	beq _02032456
	cmp r0, r3
	bgt _02032468
_02032456:
	ldr r3, [sp, #0x1c]
	cmp r0, r3
	ble _02032468
	lsl r3, r0, #0x18
	lsr r3, r3, #0x18
	str r3, [sp, #0x1c]
	lsl r3, r4, #0x18
	lsr r3, r3, #0x18
	str r3, [sp, #0x18]
_02032468:
	strb r0, [r2]
	ldr r3, [sp, #0x24]
	add r4, r4, #1
	add r0, r3, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	add r1, r1, #1
	add r2, r2, #1
	cmp r4, #5
	blt _0203240C
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0xd
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0203249E
	ldr r0, [sp]
	ldrb r1, [r0, #0xe]
	cmp r1, #0xa
	bhs _0203249A
	mov r1, #0
	strb r1, [r0, #0xe]
	b _0203249E
_0203249A:
	sub r1, #0xa
	strb r1, [r0, #0xe]
_0203249E:
	ldr r0, [sp, #0x20]
	cmp r0, #5
	beq _020324BE
	ldr r0, [sp, #0x24]
	cmp r0, #0x64
	bls _020324BE
	add r2, sp, #0x34
	ldr r0, [sp, #0x18]
	add r2, #1
	ldrsb r1, [r2, r0]
	ldr r0, [sp, #0x24]
	sub r0, #0x64
	str r0, [sp, #0x24]
	sub r1, r1, r0
	ldr r0, [sp, #0x18]
	strb r1, [r2, r0]
_020324BE:
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #5
	bge _020324CA
	b _0203236E
_020324CA:
	mov r4, #0
	add r3, sp, #0x34
	add r3, #1
	add r1, r4, #0
_020324D2:
	ldrsb r2, [r3, r1]
	ldr r0, [sp]
	add r3, r3, #1
	add r0, r0, r4
	add r4, r4, #1
	strb r2, [r0, #0xf]
	cmp r4, #5
	blt _020324D2
	ldr r0, [sp]
	mov r1, #3
	strb r1, [r0, #9]
	mov r1, #0
	strh r1, [r0, #0xa]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_020324F0: .word _020F68DE
	thumb_func_end sub_02032354

	thumb_func_start sub_020324F4
sub_020324F4: ; 0x020324F4
	mov r3, #0
_020324F6:
	add r2, r0, r3
	ldrb r2, [r2, #3]
	strb r2, [r1, r3]
	add r3, r3, #1
	cmp r3, #5
	blt _020324F6
	bx lr
	thumb_func_end sub_020324F4

	thumb_func_start sub_02032504
sub_02032504: ; 0x02032504
	cmp r1, #0
	bne _0203250C
	mov r0, #0
	bx lr
_0203250C:
	cmp r0, #0
	beq _0203251A
	cmp r0, #1
	beq _0203254A
	cmp r0, #2
	beq _0203256A
	b _02032582
_0203251A:
	cmp r1, #0x3e
	bls _02032522
	mov r0, #6
	bx lr
_02032522:
	cmp r1, #0x32
	bls _0203252A
	mov r0, #5
	bx lr
_0203252A:
	cmp r1, #0x28
	bls _02032532
	mov r0, #4
	bx lr
_02032532:
	cmp r1, #0x1e
	bls _0203253A
	mov r0, #3
	bx lr
_0203253A:
	cmp r1, #0x14
	bls _02032542
	mov r0, #2
	bx lr
_02032542:
	cmp r1, #0
	beq _02032582
	mov r0, #1
	bx lr
_0203254A:
	cmp r1, #0x28
	bls _02032552
	mov r0, #4
	bx lr
_02032552:
	cmp r1, #0x1e
	bls _0203255A
	mov r0, #3
	bx lr
_0203255A:
	cmp r1, #0x14
	bls _02032562
	mov r0, #2
	bx lr
_02032562:
	cmp r1, #0
	beq _02032582
	mov r0, #1
	bx lr
_0203256A:
	cmp r1, #0x14
	bls _02032572
	mov r0, #3
	bx lr
_02032572:
	cmp r1, #0xa
	bls _0203257A
	mov r0, #2
	bx lr
_0203257A:
	cmp r1, #0
	beq _02032582
	mov r0, #1
	bx lr
_02032582:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end sub_02032504

	thumb_func_start sub_02032588
sub_02032588: ; 0x02032588
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	ldrb r5, [r1]
	mov r3, #0xf
	bic r0, r3
	mov r3, #0xf
	and r3, r5
	orr r0, r3
	strh r0, [r4]
	ldrh r3, [r4]
	ldr r0, _020325C8 ; =0xFFFF00FF
	and r3, r0
	ldrb r0, [r1, #1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x10
	orr r0, r3
	strh r0, [r4]
	lsl r0, r2, #0x18
	ldrb r1, [r1, #1]
	lsr r0, r0, #0x18
	bl sub_02032504
	lsl r0, r0, #0x1c
	ldrh r2, [r4]
	mov r1, #0xf0
	lsr r0, r0, #0x18
	bic r2, r1
	orr r0, r2
	strh r0, [r4]
	pop {r3, r4, r5, pc}
	nop
_020325C8: .word 0xFFFF00FF
	thumb_func_end sub_02032588

	thumb_func_start sub_020325CC
sub_020325CC: ; 0x020325CC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	add r0, r4, #0
	add r0, #0x18
	bl sub_02031B5C
	add r4, #8
	add r0, r4, #0
	mov r1, #8
	bl StringFillEOS
	pop {r4, pc}
	thumb_func_end sub_020325CC
