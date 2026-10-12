	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E6804
	.extern ov108_021E7700
	.extern ov108_021E78F4

	.text

	.text
	thumb_func_start ov108_021E6804
ov108_021E6804: ; 0x021E6804
	push {r4, lr}
	ldr r2, _021E6848 ; =0x000184E2
	add r4, r0, #0
	ldrb r3, [r4, r2]
	mov r1, #0xf8
	bic r3, r1
	mov r1, #0x10
	orr r1, r3
	strb r1, [r4, r2]
	sub r2, r2, #2
	ldrb r2, [r4, r2]
	mov r1, #0
	bl ov108_021E78F4
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl thunk_Sprite_SetPriority
	ldr r2, _021E684C ; =0x000184DF
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #3
	bl ov108_021E78F4
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	mov r3, #1
	bl ov108_021E7700
	pop {r4, pc}
	nop
_021E6848: .word 0x000184E2
_021E684C: .word 0x000184DF
	thumb_func_end ov108_021E6804

