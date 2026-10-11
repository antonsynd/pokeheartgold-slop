	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E69A0
	.extern ov108_021E6850
	.extern ov108_021E78F4
	.extern ov108_021EA760

	.text

	.text
	thumb_func_start ov108_021E69A0
ov108_021E69A0: ; 0x021E69A0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _021E6A3C ; =ov108_021EA760
	bl TouchscreenHitbox_FindRectAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E69BA
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_021E69BA:
	cmp r0, #6
	bne _021E6A00
	ldr r1, _021E6A40 ; =0x0000FFFE
	add r0, sp, #4
	strh r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r3, _021E6A44 ; =gSystem + 0x40
	mov r0, #0xd
	lsl r0, r0, #6
	ldrh r2, [r3, #0x20]
	ldrh r3, [r3, #0x22]
	ldr r0, [r4, r0]
	mov r1, #3
	bl DoesPixelAtScreenXYMatchPtrVal
	cmp r0, #0
	bne _021E69E4
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_021E69E4:
	ldr r0, _021E6A48 ; =0x000184E0
	mov r1, #6
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov108_021E6850
	mov r0, #2
	str r0, [r4, #0xc]
	ldr r0, _021E6A4C ; =0x000005DC
	bl PlaySE
	add sp, #8
	mov r0, #4
	pop {r4, pc}
_021E6A00:
	ldr r2, _021E6A50 ; =0x000184DF
	ldrb r1, [r4, r2]
	cmp r1, r0
	bne _021E6A1E
	add r0, r4, #0
	bl ov108_021E6850
	mov r0, #2
	str r0, [r4, #0xc]
	ldr r0, _021E6A4C ; =0x000005DC
	bl PlaySE
	add sp, #8
	mov r0, #4
	pop {r4, pc}
_021E6A1E:
	add r1, r2, #1
	strb r0, [r4, r1]
	add r2, r2, #1
	ldrb r2, [r4, r2]
	add r0, r4, #0
	mov r1, #0
	bl ov108_021E78F4
	ldr r0, _021E6A54 ; =0x0000069C
	bl PlaySE
	mov r0, #3
	add sp, #8
	pop {r4, pc}
	nop
_021E6A3C: .word ov108_021EA760
_021E6A40: .word 0x0000FFFE
_021E6A44: .word gSystem + 0x40
_021E6A48: .word 0x000184E0
_021E6A4C: .word 0x000005DC
_021E6A50: .word 0x000184DF
_021E6A54: .word 0x0000069C
	thumb_func_end ov108_021E69A0

