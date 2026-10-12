	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F47F8
	.public ov18_021F48AC
	.public ov18_021F4974
	.public ov18_021F49F8
	.extern ov18_021F118C
	.extern ov18_021F11C0
	.extern ov18_021F11EC
	.extern ov18_021F1294
	.extern ov18_021F12C8
	.extern ov18_021F4A6C
	.extern ov18_021F4D64
	.extern ov18_021F4DDC
	.extern ov18_021F4E28
	.extern ov18_021FA3B0
	.extern ov18_021FA7B0

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
	thumb_func_start ov18_021F47F8
ov18_021F47F8: ; 0x021F47F8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	mov r1, #1
	add r5, r0, #0
	add r4, r2, #0
	tst r1, r6
	beq _021F482C
	mov r1, #2
	str r1, [sp]
	add r1, r4, #0
	mov r2, #0x94
	mov r3, #0x4c
	bl ov18_021F1294
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov18_021F118C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov18_021F11C0
	add r4, r4, #1
_021F482C:
	mov r0, #2
	add r1, r6, #0
	tst r1, r0
	beq _021F4858
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xec
	mov r3, #0x4c
	bl ov18_021F1294
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov18_021F118C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov18_021F11C0
	add r4, r4, #1
_021F4858:
	mov r0, #4
	tst r0, r6
	beq _021F48A6
	mov r0, #2
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xe4
	mov r3, #0x5c
	bl ov18_021F1294
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov18_021F118C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov18_021F11C0
	mov r0, #2
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #1
	mov r2, #0xdc
	mov r3, #0x7c
	bl ov18_021F1294
	add r0, r5, #0
	add r1, r4, #1
	mov r2, #0
	bl ov18_021F118C
	add r0, r5, #0
	add r1, r4, #1
	mov r2, #1
	bl ov18_021F11C0
_021F48A6:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov18_021F47F8

	thumb_func_start ov18_021F48AC
ov18_021F48AC: ; 0x021F48AC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	mov r2, #1
	add r5, r0, #0
	add r6, r1, #0
	add r4, r3, #0
	tst r1, r2
	beq _021F48E4
	add r1, r7, #0
	tst r1, r2
	beq _021F48CC
	add r1, r4, #0
	mov r2, #0
	bl ov18_021F11C0
	b _021F48E2
_021F48CC:
	add r1, r4, #0
	bl ov18_021F11C0
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x67
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x18]
	bl ManagedSprite_SetPaletteOverride
_021F48E2:
	add r4, r4, #1
_021F48E4:
	mov r0, #2
	add r1, r6, #0
	tst r1, r0
	beq _021F4918
	tst r0, r7
	beq _021F48FC
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov18_021F11C0
	b _021F4916
_021F48FC:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov18_021F11C0
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x67
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x18]
	bl ManagedSprite_SetPaletteOverride
_021F4916:
	add r4, r4, #1
_021F4918:
	mov r0, #4
	add r1, r6, #0
	tst r1, r0
	beq _021F496C
	tst r0, r7
	beq _021F493A
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov18_021F11C0
	add r0, r5, #0
	add r1, r4, #1
	mov r2, #0
	bl ov18_021F11C0
	pop {r3, r4, r5, r6, r7, pc}
_021F493A:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov18_021F11C0
	add r0, r5, #0
	add r1, r4, #1
	mov r2, #1
	bl ov18_021F11C0
	lsl r4, r4, #2
	mov r0, #0x67
	ldr r6, [sp, #0x18]
	add r1, r5, r4
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl ManagedSprite_SetPaletteOverride
	ldr r0, _021F4970 ; =0x00000674
	add r1, r5, r4
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl ManagedSprite_SetPaletteOverride
_021F496C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4970: .word 0x00000674
	thumb_func_end ov18_021F48AC

	thumb_func_start ov18_021F4974
ov18_021F4974: ; 0x021F4974
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	str r0, [sp, #4]
	add r0, r5, #4
	add r6, r2, #0
	add r7, r3, #0
	str r0, [sp, #8]
	cmp r5, r0
	bhs _021F49EE
	ldr r0, [sp, #4]
	lsl r1, r5, #2
	add r4, r0, r1
_021F498E:
	mov r0, #0x67
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ManagedSprite_GetDrawFlag
	cmp r0, #0
	beq _021F49E4
	mov r0, #2
	str r0, [sp]
	add r2, sp, #0xc
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, #2
	add r3, sp, #0xc
	bl ov18_021F12C8
	ldr r0, _021F49F4 ; =ov18_021FA3B0
	add r2, sp, #0xc
	ldrb r0, [r0]
	mov r1, #2
	ldrsh r2, [r2, r1]
	lsr r0, r0, #1
	sub r1, r2, r0
	cmp r6, r1
	blt _021F49E4
	add r0, r2, r0
	cmp r6, r0
	bge _021F49E4
	ldr r0, _021F49F4 ; =ov18_021FA3B0
	add r2, sp, #0xc
	ldrb r0, [r0, #1]
	mov r1, #0
	ldrsh r2, [r2, r1]
	lsr r0, r0, #1
	sub r1, r2, r0
	cmp r7, r1
	blt _021F49E4
	add r0, r2, r0
	cmp r7, r0
	bge _021F49E4
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F49E4:
	ldr r0, [sp, #8]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r0
	blo _021F498E
_021F49EE:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F49F4: .word ov18_021FA3B0
	thumb_func_end ov18_021F4974

	thumb_func_start ov18_021F49F8
ov18_021F49F8: ; 0x021F49F8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl ov18_021F4A6C
	mov r6, #1
	mov r4, #0x34
	add r5, r7, #4
_021F4A06:
	add r2, r4, #0
	ldr r1, _021F4A4C ; =ov18_021FA7B0
	sub r2, #0x34
	add r0, r7, #0
	add r1, r1, r2
	bl ov18_021F11EC
	mov r1, #0x67
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r6, r6, #1
	add r4, #0x34
	add r5, r5, #4
	cmp r6, #0xa
	blo _021F4A06
	add r0, r7, #0
	bl ov18_021F4D64
	add r0, r7, #0
	bl ov18_021F4DDC
	add r0, r7, #0
	bl ov18_021F4E28
	add r0, r7, #0
	mov r1, #3
	mov r2, #0
	bl ov18_021F11C0
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl ov18_021F11C0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F4A4C: .word ov18_021FA7B0
	thumb_func_end ov18_021F49F8

