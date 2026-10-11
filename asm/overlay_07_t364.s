	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_022251CC
	.extern ov07_0221C410
	.extern ov07_0221C4A8
	.extern ov07_0221C4E8
	.extern ov07_0221EB98
	.extern ov07_0222519C
	.extern ov07_02231FE4
	.extern ov07_022324D8

	.text

	.text
	thumb_func_start ov07_022251CC
ov07_022251CC: ; 0x022251CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x28
	bl ov07_022324D8
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov07_0221C4A8
	add r0, r5, #0
	add r1, r4, #4
	bl ov07_02231FE4
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov07_0221EB98
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov07_0221C4E8
	str r0, [r4, #0x24]
	mov r1, #2
	bl ManagedSprite_SetOamMode
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl ManagedSprite_SetAffineOverwriteMode
	ldr r1, _0222524C ; =0x3F99999A
	ldr r0, [r4, #0x24]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0]
	ldr r1, _02225250 ; =0xFFFF1FFF
	and r2, r1
	lsr r1, r0, #0xb
	orr r1, r2
	str r1, [r0]
	add r0, #0x4a
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x1b
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _02225254 ; =0xFFFFC0FF
	and r2, r1
	mov r1, #7
	lsl r1, r1, #8
	orr r1, r2
	strh r1, [r0]
	ldr r0, [r4, #8]
	ldr r1, _02225258 ; =ov07_0222519C
	add r2, r4, #0
	bl ov07_0221C410
	pop {r3, r4, r5, pc}
	nop
_0222524C: .word 0x3F99999A
_02225250: .word 0xFFFF1FFF
_02225254: .word 0xFFFFC0FF
_02225258: .word ov07_0222519C
	thumb_func_end ov07_022251CC

