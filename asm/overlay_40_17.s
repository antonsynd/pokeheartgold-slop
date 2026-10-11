	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222CF10
	.public ov40_0222D3E8

	.text

	thumb_func_start ov40_0222CF10
ov40_0222CF10: ; 0x0222CF10
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _0222CF84 ; =0x000006D8
	ldr r1, [r7, r0]
	cmp r1, #0
	beq _0222CF80
	mov r0, #0
	str r0, [sp]
	cmp r1, #0
	ble _0222CF80
	ldr r0, _0222CF88 ; =0x00000534
	add r4, r7, #0
	add r5, r7, #0
	add r6, r7, r0
_0222CF2C:
	ldr r1, _0222CF8C ; =0x000006C4
	ldr r0, _0222CF88 ; =0x00000534
	ldr r1, [r4, r1]
	ldr r0, [r5, r0]
	ldr r1, [r1, #0xc]
	bl ManagedSprite_SetAnim
	ldr r0, _0222CF8C ; =0x000006C4
	add r1, r6, #0
	ldr r3, [r4, r0]
	add r0, r7, #0
	ldr r2, [r3, #8]
	bl ov40_0222D3E8
	ldr r0, _0222CF90 ; =0x00000548
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r5, r0]
	sub r2, #0x2c
	bl sub_020136B4
	ldr r0, _0222CF90 ; =0x00000548
	mov r1, #1
	ldr r0, [r5, r0]
	bl TextOBJ_SetSpritesDrawFlag
	ldr r0, _0222CF88 ; =0x00000534
	mov r1, #1
	ldr r0, [r5, r0]
	bl ManagedSprite_SetDrawFlag
	ldr r0, [sp]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp]
	ldr r0, _0222CF84 ; =0x000006D8
	add r5, #0x28
	ldr r1, [r7, r0]
	ldr r0, [sp]
	add r6, #0x28
	cmp r0, r1
	blt _0222CF2C
_0222CF80:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222CF84: .word 0x000006D8
_0222CF88: .word 0x00000534
_0222CF8C: .word 0x000006C4
_0222CF90: .word 0x00000548
	thumb_func_end ov40_0222CF10

