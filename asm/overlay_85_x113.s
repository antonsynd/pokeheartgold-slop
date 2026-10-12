	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E7B8C
	.extern ov85_021EA51C

	.text

	.text
	thumb_func_start ov85_021E7B8C
ov85_021E7B8C: ; 0x021E7B8C
	push {r4, r5, r6, lr}
	ldr r4, _021E7BBC ; =ov85_021EA51C
	add r6, r0, #0
	add r5, r1, #0
_021E7B94:
	ldr r1, [r5]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _021E7B94
	cmp r0, #2
	bne _021E7BB8
	ldr r0, [r5, #0x10]
	mov r1, #1
	str r1, [r0, #8]
	add r0, r5, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
_021E7BB8:
	pop {r4, r5, r6, pc}
	nop
_021E7BBC: .word ov85_021EA51C
	thumb_func_end ov85_021E7B8C

