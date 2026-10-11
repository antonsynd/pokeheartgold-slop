	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222D5AC
	.public ov40_0222D66C
	.public ov40_0222D6EC
	.public ov40_0222D800
	.public ov40_022420B4
	.public ov40_02242110

	.text

	thumb_func_start ov40_02242110
ov40_02242110: ; 0x02242110
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	mov r1, #2
	bl ov40_0222D6EC
	add r0, r5, #0
	mov r1, #2
	bl ov40_0222D800
	str r0, [r4, #0x14]
	add r0, r5, #0
	mov r1, #2
	bl ov40_0222D800
	str r0, [r4, #0x30]
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x10
	add r1, #0x14
	mov r2, #2
	bl ov40_0222D5AC
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x2c
	add r1, #0x14
	mov r2, #2
	bl ov40_0222D5AC
	ldr r0, _022421F8 ; =0x0000086C
	ldr r0, [r5, r0]
	cmp r0, #0xd2
	bne _02242186
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x10
	add r1, #0x14
	mov r2, #3
	bl ov40_0222D66C
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x2c
	add r1, #0x14
	mov r2, #0x6f
	bl ov40_0222D66C
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ManagedSprite_SetAnim
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl ManagedSprite_SetAnim
	b _022421B2
_02242186:
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x10
	add r1, #0x14
	mov r2, #3
	bl ov40_0222D66C
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x2c
	add r1, #0x14
	mov r2, #0x5e
	bl ov40_0222D66C
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ManagedSprite_SetAnim
	ldr r0, [r4, #0x30]
	mov r1, #3
	bl ManagedSprite_SetAnim
_022421B2:
	ldr r0, [r4, #0x14]
	mov r1, #0x20
	mov r2, #0xe8
	bl ManagedSprite_SetPositionXY
	ldr r0, [r4, #0x30]
	mov r1, #0x80
	mov r2, #0xe8
	bl ManagedSprite_SetPositionXY
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
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl TextOBJ_SetSpritesDrawFlag
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl TextOBJ_SetSpritesDrawFlag
	add r0, r5, #0
	mov r1, #0
	bl ov40_022420B4
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022421F8: .word 0x0000086C
	thumb_func_end ov40_02242110

