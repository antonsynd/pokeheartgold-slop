	.include "asm/macros.inc"
	.include "unk_02012DD8.inc"
	.include "global.inc"
	.public sub_020132A8
	.public sub_020132E8
	.public sub_0201333C
	.public sub_02013364
	.public sub_02013424
	.public sub_02013440
	.public sub_02013468
	.public sub_02013488
	.extern sub_020134BC
	.extern sub_020134D0
	.extern sub_020134EC
	.extern sub_02013504

	.text

	.text
	thumb_func_start sub_020132A8
sub_020132A8: ; 0x020132A8
	cmp r2, #0
	bne _020132C6
	ldr r2, _020132E0 ; =0x0400004A
	ldrh r3, [r2]
	mov r2, #0x3f
	bic r3, r2
	add r2, r3, #0
	orr r2, r0
	cmp r1, #0
	beq _020132C0
	mov r0, #0x20
	orr r2, r0
_020132C0:
	ldr r0, _020132E0 ; =0x0400004A
	strh r2, [r0]
	bx lr
_020132C6:
	ldr r2, _020132E4 ; =0x0400104A
	ldrh r3, [r2]
	mov r2, #0x3f
	bic r3, r2
	add r2, r3, #0
	orr r2, r0
	cmp r1, #0
	beq _020132DA
	mov r0, #0x20
	orr r2, r0
_020132DA:
	ldr r0, _020132E4 ; =0x0400104A
	strh r2, [r0]
	bx lr
	.balign 4, 0
_020132E0: .word 0x0400004A
_020132E4: .word 0x0400104A
	thumb_func_end sub_020132A8

	thumb_func_start sub_020132E8
sub_020132E8: ; 0x020132E8
	push {r3}
	sub sp, #4
	cmp r0, #0
	bne _02013308
	cmp r1, #0
	bne _020132FE
	ldr r0, _0201332C ; =0x04000048
	ldrb r1, [r0]
	add r0, sp, #0
	strb r1, [r0]
	b _0201331E
_020132FE:
	ldr r0, _02013330 ; =0x04001048
	ldrb r1, [r0]
	add r0, sp, #0
	strb r1, [r0]
	b _0201331E
_02013308:
	cmp r1, #0
	bne _02013316
	ldr r0, _02013334 ; =0x04000049
	ldrb r1, [r0]
	add r0, sp, #0
	strb r1, [r0]
	b _0201331E
_02013316:
	ldr r0, _02013338 ; =0x04001049
	ldrb r1, [r0]
	add r0, sp, #0
	strb r1, [r0]
_0201331E:
	add r1, sp, #0
	mov r0, #0
	ldrsb r0, [r1, r0]
	add sp, #4
	pop {r3}
	bx lr
	nop
_0201332C: .word 0x04000048
_02013330: .word 0x04001048
_02013334: .word 0x04000049
_02013338: .word 0x04001049
	thumb_func_end sub_020132E8

	thumb_func_start sub_0201333C
sub_0201333C: ; 0x0201333C
	push {r3}
	sub sp, #4
	cmp r0, #0
	bne _02013348
	ldr r0, _0201335C ; =0x0400004A
	b _0201334A
_02013348:
	ldr r0, _02013360 ; =0x0400104A
_0201334A:
	ldrb r1, [r0]
	add r0, sp, #0
	strb r1, [r0]
	add r1, sp, #0
	mov r0, #0
	ldrsb r0, [r1, r0]
	add sp, #4
	pop {r3}
	bx lr
	.balign 4, 0
_0201335C: .word 0x0400004A
_02013360: .word 0x0400104A
	thumb_func_end sub_0201333C

	thumb_func_start sub_02013364
