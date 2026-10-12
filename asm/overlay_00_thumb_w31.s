	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E6A70
	.public ov00_021E6BE4
	.public ov00_021E6C68
	.extern _0221A680
	.extern ov00_021E7130
	.extern ov00_021E79CC

	.text

	.text
	thumb_func_start ov00_021E6A70
ov00_021E6A70: ; 0x021E6A70
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0x64
	add r4, r0, #0
	bl _s32_div_f
	mov r1, #0xfa
	add r5, r0, #0
	add r0, r4, #0
	lsl r1, r1, #2
	bl _s32_div_f
	ldr r2, _021E6BC8 ; =0x00004E85
	cmp r4, r2
	bne _021E6A92
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E6A92:
	cmp r0, #0x17
	bne _021E6A9A
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E6A9A:
	add r1, r2, #7
	cmp r4, r1
	bne _021E6AA4
	mov r0, #2
	pop {r4, r5, r6, pc}
_021E6AA4:
	add r2, #9
	cmp r4, r2
	bne _021E6AAE
	mov r0, #3
	pop {r4, r5, r6, pc}
_021E6AAE:
	mov r1, #2
	lsl r1, r1, #8
	cmp r5, r1
	bne _021E6ABA
	mov r0, #4
	pop {r4, r5, r6, pc}
_021E6ABA:
	add r2, r1, #0
	sub r2, #0xc
	cmp r5, r2
	bne _021E6AC6
	mov r0, #5
	pop {r4, r5, r6, pc}
_021E6AC6:
	ldr r2, _021E6BCC ; =0x0000C79F
	cmp r4, r2
	bne _021E6AD0
	mov r0, #7
	pop {r4, r5, r6, pc}
_021E6AD0:
	sub r2, r1, #2
	cmp r5, r2
	bne _021E6ADA
	mov r0, #6
	pop {r4, r5, r6, pc}
_021E6ADA:
	sub r2, r1, #1
	cmp r5, r2
	bne _021E6AE4
	mov r0, #6
	pop {r4, r5, r6, pc}
_021E6AE4:
	add r1, r1, #1
	cmp r5, r1
	bne _021E6AEE
	mov r0, #6
	pop {r4, r5, r6, pc}
_021E6AEE:
	ldr r1, _021E6BD0 ; =0x0000CB20
	cmp r4, r1
	blt _021E6AFE
	add r1, r1, #3
	cmp r4, r1
	bgt _021E6AFE
	mov r0, #8
	pop {r4, r5, r6, pc}
_021E6AFE:
	ldr r1, _021E6BD4 ; =0x0000CB84
	cmp r4, r1
	blt _021E6B0E
	add r1, r1, #3
	cmp r4, r1
	bgt _021E6B0E
	mov r0, #8
	pop {r4, r5, r6, pc}
_021E6B0E:
	ldr r1, _021E6BD8 ; =0x0000CBE8
	cmp r4, r1
	blt _021E6B1E
	add r1, r1, #3
	cmp r4, r1
	bgt _021E6B1E
	mov r0, #8
	pop {r4, r5, r6, pc}
_021E6B1E:
	ldr r1, _021E6BDC ; =0x00013A2E
	cmp r4, r1
	bne _021E6B28
	mov r0, #9
	pop {r4, r5, r6, pc}
_021E6B28:
	cmp r0, #0x14
	bne _021E6B30
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E6B30:
	mov r1, #0x82
	lsl r1, r1, #2
	cmp r5, r1
	bne _021E6B3C
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E6B3C:
	add r2, r1, #1
	cmp r5, r2
	bne _021E6B46
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E6B46:
	add r2, r1, #2
	cmp r5, r2
	bne _021E6B50
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E6B50:
	add r2, r1, #3
	cmp r5, r2
	bne _021E6B5A
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E6B5A:
	add r2, r1, #0
	add r2, #0xa
	cmp r5, r2
	bne _021E6B66
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E6B66:
	add r2, r1, #0
	add r2, #0xb
	cmp r5, r2
	bne _021E6B72
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E6B72:
	add r1, #0xc
	cmp r5, r1
	bne _021E6B7C
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E6B7C:
	ldr r1, _021E6BE0 ; =0x00002710
	cmp r4, r1
	bge _021E6B86
	mov r0, #0xe
	pop {r4, r5, r6, pc}
_021E6B86:
	cmp r0, #0x1f
	bne _021E6B8E
	mov r0, #0xc
	pop {r4, r5, r6, pc}
_021E6B8E:
	cmp r6, #7
	bhi _021E6BB6
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E6B9E: ; jump table
	.short _021E6BAE - _021E6B9E - 2 ; case 0
	.short _021E6BAE - _021E6B9E - 2 ; case 1
	.short _021E6BAE - _021E6B9E - 2 ; case 2
	.short _021E6BB2 - _021E6B9E - 2 ; case 3
	.short _021E6BB2 - _021E6B9E - 2 ; case 4
	.short _021E6BB2 - _021E6B9E - 2 ; case 5
	.short _021E6BB2 - _021E6B9E - 2 ; case 6
	.short _021E6BBC - _021E6B9E - 2 ; case 7
