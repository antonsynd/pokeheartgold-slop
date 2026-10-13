	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E8EBC

	.text

	.text
	thumb_func_start ov99_021E8EBC
ov99_021E8EBC: ; 0x021E8EBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r6, r0, #0
	mov r0, #0
	add r2, sp, #0x14
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	str r0, [sp, #0xc]
	str r0, [r2]
	str r0, [sp, #8]
	str r0, [sp, #4]
	mov r0, #0x2c
	str r0, [sp]
_021E8EE0:
	ldr r0, [sp]
	mov r4, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	mov r5, #0x3c
	str r0, [sp, #0x10]
_021E8EEC:
	ldr r0, [sp, #8]
	add r0, r4, r0
	add r1, r0, #2
	str r1, [sp, #0x28]
	mov r1, #2
	str r1, [sp, #0x2c]
	str r1, [sp, #0x30]
	str r1, [sp, #0x34]
	str r1, [sp, #0x24]
	ldr r1, [sp, #4]
	add r0, #0x16
	add r2, r5, r1
	add r1, sp, #0x14
	strh r2, [r1]
	ldr r2, [sp, #0x10]
	lsl r0, r0, #2
	strh r2, [r1, #2]
	mov r1, #3
	sub r1, r1, r4
	str r1, [sp, #0x1c]
	add r7, r6, r0
	ldr r0, [r6, #0x14]
	add r1, sp, #0x14
	bl ov98_0221E6E0
	mov r1, #1
	str r0, [r7, #0x18]
	bl ManagedSprite_SetAnimateFlag
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #3
	blo _021E8EEC
	ldr r0, [sp, #8]
	add r0, r0, #3
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #8
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #5
	blo _021E8EE0
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov99_021E8EBC

