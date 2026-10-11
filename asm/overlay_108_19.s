	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E63B8
	.extern ov108_021E6A58
	.extern ov108_021E78F4
	.extern ov108_021E7CD8
	.extern ov108_021EA760

	.text

	.text
	thumb_func_start ov108_021E63B8
ov108_021E63B8: ; 0x021E63B8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _021E643C ; =ov108_021EA760
	bl TouchscreenHitbox_FindRectAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E63D2
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_021E63D2:
	cmp r0, #6
	bne _021E640C
	ldr r1, _021E6440 ; =0x0000FFFE
	add r0, sp, #4
	strh r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r3, _021E6444 ; =gSystem + 0x40
	mov r0, #0xd
	lsl r0, r0, #6
	ldrh r2, [r3, #0x20]
	ldrh r3, [r3, #0x22]
	ldr r0, [r4, r0]
	mov r1, #3
	bl DoesPixelAtScreenXYMatchPtrVal
	cmp r0, #0
	bne _021E63FC
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_021E63FC:
	ldr r0, _021E6448 ; =0x000005DC
	bl PlaySE
	mov r0, #6
	str r0, [r4, #0xc]
	add sp, #8
	mov r0, #4
	pop {r4, pc}
_021E640C:
	ldr r2, _021E644C ; =0x000184DF
	mov r1, #0
	strb r0, [r4, r2]
	add r0, r2, #1
	strb r1, [r4, r0]
	ldrb r2, [r4, r2]
	add r0, r4, #0
	bl ov108_021E78F4
	ldr r1, _021E644C ; =0x000184DF
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov108_021E7CD8
	ldr r0, _021E6448 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov108_021E6A58
	mov r0, #1
	add sp, #8
	pop {r4, pc}
	nop
_021E643C: .word ov108_021EA760
_021E6440: .word 0x0000FFFE
_021E6444: .word gSystem + 0x40
_021E6448: .word 0x000005DC
_021E644C: .word 0x000184DF
	thumb_func_end ov108_021E63B8

