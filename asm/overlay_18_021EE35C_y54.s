	.include "asm/macros.inc"
	.include "overlay_18_021EE35C.inc"
	.include "global.inc"
	.public ov18_021F018C
	.public ov18_021F01D4
	.extern ov18_021F9E4C
	.extern ov18_021F9EBC

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021F018C
ov18_021F018C: ; 0x021F018C
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #1
	add r7, r0, #0
	mov r4, #0
	lsl r5, r5, #0xc
_021F0196:
	add r1, r4, #0
	ldr r0, [r7, #8]
	add r1, #0x11
	bl sub_02019B08
	add r2, r0, #0
	ldr r0, _021F01D0 ; =ov18_021F9E4C
	lsl r1, r4, #3
	add r0, r0, r1
	add r0, #0x46
	ldrh r6, [r0]
	mov r3, #0
_021F01AE:
	add r0, r6, r3
	add r1, r0, #0
	orr r1, r5
	lsl r0, r3, #1
	strh r1, [r2, r0]
	add r0, r3, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	cmp r3, #0x24
	blo _021F01AE
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _021F0196
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F01D0: .word ov18_021F9E4C
	thumb_func_end ov18_021F018C

	thumb_func_start ov18_021F01D4
ov18_021F01D4: ; 0x021F01D4
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #1
	add r7, r0, #0
	mov r4, #0
	lsl r5, r5, #0xc
_021F01DE:
	add r1, r4, #0
	ldr r0, [r7, #8]
	add r1, #0x11
	bl sub_02019B08
	add r2, r0, #0
	ldr r0, _021F0218 ; =ov18_021F9EBC
	lsl r1, r4, #3
	add r0, r0, r1
	add r0, #0x56
	ldrh r6, [r0]
	mov r3, #0
_021F01F6:
	add r0, r6, r3
	add r1, r0, #0
	orr r1, r5
	lsl r0, r3, #1
	strh r1, [r2, r0]
	add r0, r3, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	cmp r3, #0x24
	blo _021F01F6
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _021F01DE
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F0218: .word ov18_021F9EBC
	thumb_func_end ov18_021F01D4

