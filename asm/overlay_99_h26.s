	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E6438
	.extern ov99_021E5B90
	.extern ov99_021E5BB4
	.extern ov99_021E9840

	.text

	.text
	thumb_func_start ov99_021E6438
ov99_021E6438: ; 0x021E6438
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r4, _021E64DC ; =ov99_021E9840
	mov r7, #0
	add r5, r6, #0
_021E6442:
	ldr r0, [r6, #0x14]
	add r1, r4, #0
	bl ov98_0221E6E0
	mov r1, #1
	str r0, [r5, #0x18]
	bl ManagedSprite_SetAnimateFlag
	add r7, r7, #1
	add r4, #0x34
	add r5, r5, #4
	cmp r7, #0x1a
	blt _021E6442
	mov r5, #0
	add r4, r6, #0
	mov r7, #0x1f
_021E6462:
	ldr r0, [r6]
	add r1, r5, #0
	bl ov99_021E5BB4
	cmp r0, #0
	bne _021E6476
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
_021E6476:
	ldr r0, [r6]
	add r1, r5, #0
	bl ov99_021E5B90
	bl ov98_0221EF64
	cmp r0, #2
	bne _021E64A4
	lsr r1, r5, #0x1f
	lsl r0, r5, #0x1f
	sub r0, r0, r1
	ror r0, r7
	add r0, r1, r0
	ldr r0, [r4, #0x30]
	bne _021E649C
	mov r1, #5
	bl ManagedSprite_SetAnim
	b _021E64D0
_021E649C:
	mov r1, #6
	bl ManagedSprite_SetAnim
	b _021E64D0
_021E64A4:
	cmp r0, #1
	bne _021E64C8
	lsr r2, r5, #0x1f
	lsl r1, r5, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	ldr r0, [r4, #0x30]
	bne _021E64C0
	mov r1, #2
	bl ManagedSprite_SetAnim
	b _021E64D0
_021E64C0:
	mov r1, #3
	bl ManagedSprite_SetAnim
	b _021E64D0
_021E64C8:
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
_021E64D0:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #5
	blt _021E6462
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E64DC: .word ov99_021E9840
	thumb_func_end ov99_021E6438

