	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222CFBC

	.text

	thumb_func_start ov40_0222CFBC
ov40_0222CFBC: ; 0x0222CFBC
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x15
	add r5, r0, #0
	add r4, r1, #0
	mov r6, #0
	lsl r7, r7, #6
_0222CFC8:
	ldr r0, [r5, r7]
	cmp r0, #0
	ldr r0, _0222D038 ; =0x00000548
	bne _0222CFE4
	ldr r0, [r5, r0]
	mov r1, #0
	bl TextOBJ_SetSpritesDrawFlag
	ldr r0, _0222D03C ; =0x00000534
	mov r1, #0
	ldr r0, [r5, r0]
	bl ManagedSprite_SetDrawFlag
	b _0222CFF6
_0222CFE4:
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl TextOBJ_SetSpritesDrawFlag
	ldr r0, _0222D03C ; =0x00000534
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl ManagedSprite_SetDrawFlag
_0222CFF6:
	ldr r0, _0222D040 ; =0x00000608
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0222D016
	mov r0, #0x61
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl TextOBJ_SetSpritesDrawFlag
	ldr r0, _0222D044 ; =0x000005FC
	mov r1, #0
	ldr r0, [r5, r0]
	bl ManagedSprite_SetDrawFlag
	b _0222D02C
_0222D016:
	mov r0, #0x61
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl TextOBJ_SetSpritesDrawFlag
	ldr r0, _0222D044 ; =0x000005FC
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl ManagedSprite_SetDrawFlag
_0222D02C:
	add r6, r6, #1
	add r5, #0x28
	cmp r6, #5
	blt _0222CFC8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222D038: .word 0x00000548
_0222D03C: .word 0x00000534
_0222D040: .word 0x00000608
_0222D044: .word 0x000005FC
	thumb_func_end ov40_0222CFBC

