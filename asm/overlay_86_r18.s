	.include "asm/macros.inc"
	.include "overlay_86.inc"
	.include "global.inc"
	.public ov86_021E6484

	.text

	.text
	thumb_func_start ov86_021E6484
ov86_021E6484: ; 0x021E6484
	push {r4, r5, r6, lr}
	add r6, r1, #0
	bne _021E648E
	mov r5, #0x66
	b _021E6490
_021E648E:
	mov r5, #0x68
_021E6490:
	ldrb r4, [r0, #6]
	cmp r4, #3
	bne _021E64B4
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl Save_Frontier_GetStatic
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205C268
	add r2, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl FrontierSave_GetStat
	b _021E64CE
_021E64B4:
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_02030AE8
	lsl r2, r6, #2
	add r2, r4, r2
	lsl r2, r2, #0x18
	mov r1, #0xa
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030AD4
_021E64CE:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bne _021E64DA
	mov r0, #0x1e
	pop {r4, r5, r6, pc}
_021E64DA:
	mov r0, #0x1d
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov86_021E6484

