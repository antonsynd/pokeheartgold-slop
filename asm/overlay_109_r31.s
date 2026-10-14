	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E638C
	.extern ov109_021E628C
	.extern ov109_021E7474
	.extern ov109_021E75B4
	.extern ov109_021E7A18

	.text

	.text
	thumb_func_start ov109_021E638C
ov109_021E638C: ; 0x021E638C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021E63E0 ; =ov109_021E7A18
	add r6, r1, #0
	bl TouchscreenHitbox_FindRectAtTouchNew
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _021E63A6
	mov r0, #5
	pop {r4, r5, r6, pc}
_021E63A6:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021E63B2
	add r0, r5, #0
	bl ov109_021E75B4
_021E63B2:
	mov r3, #1
	str r3, [r6]
	cmp r4, #0xc
	bhs _021E63D4
	mov r0, #3
	and r0, r4
	strb r0, [r5, #0x1b]
	lsr r0, r4, #2
	strb r0, [r5, #0x1c]
	ldrb r1, [r5, #0x1b]
	ldrb r2, [r5, #0x1c]
	add r0, r5, #0
	bl ov109_021E7474
	ldr r0, _021E63E4 ; =0x000005DC
	bl PlaySE
_021E63D4:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov109_021E628C
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E63E0: .word ov109_021E7A18
_021E63E4: .word 0x000005DC
	thumb_func_end ov109_021E638C

