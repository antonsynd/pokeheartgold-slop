	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021ED568
	.extern ov103_021EEC78

	.text

	.text
	thumb_func_start ov103_021ED568
ov103_021ED568: ; 0x021ED568
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl OverlayManager_Run
	cmp r0, #0
	bne _021ED57A
	mov r0, #7
	pop {r4, pc}
_021ED57A:
	ldr r0, [r4, #0x10]
	bl OverlayManager_Delete
	ldr r2, [r4, #0x18]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021ED5A0 ; =ov103_021EEC78 + 4
	add r0, r4, #0
	ldr r1, [r1, r3]
	blx r1
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x18]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021ED5A4 ; =ov103_021EEC78 + 8
	ldr r0, [r0, r2]
	pop {r4, pc}
	.balign 4, 0
_021ED5A0: .word ov103_021EEC78 + 4
_021ED5A4: .word ov103_021EEC78 + 8
	thumb_func_end ov103_021ED568