_021E6BAE:
	mov r0, #0xb
	pop {r4, r5, r6, pc}
_021E6BB2:
	mov r0, #0xa
	pop {r4, r5, r6, pc}
_021E6BB6:
	bl GF_AssertFail
	b _021E6BC0
_021E6BBC:
	mov r0, #0xf
	pop {r4, r5, r6, pc}
_021E6BC0:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	nop
_021E6BC8: .word 0x00004E85
_021E6BCC: .word 0x0000C79F
_021E6BD0: .word 0x0000CB20
_021E6BD4: .word 0x0000CB84
_021E6BD8: .word 0x0000CBE8
_021E6BDC: .word 0x00013A2E
_021E6BE0: .word 0x00002710
	thumb_func_end ov00_021E6A70

	thumb_func_start ov00_021E6BE4
ov00_021E6BE4: ; 0x021E6BE4
	push {r3, lr}
	cmp r0, #0
	bne _021E6C44
	ldr r0, _021E6C60 ; =_0221A680
	ldr r2, _021E6C64 ; =0x00001070
	ldr r0, [r0]
	ldr r1, [r0, r2]
	cmp r1, #0x12
	bhi _021E6C5C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E6C02: ; jump table
	.short _021E6C5C - _021E6C02 - 2 ; case 0
	.short _021E6C5C - _021E6C02 - 2 ; case 1
	.short _021E6C5C - _021E6C02 - 2 ; case 2
	.short _021E6C5C - _021E6C02 - 2 ; case 3
	.short _021E6C40 - _021E6C02 - 2 ; case 4
	.short _021E6C28 - _021E6C02 - 2 ; case 5
	.short _021E6C5C - _021E6C02 - 2 ; case 6
	.short _021E6C28 - _021E6C02 - 2 ; case 7
	.short _021E6C28 - _021E6C02 - 2 ; case 8
	.short _021E6C5C - _021E6C02 - 2 ; case 9
	.short _021E6C5C - _021E6C02 - 2 ; case 10
	.short _021E6C5C - _021E6C02 - 2 ; case 11
	.short _021E6C5C - _021E6C02 - 2 ; case 12
	.short _021E6C5C - _021E6C02 - 2 ; case 13
	.short _021E6C40 - _021E6C02 - 2 ; case 14
	.short _021E6C5C - _021E6C02 - 2 ; case 15
	.short _021E6C5C - _021E6C02 - 2 ; case 16
	.short _021E6C40 - _021E6C02 - 2 ; case 17
	.short _021E6C40 - _021E6C02 - 2 ; case 18
_021E6C28:
	add r2, #0x20
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _021E6C34
	bl ov00_021E79CC
_021E6C34:
	ldr r0, _021E6C60 ; =_0221A680
	mov r2, #0x10
	ldr r1, [r0]
	ldr r0, _021E6C64 ; =0x00001070
	str r2, [r1, r0]
	b _021E6C5C
_021E6C40:
	mov r0, #1
	pop {r3, pc}
_021E6C44:
	ldr r0, _021E6C60 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E6C64 ; =0x00001070
	ldr r0, [r1, r0]
	cmp r0, #4
	beq _021E6C58
	cmp r0, #0x11
	beq _021E6C58
	cmp r0, #0x12
	bne _021E6C5C
_021E6C58:
	mov r0, #1
	pop {r3, pc}
_021E6C5C:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_021E6C60: .word _0221A680
_021E6C64: .word 0x00001070
	thumb_func_end ov00_021E6BE4

	thumb_func_start ov00_021E6C68
ov00_021E6C68: ; 0x021E6C68
	push {r3, lr}
	ldr r0, _021E6C9C ; =_0221A680
	ldr r2, [r0]
	ldr r0, _021E6CA0 ; =0x00001070
	ldr r0, [r2, r0]
	cmp r0, #0x11
	beq _021E6C7E
	cmp r0, #0x12
	beq _021E6C7E
	cmp r0, #4
	bne _021E6C96
_021E6C7E:
	ldr r0, _021E6CA0 ; =0x00001070
	mov r1, #4
	str r1, [r2, r0]
	sub r2, r1, #5
	ldr r1, _021E6C9C ; =_0221A680
	add r0, #0x28
	ldr r1, [r1]
	str r2, [r1, r0]
	bl ov00_021E7130
	mov r0, #1
	pop {r3, pc}
_021E6C96:
	mov r0, #0
	pop {r3, pc}
	nop
_021E6C9C: .word _0221A680
_021E6CA0: .word 0x00001070
	thumb_func_end ov00_021E6C68

