	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222B324
	.extern ov43_0222B3A4
	.extern ov43_0222B3C4
	.extern ov43_0222EE1A

	.text

	.text
	thumb_func_start ov43_0222B324
ov43_0222B324: ; 0x0222B324
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0222B36C ; =ov43_0222EE1A
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl TouchscreenHitbox_FindHitboxAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0222B340
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222B340:
	mov r1, #1
	str r1, [r7]
	str r1, [r6]
	str r0, [r5]
	ldr r0, _0222B370 ; =0x000005DD
	bl PlaySE
	add r0, r5, #0
	add r1, r4, #0
	bl ov43_0222B3C4
	add r0, r5, #0
	add r1, r4, #0
	bl ov43_0222B3A4
	ldr r0, [r4]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222B36C: .word ov43_0222EE1A
_0222B370: .word 0x000005DD
	thumb_func_end ov43_0222B324

