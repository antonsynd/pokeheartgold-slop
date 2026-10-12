	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F463C
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8B18
	.extern ov18_021F11C0
	.extern ov18_021F4620
	.extern ov18_021F47C0
	.extern ov18_021F48AC

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021F463C
ov18_021F463C: ; 0x021F463C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #4]
	ldr r1, _021F47B0 ; =0x000018CA
	add r5, r0, #0
	ldrsb r2, [r5, r1]
	cmp r2, #0
	bne _021F470A
	add r1, #0x36
	ldr r0, [r5, r1]
	mov r4, #1
	cmp r0, #1
	ble ov18_021F46EC
	ldr r7, _021F47B4 ; =0x000018CB
	add r6, r7, #0
_021F465E:
	ldrb r2, [r5, r6]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #0x19
	lsr r2, r2, #0x1f
	bl ov18_021E8ACC
	cmp r0, #0
	beq _021F4694
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x69
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldrb r1, [r5, r7]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1f
	add r1, r1, #4
	bl ManagedSprite_SetPaletteOverride
	add r1, r4, #0
	add r0, r5, #0
	add r1, #8
	mov r2, #1
	bl ov18_021F11C0
	b _021F46BE
_021F4694:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #8
	mov r2, #0
	bl ov18_021F11C0
	add r0, r5, #0
	add r1, r4, #0
	bl ov18_021E8AB0
	cmp r0, #0
	beq _021F46BE
	ldr r0, _021F47B8 ; =0x000018FC
	ldr r1, [r5, r0]
	lsl r0, r4, #2
	ldr r0, [r1, r0]
	bl ov18_021E8B18
	add r1, sp, #4
	bl ov18_021F47C0
_021F46BE:
	add r0, r5, #0
	add r1, r4, #0
	bl ov18_021E8AB0
	cmp r0, #0
	beq _021F46DC
	ldr r0, _021F47B8 ; =0x000018FC
	ldr r1, [r5, r0]
	lsl r0, r4, #2
	ldr r0, [r1, r0]
	bl ov18_021E8B18
	add r1, sp, #8
	bl ov18_021F47C0
_021F46DC:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	mov r0, #0x19
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	cmp r4, r0
	blt _021F465E
ov18_021F46EC:
	ldr r0, _021F47B4 ; =0x000018CB
	add r4, #8
	ldrb r0, [r5, r0]
	add r3, r4, #0
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	add r0, r0, #4
	str r0, [sp]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r5, #0
	bl ov18_021F48AC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F470A:
	bl ov18_021F4620
	ldr r2, _021F47B0 ; =0x000018CA
	add r0, r5, #0
	ldrsb r1, [r5, r2]
	add r2, r2, #1
	ldrb r2, [r5, r2]
	lsl r2, r2, #0x19
	lsr r2, r2, #0x1f
	bl ov18_021E8ACC
	cmp r0, #0
	beq _021F4742
	ldr r1, _021F47B4 ; =0x000018CB
	ldr r0, _021F47BC ; =0x00000694
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1f
	add r1, r1, #4
	bl ManagedSprite_SetPaletteOverride
	add r0, r5, #0
	mov r1, #9
	mov r2, #1
	bl ov18_021F11C0
	b _021F4770
_021F4742:
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	bl ov18_021F11C0
	ldr r1, _021F47B0 ; =0x000018CA
	add r0, r5, #0
	ldrsb r1, [r5, r1]
	bl ov18_021E8AB0
	cmp r0, #0
	beq _021F4770
	ldr r0, _021F47B8 ; =0x000018FC
	ldr r1, [r5, r0]
	sub r0, #0x32
	ldrsb r0, [r5, r0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov18_021E8B18
	add r1, sp, #4
	bl ov18_021F47C0
_021F4770:
	ldr r1, _021F47B0 ; =0x000018CA
	add r0, r5, #0
	ldrsb r1, [r5, r1]
	bl ov18_021E8AB0
	cmp r0, #0
	beq _021F4794
	ldr r0, _021F47B8 ; =0x000018FC
	ldr r1, [r5, r0]
	sub r0, #0x32
	ldrsb r0, [r5, r0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov18_021E8B18
	add r1, sp, #8
	bl ov18_021F47C0
_021F4794:
	ldr r0, _021F47B4 ; =0x000018CB
	mov r3, #0xa
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	add r0, r0, #4
	str r0, [sp]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r5, #0
	bl ov18_021F48AC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F47B0: .word 0x000018CA
_021F47B4: .word 0x000018CB
_021F47B8: .word 0x000018FC
_021F47BC: .word 0x00000694
	thumb_func_end ov18_021F463C

