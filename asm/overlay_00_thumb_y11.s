	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E602C
	.extern _0221A680
	.extern ov00_021E6790

	.text

	.text
	thumb_func_start ov00_021E602C
ov00_021E602C: ; 0x021E602C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	lsl r0, r0, #8
	cmp r4, r0
	blt _021E603E
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E603E:
	bl ov00_021EE490
	cmp r0, #0
	beq _021E604A
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E604A:
	ldr r0, _021E60D8 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E60DC ; =0x00001078
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021E605E
	bl ov00_021E6790
	cmp r0, #0
	bne _021E6062
_021E605E:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E6062:
	ldr r1, _021E60D8 ; =_0221A680
	ldr r0, _021E60E0 ; =0x000010D4
	ldr r2, [r1]
	ldrh r3, [r2, r0]
	lsl r6, r3, #8
	mov r3, #1
	orr r3, r6
	str r3, [r2]
	add r3, r0, #0
	ldr r2, [r1]
	add r3, #8
	ldrb r3, [r2, r3]
	add r6, r3, #1
	add r3, r0, #0
	add r3, #8
	strb r6, [r2, r3]
	ldr r2, [r1]
	add r0, #8
	ldrb r0, [r2, r0]
	strb r0, [r2, #2]
	ldr r1, [r1]
	add r0, r5, #0
	add r1, r1, #4
	add r2, r4, #0
	bl MI_CpuCopy8
	ldr r0, _021E60D8 ; =_0221A680
	mov r2, #1
	ldr r1, [r0]
	ldr r0, _021E60DC ; =0x00001078
	str r2, [r1, r0]
	bl ov00_021EE4FC
	ldr r1, _021E60D8 ; =_0221A680
	add r2, r4, #4
	ldr r1, [r1]
	bl ov00_021F9750
	cmp r0, #0
	bne _021E60BE
	ldr r1, _021E60D8 ; =_0221A680
	mov r0, #0
	ldr r2, [r1]
	ldr r1, _021E60DC ; =0x00001078
	str r0, [r2, r1]
	pop {r4, r5, r6, pc}
_021E60BE:
	ldr r0, _021E60D8 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E60E4 ; =0x00000FA8
	ldr r3, [r1, r0]
	cmp r3, #0
	beq _021E60D4
	lsl r2, r4, #0x10
	mov r0, #0
	add r1, r5, #0
	lsr r2, r2, #0x10
	blx r3
_021E60D4:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E60D8: .word _0221A680
_021E60DC: .word 0x00001078
_021E60E0: .word 0x000010D4
_021E60E4: .word 0x00000FA8
	thumb_func_end ov00_021E602C

