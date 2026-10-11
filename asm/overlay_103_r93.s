	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EEA48
	.extern ov103_021EEAC8
	.extern ov103_021EEFC8
	.extern ov103_021EEFD8
	.extern ov103_021EF008

	.text

	.text
	thumb_func_start ov103_021EEA48
ov103_021EEA48: ; 0x021EEA48
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5, #0xc]
	ldr r0, _021EEA90 ; =0x000002E2
	ldrh r1, [r1, r0]
	ldrh r0, [r5, #0x1c]
	cmp r0, r1
	bls _021EEA60
	strh r1, [r5, #0x1c]
	mov r4, #0
	b _021EEA62
_021EEA60:
	ldrb r4, [r5, #0x1e]
_021EEA62:
	mov r0, #1
	str r0, [sp]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x9d
	str r0, [sp, #8]
	ldr r0, _021EEA94 ; =ov103_021EEFD8
	ldr r1, _021EEA98 ; =ov103_021EF008
	ldr r2, _021EEA9C ; =ov103_021EEFC8
	add r3, r5, #0
	bl GridInputHandler_Create
	mov r1, #0x9e
	ldr r2, [r5, #0xc]
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r0, r5, #0
	add r1, r4, #0
	bl ov103_021EEAC8
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021EEA90: .word 0x000002E2
_021EEA94: .word ov103_021EEFD8
_021EEA98: .word ov103_021EF008
_021EEA9C: .word ov103_021EEFC8
	thumb_func_end ov103_021EEA48

