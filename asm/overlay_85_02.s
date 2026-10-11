	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E5AAC
	.extern ov85_021E5AF0
	.extern ov85_021E67F4
	.extern ov85_021E74AC
	.extern ov85_021E75C8
	.extern ov85_021E7798
	.extern ov85_021EA800

	.text

	.text
	thumb_func_start ov85_021E5AAC
ov85_021E5AAC: ; 0x021E5AAC
	push {r3, r4, r5, lr}
	bl OverlayManager_GetData
	add r5, r0, #0
	bl ov85_021E74AC
	ldr r4, _021E5AEC ; =ov85_021EA800
_021E5ABA:
	ldr r1, [r5]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _021E5ABA
	cmp r0, #2
	bne _021E5AD0
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5AD0:
	add r0, r5, #0
	bl ov85_021E75C8
	add r0, r5, #0
	bl ov85_021E7798
	add r0, r5, #0
	bl ov85_021E67F4
	add r0, r5, #0
	bl ov85_021E5AF0
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E5AEC: .word ov85_021EA800
	thumb_func_end ov85_021E5AAC