sub_02013364: ; 0x02013364
	push {r4, r5}
	add r4, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #8]
	cmp r3, #0
	bne _020133C2
	ldr r3, [sp, #0xc]
	cmp r3, #0
	bne _0201339C
	lsl r0, r0, #8
	mov r3, #0xff
	add r5, r0, #0
	lsl r3, r3, #8
	lsl r0, r4, #0x18
	and r5, r3
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	add r4, r5, #0
	orr r4, r0
	ldr r0, _02013414 ; =0x04000040
	orr r1, r3
	strh r4, [r0]
	strh r1, [r0, #4]
	pop {r4, r5}
	bx lr
_0201339C:
	lsl r0, r0, #8
	mov r3, #0xff
	add r5, r0, #0
	lsl r3, r3, #8
	lsl r0, r4, #0x18
	and r5, r3
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	add r4, r5, #0
	orr r4, r0
	ldr r0, _02013418 ; =0x04001040
	orr r1, r3
	strh r4, [r0]
	strh r1, [r0, #4]
	pop {r4, r5}
	bx lr
_020133C2:
	ldr r3, [sp, #0xc]
	cmp r3, #0
	bne _020133EE
	lsl r0, r0, #8
	mov r3, #0xff
	add r5, r0, #0
	lsl r3, r3, #8
	lsl r0, r4, #0x18
	and r5, r3
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	add r4, r5, #0
	orr r4, r0
	ldr r0, _0201341C ; =0x04000042
	orr r1, r3
	strh r4, [r0]
	strh r1, [r0, #4]
	pop {r4, r5}
	bx lr
_020133EE:
	lsl r0, r0, #8
	mov r3, #0xff
	add r5, r0, #0
	lsl r3, r3, #8
	lsl r0, r4, #0x18
	and r5, r3
	lsl r1, r1, #8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	add r4, r5, #0
	orr r4, r0
	ldr r0, _02013420 ; =0x04001042
	orr r1, r3
	strh r4, [r0]
	strh r1, [r0, #4]
	pop {r4, r5}
	bx lr
	.balign 4, 0
_02013414: .word 0x04000040
_02013418: .word 0x04001040
_0201341C: .word 0x04000042
_02013420: .word 0x04001042
	thumb_func_end sub_02013364

	thumb_func_start sub_02013424
sub_02013424: ; 0x02013424
	push {r4, lr}
	lsl r3, r2, #3
	add r4, r0, r3
	str r1, [r0, r3]
	str r2, [r4, #4]
	ldr r0, _0201343C ; =sub_020134BC
	add r1, r4, #0
	mov r2, #1
	bl SysTask_CreateOnVWaitQueue
	pop {r4, pc}
	nop
_0201343C: .word sub_020134BC
	thumb_func_end sub_02013424

	thumb_func_start sub_02013440
sub_02013440: ; 0x02013440
	push {r4, r5, r6, lr}
	ldr r5, [sp, #0x10]
	add r0, #0x10
	lsl r4, r5, #5
	add r6, r0, r4
	lsl r0, r3, #4
	add r4, r6, r0
	str r1, [r6, r0]
	str r2, [r4, #4]
	str r3, [r4, #8]
	ldr r0, _02013464 ; =sub_020134D0
	add r1, r4, #0
	mov r2, #1
	str r5, [r4, #0xc]
	bl SysTask_CreateOnVWaitQueue
	pop {r4, r5, r6, pc}
	nop
_02013464: .word sub_020134D0
	thumb_func_end sub_02013440

	thumb_func_start sub_02013468
sub_02013468: ; 0x02013468
	push {r3, r4, r5, lr}
	mov r4, #0xc
	add r0, #0x68
	mul r4, r3
	add r5, r0, r4
	str r1, [r0, r4]
	str r2, [r5, #4]
	ldr r0, _02013484 ; =sub_020134EC
	add r1, r5, #0
	mov r2, #1
	str r3, [r5, #8]
	bl SysTask_CreateOnVWaitQueue
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02013484: .word sub_020134EC
	thumb_func_end sub_02013468

	thumb_func_start sub_02013488
sub_02013488: ; 0x02013488
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, [sp, #0x20]
	add r7, r1, #0
	add r0, #0x80
	lsl r1, r5, #5
	add r6, r0, r1
	add r4, r2, #0
	ldr r0, [sp, #0x1c]
	add r2, r3, #0
	lsl r3, r0, #4
	add r1, r6, r3
	strh r7, [r6, r3]
	strh r4, [r1, #2]
	strh r2, [r1, #4]
	ldr r2, [sp, #0x18]
	strh r2, [r1, #6]
	str r0, [r1, #8]
	ldr r0, _020134B8 ; =sub_02013504
	mov r2, #1
	str r5, [r1, #0xc]
	bl SysTask_CreateOnVWaitQueue
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020134B8: .word sub_02013504
	thumb_func_end sub_02013488

