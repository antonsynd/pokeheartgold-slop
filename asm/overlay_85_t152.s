	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E84EC
	.extern ov85_021E84A4
	.extern ov85_021EA4F0

	.text

	.text
	thumb_func_start ov85_021E84EC
ov85_021E84EC: ; 0x021E84EC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021E8528 ; =ov85_021EA4F0
	add r4, r1, #0
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0x20]
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0x66
	mov r1, #0xc
	bl Heap_AllocAtEnd
	add r1, r0, #0
	str r5, [r1]
	lsl r2, r4, #2
	add r0, sp, #0
	ldr r0, [r0, r2]
	str r4, [r1, #4]
	str r0, [r1, #8]
	ldr r0, _021E852C ; =ov85_021E84A4
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	cmp r0, #0
	bne _021E8524
	bl GF_AssertFail
_021E8524:
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E8528: .word ov85_021EA4F0
_021E852C: .word ov85_021E84A4
	thumb_func_end ov85_021E84EC

