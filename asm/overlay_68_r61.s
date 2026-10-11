	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E7618
	.extern ov68_021E67E0
	.extern ov68_021E68D4
	.extern ov68_021E6BEC
	.extern ov68_021E73A4
	.extern ov68_021E7898
	.extern ov68_021E7910
	.extern ov68_021E797C
	.extern ov68_021E7A18

	.text

	.text
	thumb_func_start ov68_021E7618
ov68_021E7618: ; 0x021E7618
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	bl ov68_021E7898
	add r0, r5, #0
	mov r1, #5
	bl ov68_021E7A18
	cmp r4, #3
	bgt _021E766A
	ldr r0, _021E7738 ; =0x000005DD
	bl PlaySE
	ldr r0, [r5]
	strh r4, [r0, #0x14]
	ldr r0, [r5]
	ldrh r1, [r0, #0x16]
	ldrh r0, [r0, #0x14]
	add r1, r1, r0
	mov r0, #0x6e
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r1, r0
	bge _021E765E
	add r0, r5, #0
	bl ov68_021E6BEC
	add r1, r0, #0
	add r0, r5, #0
	bl ov68_021E68D4
	b _021E7728
_021E765E:
	mov r1, #1
	add r0, r5, #0
	mvn r1, r1
	bl ov68_021E68D4
	b _021E7728
_021E766A:
	cmp r4, #6
	bne _021E7722
	cmp r6, #3
	bne _021E76C2
	ldr r0, [r5]
	ldrh r0, [r0, #0x16]
	add r1, r0, #4
	mov r0, #0x6e
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r1, r0
	bge _021E76C2
	ldr r0, _021E7738 ; =0x000005DD
	bl PlaySE
	mov r0, #0x72
	lsl r0, r0, #2
	mov r4, #3
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl GridInputHandler_SetNextInput
	ldr r1, [r5]
	ldrh r0, [r1, #0x16]
	add r0, r0, #1
	strh r0, [r1, #0x16]
	add r0, r5, #0
	bl ov68_021E67E0
	add r0, r5, #0
	bl ov68_021E6BEC
	add r1, r0, #0
	add r0, r5, #0
	bl ov68_021E68D4
	add r0, r5, #0
	bl ov68_021E7910
	add r0, r5, #0
	mov r1, #1
	bl ov68_021E797C
	b _021E7728
_021E76C2:
	cmp r6, #0
	bne _021E7710
	ldr r0, [r5]
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	beq _021E7700
	ldr r0, _021E7738 ; =0x000005DD
	bl PlaySE
	ldr r1, [r5]
	ldrh r0, [r1, #0x16]
	sub r0, r0, #1
	strh r0, [r1, #0x16]
	add r0, r5, #0
	bl ov68_021E67E0
	add r0, r5, #0
	bl ov68_021E6BEC
	add r1, r0, #0
	add r0, r5, #0
	bl ov68_021E68D4
	add r0, r5, #0
	bl ov68_021E7910
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl ov68_021E797C
_021E7700:
	mov r0, #0x72
	lsl r0, r0, #2
	mov r4, #0
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl GridInputHandler_SetNextInput
	b _021E7728
_021E7710:
	ldr r0, _021E7738 ; =0x000005DD
	bl PlaySE
	mov r1, #1
	add r0, r5, #0
	mvn r1, r1
	bl ov68_021E68D4
	b _021E7728
_021E7722:
	ldr r0, _021E7738 ; =0x000005DD
	bl PlaySE
_021E7728:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	bl ov68_021E73A4
	pop {r4, r5, r6, pc}
	nop
_021E7738: .word 0x000005DD
	thumb_func_end ov68_021E7618

