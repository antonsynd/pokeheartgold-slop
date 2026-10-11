	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02241D10
	.extern ov40_0222BF80
	.extern ov40_0222DF60
	.extern ov40_02230944
	.extern ov40_0223DB94
	.extern ov40_0223DDE8
	.extern ov40_0223DEB8

	.text

	.text
	thumb_func_start ov40_02241D10
ov40_02241D10: ; 0x02241D10
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #0x86
	add r4, r2, #0
	lsl r0, r0, #4
	ldr r5, [r4, r0]
	cmp r1, #0
	bne _02241DFE
	cmp r6, #4
	bhi _02241DFE
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02241D30: ; jump table
	.short _02241D3A - _02241D30 - 2 ; case 0
	.short _02241D4E - _02241D30 - 2 ; case 1
	.short _02241D62 - _02241D30 - 2 ; case 2
	.short _02241DC6 - _02241D30 - 2 ; case 3
	.short _02241DD6 - _02241D30 - 2 ; case 4
_02241D3A:
	add r0, r4, #0
	bl ov40_02230944
	ldr r0, _02241E00 ; =0x000004C5
	mov r1, #5
	strb r6, [r5, r0]
	add r0, r4, #0
	bl ov40_0222BF80
	pop {r4, r5, r6, pc}
_02241D4E:
	add r0, r4, #0
	bl ov40_02230944
	ldr r0, _02241E00 ; =0x000004C5
	mov r1, #5
	strb r6, [r5, r0]
	add r0, r4, #0
	bl ov40_0222BF80
	pop {r4, r5, r6, pc}
_02241D62:
	add r0, #0x2c
	ldr r0, [r4, r0]
	bl sub_02031620
	add r6, r0, #0
	add r0, r4, #0
	bl ov40_02230944
	cmp r6, #0
	bne _02241D86
	ldr r0, _02241E04 ; =0x0000057C
	bl PlaySE
	add r0, r4, #0
	mov r1, #0x80
	bl ov40_0222DF60
	pop {r4, r5, r6, pc}
_02241D86:
	ldr r0, _02241E08 ; =0x000004C3
	ldrb r1, [r5, r0]
	cmp r1, #0xff
	bne _02241DA8
	ldr r0, _02241E0C ; =0x0000088C
	ldr r0, [r4, r0]
	bl sub_02031620
	ldr r1, _02241E08 ; =0x000004C3
	strb r0, [r5, r1]
	ldr r0, _02241E0C ; =0x0000088C
	ldr r0, [r4, r0]
	bl sub_0203162C
	ldr r1, _02241E10 ; =0x000004C4
	strb r0, [r5, r1]
	b _02241DB0
_02241DA8:
	mov r1, #0xff
	strb r1, [r5, r0]
	add r0, r0, #1
	strb r1, [r5, r0]
_02241DB0:
	ldr r2, _02241E08 ; =0x000004C3
	add r0, r4, #0
	ldrb r1, [r5, r2]
	add r2, r2, #1
	ldrb r2, [r5, r2]
	bl ov40_0223DDE8
	add r0, r4, #0
	bl ov40_0223DEB8
	pop {r4, r5, r6, pc}
_02241DC6:
	add r0, r4, #0
	bl ov40_02230944
	add r0, r4, #0
	mov r1, #4
	bl ov40_0222BF80
	pop {r4, r5, r6, pc}
_02241DD6:
	add r0, r4, #0
	bl ov40_02230944
	add r0, r4, #0
	bl ov40_0223DB94
	cmp r0, #0
	bne _02241DF6
	ldr r0, _02241E04 ; =0x0000057C
	bl PlaySE
	add r0, r4, #0
	mov r1, #0x74
	bl ov40_0222DF60
	pop {r4, r5, r6, pc}
_02241DF6:
	add r0, r4, #0
	mov r1, #0xc
	bl ov40_0222BF80
_02241DFE:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02241E00: .word 0x000004C5
_02241E04: .word 0x0000057C
_02241E08: .word 0x000004C3
_02241E0C: .word 0x0000088C
_02241E10: .word 0x000004C4
	thumb_func_end ov40_02241D10

