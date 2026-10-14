	.include "macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222CB34
	.extern ov43_0222EFA0
	.extern ov43_0222EFA2

	.text

	.text
	thumb_func_start ov43_0222CB34
ov43_0222CB34: ; 0x0222CB34
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r1, r3, #0
	mov r3, #2
	ldrsh r5, [r0, r3]
	cmp r5, #0
	bge _0222CB46
	neg r5, r5
_0222CB46:
	mov r3, #0
	ldrsh r6, [r0, r3]
	cmp r6, #0
	bge _0222CB50
	neg r6, r6
_0222CB50:
	ldr r0, [r2, #0xc]
	add r3, r1, #0
	mov r1, #3
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	mov r1, #0
	mov r2, #0xa
	str r1, [sp, #0xc]
	mul r3, r2
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	ldr r2, _0222CBA4 ; =ov43_0222EFA0
	ldrsh r2, [r2, r3]
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	add r2, r2, r6
	ldr r6, _0222CBA8 ; =ov43_0222EFA2
	ldrh r0, [r0, #2]
	ldrsh r3, [r6, r3]
	lsl r2, r2, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	add r3, r3, r5
	str r0, [sp, #0x18]
	lsl r3, r3, #0x18
	ldr r0, [r4]
	mov r1, #2
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl CopyToBgTilemapRect
	ldr r0, [r4]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0222CBA4: .word ov43_0222EFA0
_0222CBA8: .word ov43_0222EFA2
	thumb_func_end ov43_0222CB34

