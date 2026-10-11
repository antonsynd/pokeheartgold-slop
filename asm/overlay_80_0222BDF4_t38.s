	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrtCmd_026
	.public FrtCmd_027
	.public ov80_0222C33C
	.extern ov80_0222BE24
	.extern ov80_0222E920

	.text

	.text
	thumb_func_start ov80_0222C33C
ov80_0222C33C: ; 0x0222C33C
	push {r4, lr}
	add r1, r0, #0
	add r1, #0x78
	ldrh r1, [r1]
	ldr r4, [r0]
	bl ov80_0222BE24
	ldr r1, [r4, #0x60]
	cmp r1, #0
	beq _0222C354
	mov r0, #0
	pop {r4, pc}
_0222C354:
	ldrh r1, [r0]
	ldr r0, _0222C364 ; =0x0000EEEE
	cmp r1, r0
	beq _0222C360
	mov r0, #1
	pop {r4, pc}
_0222C360:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_0222C364: .word 0x0000EEEE
	thumb_func_end ov80_0222C33C

	thumb_func_start FrtCmd_026
FrtCmd_026: ; 0x0222C368
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r1, [r5, #0x1c]
	ldr r4, [r5]
	add r2, r1, #1
	str r2, [r5, #0x1c]
	ldrb r1, [r1]
	add r3, r2, #1
	str r1, [sp, #0x14]
	str r3, [r5, #0x1c]
	ldrb r1, [r2]
	add r2, r3, #1
	str r1, [sp, #0x10]
	str r2, [r5, #0x1c]
	ldrb r7, [r3]
	add r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r6, [r2]
	bl FrontierScriptContext_ReadHalfWord
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl ov80_0222BE24
	str r6, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x44]
	add r3, r7, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl ov80_0222E920
	str r0, [r4, #0x60]
	ldr r0, [sp, #0x18]
	add r5, #0x78
	strh r0, [r5]
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end FrtCmd_026

	thumb_func_start FrtCmd_027
FrtCmd_027: ; 0x0222C3C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r1, [r5, #0x1c]
	ldr r4, [r5]
	add r2, r1, #1
	str r2, [r5, #0x1c]
	ldrb r1, [r1]
	add r3, r2, #1
	str r1, [sp, #0x14]
	str r3, [r5, #0x1c]
	ldrb r1, [r2]
	add r2, r3, #1
	str r1, [sp, #0x10]
	str r2, [r5, #0x1c]
	ldrb r7, [r3]
	add r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r6, [r2]
	bl FrontierScriptContext_ReadHalfWord
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl ov80_0222BE24
	str r6, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x44]
	add r3, r7, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl ov80_0222E920
	str r0, [r4, #0x60]
	ldr r0, [sp, #0x18]
	add r5, #0x78
	strh r0, [r5]
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end FrtCmd_027

