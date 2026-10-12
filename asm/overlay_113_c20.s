	.include "asm/macros.inc"
	.include "overlay_113.inc"
	.include "global.inc"
	.public ov113_021E5ED0
	.extern ov113_021E5E64

	.text

	.text
	thumb_func_start ov113_021E5ED0
ov113_021E5ED0: ; 0x021E5ED0
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _021E5EE2
	cmp r1, #1
	beq _021E5EF4
	cmp r1, #2
	beq _021E5F16
	b _021E5F3C
_021E5EE2:
	ldr r0, _021E5F40 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #1
	bl ov113_021E5E64
	mov r0, #1
	pop {r4, pc}
_021E5EF4:
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	bne _021E5EFE
	mov r0, #2
	pop {r4, pc}
_021E5EFE:
	sub r0, r0, #1
	strb r0, [r4, #0x1a]
	add r4, #0xbc
	ldr r0, [r4]
	mov r1, #3
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _021E5F44 ; =0x000005DC
	bl PlaySE
	mov r0, #3
	pop {r4, pc}
_021E5F16:
	ldrb r0, [r4, #0x1b]
	ldrb r1, [r4, #0x1a]
	sub r0, r0, #1
	cmp r1, r0
	blt _021E5F24
	mov r0, #2
	pop {r4, pc}
_021E5F24:
	add r0, r1, #1
	strb r0, [r4, #0x1a]
	add r4, #0xc0
	ldr r0, [r4]
	mov r1, #6
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _021E5F44 ; =0x000005DC
	bl PlaySE
	mov r0, #3
	pop {r4, pc}
_021E5F3C:
	mov r0, #2
	pop {r4, pc}
	.balign 4, 0
_021E5F40: .word 0x000005DD
_021E5F44: .word 0x000005DC
	thumb_func_end ov113_021E5ED0

