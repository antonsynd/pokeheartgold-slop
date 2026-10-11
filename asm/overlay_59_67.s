	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223BA64

	.text

	thumb_func_start ov59_0223BA64
ov59_0223BA64: ; 0x0223BA64
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	str r4, [r5]
	add r6, r1, #0
	strb r3, [r5, #8]
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	strh r0, [r5, #4]
	add r0, r4, #0
	mov r1, #0x6f
	mov r2, #0
	bl GetMonData
	strb r0, [r5, #7]
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl GetMonData
	strb r0, [r5, #6]
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	add r1, r0, #0
	ldrh r0, [r5, #4]
	mov r2, #0x1c
	bl GetMonBaseStat_HandleAlternateForm
	mov r1, #1
	eor r0, r1
	strb r0, [r5, #9]
	ldr r1, [sp, #0x10]
	mov r0, #0xc
	bl String_New
	str r0, [r5, #0xc]
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #0x77
	bl GetMonData
	add r1, r5, #0
	ldr r0, [r5]
	add r1, #0x1e
	bl CalcMonPokeathlonPerformance
	add r1, r5, #0
	ldrb r2, [r5, #8]
	add r0, r6, #0
	add r1, #0x10
	bl Party_GetMonAprijuiceModifiers
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov59_0223BA64

