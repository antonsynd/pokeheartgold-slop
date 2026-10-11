	.include "asm/macros.inc"
	.include "overlay_82.inc"
	.include "global.inc"
	.public ov82_0223F300
	.public ov82_0223F488
	.extern ov82_0223F558
	.extern ov82_0223F570
	.extern ov82_0223FCBC
	.extern ov82_0223FCFC

	.text

	.text
	thumb_func_start ov82_0223F300
ov82_0223F300: ; 0x0223F300
	push {r3, r4, r5, lr}
	ldr r1, _0223F480 ; =gSystem
	add r4, r0, #0
	ldr r2, [r1, #0x48]
	mov r1, #0x20
	mov r0, #0
	tst r1, r2
	beq _0223F34A
	ldrb r0, [r4, #0xd]
	bl ov80_02237920
	cmp r0, #0xfe
	beq _0223F31E
	ldrb r0, [r4, #0xd]
	strb r0, [r4, #0xc]
_0223F31E:
	ldrb r0, [r4, #0xd]
	mov r1, #0x1e
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1e
	sub r2, r2, r3
	ror r2, r1
	add r1, r3, r2
	bne _0223F334
	add r0, r0, #3
	strb r0, [r4, #0xd]
	b _0223F348
_0223F334:
	bl ov80_02237920
	cmp r0, #0xfe
	bne _0223F342
	mov r0, #0x10
	strb r0, [r4, #0xd]
	b _0223F348
_0223F342:
	ldrb r0, [r4, #0xd]
	sub r0, r0, #1
	strb r0, [r4, #0xd]
_0223F348:
	mov r0, #1
_0223F34A:
	ldr r1, _0223F480 ; =gSystem
	ldr r2, [r1, #0x48]
	mov r1, #0x10
	tst r1, r2
	beq _0223F390
	ldrb r0, [r4, #0xd]
	bl ov80_02237920
	cmp r0, #0xfe
	beq _0223F362
	ldrb r0, [r4, #0xd]
	strb r0, [r4, #0xc]
_0223F362:
	ldrb r0, [r4, #0xd]
	mov r1, #0x1e
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1e
	sub r2, r2, r3
	ror r2, r1
	add r1, r3, r2
	cmp r1, #3
	bne _0223F37A
	sub r0, r0, #3
	strb r0, [r4, #0xd]
	b _0223F38E
_0223F37A:
	bl ov80_02237920
	cmp r0, #0xfe
	bne _0223F388
	mov r0, #0x13
	strb r0, [r4, #0xd]
	b _0223F38E
_0223F388:
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
_0223F38E:
	mov r0, #1
_0223F390:
	ldr r1, _0223F480 ; =gSystem
	ldr r2, [r1, #0x48]
	mov r1, #0x40
	tst r1, r2
	beq _0223F3FC
	ldrb r0, [r4, #0xd]
	bl ov80_02237920
	cmp r0, #0xfe
	beq _0223F3A8
	ldrb r0, [r4, #0xd]
	strb r0, [r4, #0xc]
_0223F3A8:
	ldrb r0, [r4, #0xd]
	cmp r0, #4
	bhs _0223F3B4
	add r0, #0x10
	strb r0, [r4, #0xd]
	b _0223F3FA
_0223F3B4:
	bl ov80_02237920
	cmp r0, #0xfe
	bne _0223F3F4
	ldrb r0, [r4, #0xc]
	cmp r0, #0x10
	bne _0223F3C8
	mov r0, #0xd
	strb r0, [r4, #0xd]
	b _0223F3FA
_0223F3C8:
	cmp r0, #0x13
	bne _0223F3D2
	mov r0, #0xe
	strb r0, [r4, #0xd]
	b _0223F3FA
_0223F3D2:
	cmp r0, #0xd
	beq _0223F3DA
	cmp r0, #1
	bne _0223F3E0
_0223F3DA:
	mov r0, #0xd
	strb r0, [r4, #0xd]
	b _0223F3FA
_0223F3E0:
	cmp r0, #0xe
	beq _0223F3E8
	cmp r0, #2
	bne _0223F3EE
_0223F3E8:
	mov r0, #0xe
	strb r0, [r4, #0xd]
	b _0223F3FA
_0223F3EE:
	mov r0, #0xd
	strb r0, [r4, #0xd]
	b _0223F3FA
_0223F3F4:
	ldrb r0, [r4, #0xd]
	sub r0, r0, #4
	strb r0, [r4, #0xd]
_0223F3FA:
	mov r0, #1
_0223F3FC:
	ldr r1, _0223F480 ; =gSystem
	ldr r2, [r1, #0x48]
	mov r1, #0x80
	tst r1, r2
	beq _0223F424
	ldrb r0, [r4, #0xd]
	bl ov80_02237920
	cmp r0, #0xfe
	beq _0223F414
	ldrb r0, [r4, #0xd]
	strb r0, [r4, #0xc]
_0223F414:
	ldrb r0, [r4, #0xd]
	cmp r0, #0x10
	blo _0223F41E
	sub r0, #0x10
	b _0223F420
_0223F41E:
	add r0, r0, #4
_0223F420:
	strb r0, [r4, #0xd]
	mov r0, #1
_0223F424:
	cmp r0, #1
	bne _0223F44A
	ldr r0, _0223F484 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov82_0223F558
	add r5, r0, #0
	add r0, r4, #0
	bl ov82_0223F570
	add r2, r0, #0
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl ov82_0223FCBC
_0223F44A:
	ldrb r0, [r4, #0xd]
	bl ov80_02237920
	cmp r0, #0xfe
	bne _0223F470
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl ov82_0223FCFC
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x80
	mov r2, #0xa8
	bl ov82_0223FCBC
	pop {r3, r4, r5, pc}
_0223F470:
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov82_0223FCFC
	pop {r3, r4, r5, pc}
	nop
_0223F480: .word gSystem
_0223F484: .word 0x000005DC
	thumb_func_end ov82_0223F300

	thumb_func_start ov82_0223F488
ov82_0223F488: ; 0x0223F488
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, _0223F538 ; =gSystem + 0x40
	ldrh r1, [r0, #0x24]
	cmp r1, #0
	beq _0223F532
	ldrh r4, [r0, #0x20]
	ldrh r5, [r0, #0x22]
	mov r7, #0
	mov r3, #3
_0223F49C:
	add r2, r3, #0
	add r2, #0x23
	mov r1, #0
	mov r6, #1
_0223F4A4:
	add r0, r6, #0
	add r0, #0x3f
	cmp r6, r4
	bgt _0223F522
	cmp r4, r0
	bgt _0223F522
	cmp r3, r5
	bgt _0223F522
	cmp r5, r2
	bgt _0223F522
	lsl r0, r7, #2
	add r1, r1, r0
	ldr r0, [sp]
	strb r1, [r0, #0xd]
	bl ov82_0223F558
	add r4, r0, #0
	ldr r0, [sp]
	bl ov82_0223F570
	add r2, r0, #0
	mov r1, #0x81
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r4, #0
	bl ov82_0223FCBC
	ldr r0, [sp]
	ldrb r0, [r0, #0xd]
	bl ov80_02237920
	cmp r0, #0xfe
	bne _0223F508
	mov r1, #0x81
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #2
	bl ov82_0223FCFC
	mov r1, #0x81
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0x80
	mov r2, #0xa8
	bl ov82_0223FCBC
	b _0223F516
_0223F508:
	mov r1, #0x81
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #1
	bl ov82_0223FCFC
_0223F516:
	ldr r1, [sp]
	mov r0, #1
	add r1, #0x90
	strb r0, [r1]
	str r1, [sp]
	pop {r3, r4, r5, r6, r7, pc}
_0223F522:
	add r1, r1, #1
	add r6, #0x40
	cmp r1, #4
	blt _0223F4A4
	add r7, r7, #1
	add r3, #0x24
	cmp r7, #5
	blt _0223F49C
_0223F532:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F538: .word gSystem + 0x40
	thumb_func_end ov82_0223F488

