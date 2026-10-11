	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E5B6C
	.extern _02216400
	.extern _0221640C
	.extern _0221A680
	.extern ov00_021E61A8
	.extern ov00_021E65D4
	.extern ov00_021E6638
	.extern ov00_021E6690

	.text

	.text
	thumb_func_start ov00_021E5B6C
ov00_021E5B6C: ; 0x021E5B6C
	push {r3, lr}
	sub sp, #0x68
	ldr r0, _021E5C60 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E5C64 ; =0x00001070
	ldr r0, [r1, r0]
	cmp r0, #4
	bhi _021E5C56
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E5B88: ; jump table
	.short _021E5B92 - _021E5B88 - 2 ; case 0
	.short _021E5BC8 - _021E5B88 - 2 ; case 1
	.short _021E5BF6 - _021E5B88 - 2 ; case 2
	.short _021E5C46 - _021E5B88 - 2 ; case 3
	.short _021E5C4C - _021E5B88 - 2 ; case 4
_021E5B92:
	ldr r0, _021E5C68 ; =ov00_021E65D4
	ldr r1, _021E5C6C ; =ov00_021E6638
	bl ov00_021EC294
	ldr r0, _021E5C60 ; =_0221A680
	mov r2, #1
	ldr r1, [r0]
	ldr r0, _021E5C70 ; =0x00000F14
	mov r3, #0x14
	add r0, r1, r0
	mov r1, #2
	bl ov00_021EC3F0
	mov r0, #2
	bl ov00_021EC454
	bl ov00_021EC4A4
	ldr r1, _021E5C60 ; =_0221A680
	ldr r0, _021E5C64 ; =0x00001070
	ldr r2, [r1]
	mov r3, #1
	str r3, [r2, r0]
	ldr r1, [r1]
	mov r2, #0
	add r0, #0x20
	str r2, [r1, r0]
_021E5BC8:
	bl ov00_021EC5B4
	cmp r0, #0
	beq _021E5BF0
	bl ov00_021EC724
	cmp r0, #4
	bne _021E5BE4
	ldr r0, _021E5C60 ; =_0221A680
	mov r2, #2
	ldr r1, [r0]
	ldr r0, _021E5C64 ; =0x00001070
	str r2, [r1, r0]
	b _021E5BF6
_021E5BE4:
	ldr r0, _021E5C60 ; =_0221A680
	mov r2, #0xc
	ldr r1, [r0]
	ldr r0, _021E5C64 ; =0x00001070
	str r2, [r1, r0]
	b _021E5BF6
_021E5BF0:
	bl ov00_021EC60C
	b _021E5C56
_021E5BF6:
	bl ov00_021E6690
	cmp r0, #0
	bne _021E5C5A
	ldr r0, _021E5C60 ; =_0221A680
	mov r2, #0xf1
	ldr r1, [r0]
	ldr r0, _021E5C74 ; =_0221640C
	lsl r2, r2, #4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r1, r0]
	ldr r3, _021E5C78 ; =_02216400
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	add r0, #0xe4
	add r0, r1, r0
	ldr r1, [r1, r2]
	ldr r2, _021E5C7C ; =0x000029E7
	bl ov00_021ED730
	add r0, sp, #0x14
	bl OS_GetOwnerInfo
	mov r1, #0
	ldr r2, _021E5C80 ; =ov00_021E61A8
	add r0, sp, #0x18
	add r3, r1, #0
	bl ov00_021EDD6C
	ldr r0, _021E5C60 ; =_0221A680
	mov r2, #3
	ldr r1, [r0]
	ldr r0, _021E5C64 ; =0x00001070
	str r2, [r1, r0]
_021E5C46:
	bl ov00_021EDB1C
	b _021E5C56
_021E5C4C:
	bl ov00_021EDB1C
	add sp, #0x68
	mov r0, #0x1b
	pop {r3, pc}
_021E5C56:
	bl ov00_021E6690
_021E5C5A:
	add sp, #0x68
	pop {r3, pc}
	nop
_021E5C60: .word _0221A680
_021E5C64: .word 0x00001070
_021E5C68: .word ov00_021E65D4
_021E5C6C: .word ov00_021E6638
_021E5C70: .word 0x00000F14
_021E5C74: .word _0221640C
_021E5C78: .word _02216400
_021E5C7C: .word 0x000029E7
_021E5C80: .word ov00_021E61A8
	thumb_func_end ov00_021E5B6C

