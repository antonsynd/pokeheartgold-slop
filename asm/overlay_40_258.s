	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_022420B4

	.text

	thumb_func_start ov40_022420B4
ov40_022420B4: ; 0x022420B4
	push {r4, lr}
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r4, [r0, r2]
	cmp r1, #0
	ldr r0, [r4, #0x30]
	bne _022420DC
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl TextOBJ_SetSpritesDrawFlag
	ldr r0, [r4, #0x14]
	mov r1, #0x20
	mov r2, #0xe8
	bl ManagedSprite_SetPositionXY
	b _022420F4
_022420DC:
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl TextOBJ_SetSpritesDrawFlag
	ldr r0, [r4, #0x14]
	mov r1, #0x50
	mov r2, #0xe8
	bl ManagedSprite_SetPositionXY
_022420F4:
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, #0x18]
	sub r2, #0x2c
	bl sub_020136B4
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, #0x34]
	sub r2, #0x2c
	bl sub_020136B4
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov40_022420B4

