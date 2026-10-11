	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_022397BC

	.text

	thumb_func_start ov40_022397BC
ov40_022397BC: ; 0x022397BC
	push {r4, lr}
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r4, [r0, r2]
	cmp r1, #0
	bne _022397F0
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	mov r1, #1
	bl TextOBJ_SetSpritesDrawFlag
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	mov r1, #0x80
	mov r2, #0xe8
	bl ManagedSprite_SetPositionXY
	b _02239816
_022397F0:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	mov r1, #0
	bl TextOBJ_SetSpritesDrawFlag
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	mov r1, #0x50
	mov r2, #0xe8
	bl ManagedSprite_SetPositionXY
_02239816:
	add r0, r4, #0
	add r0, #0xac
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r0]
	sub r2, #0x2c
	bl sub_020136B4
	add r4, #0xc8
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4]
	sub r2, #0x2c
	bl sub_020136B4
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov40_022397BC

