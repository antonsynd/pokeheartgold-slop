	.include "asm/macros.inc"
	.include "overlay_38_thumb.inc"
	.include "global.inc"
	.public ov38_0221BEA8
	.public ov38_0221BF48
	.extern _02225040
	.extern ov38_0221BB44
	.extern ov38_0221BB68
	.extern ov38_0221BBD0
	.extern ov38_0222508C
	.extern ov38_02225094
	.extern ov38_0222512C

	.text

	.text
	thumb_func_start ov38_0221BEA8
ov38_0221BEA8: ; 0x0221BEA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _0221BF38 ; =_02225040
	add r4, r3, #0
	ldr r3, [r1]
	add r7, r0, #0
	cmp r3, #2
	beq _0221BEBC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0221BEBC:
	str r5, [r1, #0x10]
	str r2, [r1, #0x14]
	str r4, [r1, #0x18]
	ldr r2, [sp, #0x18]
	add r4, #8
	str r2, [r1, #0x1c]
	ldr r2, [sp, #0x1c]
	str r2, [r1, #0x20]
	bl strlen
	add r6, r0, #0
	add r0, r4, #0
	bl ov38_0221BB44
	add r1, r0, #0
	add r6, #0x45
	mov r0, #0xa
	add r1, r6, r1
	bl ov00_021EC2A8
	ldr r1, _0221BF38 ; =_02225040
	cmp r0, #0
	str r0, [r1, #0x24]
	bne _0221BEF0
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0221BEF0:
	ldr r1, _0221BF3C ; =ov38_0222512C
	add r2, r7, #0
	add r3, r5, #0
	bl sprintf
	ldr r0, _0221BF38 ; =_02225040
	ldr r6, [r0, #0x24]
	add r0, r6, #0
	bl strlen
	add r5, r0, #0
	ldr r0, _0221BF40 ; =ov38_0222508C
	bl strlen
	add r1, r6, r5
	add r1, r1, r0
	ldr r0, _0221BF38 ; =_02225040
	str r1, [r0, #0x28]
	ldr r0, _0221BF44 ; =ov38_02225094
	bl strlen
	ldr r1, _0221BF38 ; =_02225040
	ldr r2, [r1, #0x28]
	add r2, #0x28
	add r0, r2, r0
	str r0, [r1, #0x2c]
	add r0, r4, #0
	bl ov38_0221BB44
	add r1, r0, #1
	ldr r0, _0221BF38 ; =_02225040
	str r1, [r0, #0x30]
	mov r1, #3
	str r1, [r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221BF38: .word _02225040
_0221BF3C: .word ov38_0222512C
_0221BF40: .word ov38_0222508C
_0221BF44: .word ov38_02225094
	thumb_func_end ov38_0221BEA8

	thumb_func_start ov38_0221BF48
ov38_0221BF48: ; 0x0221BF48
	push {r3, lr}
	ldr r1, _0221BFE0 ; =_02225040
	ldr r0, [r1]
	cmp r0, #7
	bhi _0221BFD8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221BF5E: ; jump table
	.short _0221BFD8 - _0221BF5E - 2 ; case 0
	.short _0221BFD8 - _0221BF5E - 2 ; case 1
	.short _0221BFD8 - _0221BF5E - 2 ; case 2
	.short _0221BF6E - _0221BF5E - 2 ; case 3
	.short _0221BF94 - _0221BF5E - 2 ; case 4
	.short _0221BFA4 - _0221BF5E - 2 ; case 5
	.short _0221BFCA - _0221BF5E - 2 ; case 6
	.short _0221BFD8 - _0221BF5E - 2 ; case 7
_0221BF6E:
	ldr r0, [r1, #0x24]
	ldr r1, _0221BFE4 ; =ov38_0221BBD0
	ldr r2, _0221BFE8 ; =_02225040
	bl ov00_021FA21C
	ldr r1, _0221BFE0 ; =_02225040
	str r0, [r1, #4]
	bl ov38_0221BB68
	ldr r0, _0221BFE0 ; =_02225040
	ldr r1, [r0, #4]
	cmp r1, #0
	blt _0221BF8E
	mov r1, #4
	str r1, [r0]
	b _0221BFD8
_0221BF8E:
	mov r1, #1
	str r1, [r0]
	b _0221BFD8
_0221BF94:
	bl ov00_021FA118
	cmp r0, #0
	bne _0221BFD8
	ldr r0, _0221BFE0 ; =_02225040
	mov r1, #1
	str r1, [r0]
	b _0221BFD8
_0221BFA4:
	ldr r0, [r1, #0x24]
	ldr r1, _0221BFE4 ; =ov38_0221BBD0
	ldr r2, _0221BFE8 ; =_02225040
	bl ov00_021FA21C
	ldr r1, _0221BFE0 ; =_02225040
	str r0, [r1, #4]
	bl ov38_0221BB68
	ldr r0, _0221BFE0 ; =_02225040
	ldr r1, [r0, #4]
	cmp r1, #0
	blt _0221BFC4
	mov r1, #6
	str r1, [r0]
	b _0221BFD8
_0221BFC4:
	mov r1, #1
	str r1, [r0]
	b _0221BFD8
_0221BFCA:
	bl ov00_021FA118
	cmp r0, #0
	bne _0221BFD8
	ldr r0, _0221BFE0 ; =_02225040
	mov r1, #1
	str r1, [r0]
_0221BFD8:
	ldr r0, _0221BFE0 ; =_02225040
	ldr r0, [r0]
	pop {r3, pc}
	nop
_0221BFE0: .word _02225040
_0221BFE4: .word ov38_0221BBD0
_0221BFE8: .word _02225040
	thumb_func_end ov38_0221BF48

