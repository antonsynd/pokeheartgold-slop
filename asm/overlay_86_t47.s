	.include "asm/macros.inc"
	.include "overlay_86.inc"
	.include "global.inc"
	.public ov86_021E75EC
	.public ov86_021E7630
	.extern ov86_021E705C
	.extern ov86_021E707C
	.extern ov86_021E7EB8
	.extern ov86_021E8094
	.extern ov86_021E8104

	.text

	.text
	thumb_func_start ov86_021E75EC
ov86_021E75EC: ; 0x021E75EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl DpadMenuBox_GetPosition
	add r3, sp, #0
	ldrb r2, [r3, #1]
	ldrb r3, [r3]
	add r0, r5, #0
	mov r1, #1
	bl ov86_021E707C
	cmp r4, #0x1a
	bne _021E7624
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl ov86_021E705C
	pop {r3, r4, r5, pc}
_021E7624:
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ov86_021E705C
	pop {r3, r4, r5, pc}
	thumb_func_end ov86_021E75EC

	thumb_func_start ov86_021E7630
ov86_021E7630: ; 0x021E7630
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x96
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	ldr r1, _021E766C ; =ov86_021E8104
	ldr r2, _021E7670 ; =ov86_021E7EB8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x79
	str r0, [sp, #8]
	ldr r0, _021E7674 ; =ov86_021E8094
	add r3, r4, #0
	bl GridInputHandler_Create
	mov r1, #0x95
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r1, r1, #4
	ldrh r1, [r4, r1]
	add r0, r4, #0
	bl ov86_021E75EC
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021E766C: .word ov86_021E8104
_021E7670: .word ov86_021E7EB8
_021E7674: .word ov86_021E8094
	thumb_func_end ov86_021E7630

