	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_02246CC0
	.public ov83_02246D40
	.extern ov83_022447E0
	.extern ov83_02248024
	.extern ov83_02248028
	.extern ov83_0224802C
	.extern ov83_02248030

    .text

	.text
	thumb_func_start ov83_02246CC0
ov83_02246CC0: ; 0x02246CC0
	push {r4, lr}
	sub sp, #0x18
	ldr r1, _02246D3C ; =0x000005F8
	add r4, r0, #0
	ldr r0, [r4, r1]
	add r3, r1, #0
	add r0, #0x24
	add r3, #8
	ldrb r0, [r0]
	ldr r3, [r4, r3]
	cmp r3, r0
	beq _02246D36
	add r1, r1, #4
	ldr r1, [r4, r1]
	lsl r0, r0, #3
	add r0, r1, r0
	ldr r1, [r0, #4]
	cmp r1, #2
	bhi _02246CF4
	cmp r1, #0
	beq _02246CFE
	cmp r1, #1
	beq _02246D02
	cmp r1, #2
	beq _02246D06
	b _02246D0C
_02246CF4:
	mov r0, #1
	mvn r0, r0
	cmp r1, r0
	beq _02246D0A
	b _02246D0C
_02246CFE:
	mov r2, #0xc
	b _02246D0C
_02246D02:
	mov r2, #0xd
	b _02246D0C
_02246D06:
	mov r2, #0xe
	b _02246D0C
_02246D0A:
	mov r2, #0xf
_02246D0C:
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r1, r4, #0
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, #0xc0
	str r3, [sp, #0x14]
	bl ov83_022447E0
	ldr r0, _02246D3C ; =0x000005F8
	ldr r1, [r4, r0]
	add r0, #8
	add r1, #0x24
	ldrb r1, [r1]
	str r1, [r4, r0]
_02246D36:
	add sp, #0x18
	pop {r4, pc}
	nop
_02246D3C: .word 0x000005F8
	thumb_func_end ov83_02246CC0

	thumb_func_start ov83_02246D40
ov83_02246D40: ; 0x02246D40
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #6
	lsl r0, r0, #8
	ldr r1, [r5, r0]
	sub r0, #8
	ldr r0, [r5, r0]
	add r0, #0x24
	ldrb r0, [r0]
	cmp r1, r0
	beq _02246DEA
	mov r0, #0xaf
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	mov r2, #2
	bl ov83_0224777C
	cmp r0, #1
	beq _02246D6E
	mov r1, #1
	b _02246D70
_02246D6E:
	mov r1, #0
_02246D70:
	ldr r2, _02246DF0 ; =0x000005FC
	ldr r0, [r5, r2]
	sub r2, r2, #4
	ldr r2, [r5, r2]
	add r2, #0x24
	ldrb r2, [r2]
	lsl r2, r2, #3
	add r0, r0, r2
	ldr r2, [r0, #4]
	cmp r2, #5
	bhi _02246D96
	cmp r2, #3
	blo _02246DBE
	beq _02246DA0
	cmp r2, #4
	beq _02246DA8
	cmp r2, #5
	beq _02246DB0
	b _02246DBE
_02246D96:
	mov r0, #1
	mvn r0, r0
	cmp r2, r0
	beq _02246DB8
	b _02246DBE
_02246DA0:
	ldr r0, _02246DF4 ; =ov83_02248024
	lsl r1, r1, #1
	ldrh r4, [r0, r1]
	b _02246DBE
_02246DA8:
	ldr r0, _02246DF8 ; =ov83_02248028
	lsl r1, r1, #1
	ldrh r4, [r0, r1]
	b _02246DBE
_02246DB0:
	ldr r0, _02246DFC ; =ov83_0224802C
	lsl r1, r1, #1
	ldrh r4, [r0, r1]
	b _02246DBE
_02246DB8:
	ldr r0, _02246E00 ; =ov83_02248030
	lsl r1, r1, #1
	ldrh r4, [r0, r1]
_02246DBE:
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r1, r5, #0
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, #0xc0
	add r2, r4, #0
	str r3, [sp, #0x14]
	bl ov83_022447E0
	ldr r0, _02246E04 ; =0x000005F8
	ldr r1, [r5, r0]
	add r0, #8
	add r1, #0x24
	ldrb r1, [r1]
	str r1, [r5, r0]
_02246DEA:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_02246DF0: .word 0x000005FC
_02246DF4: .word ov83_02248024
_02246DF8: .word ov83_02248028
_02246DFC: .word ov83_0224802C
_02246E00: .word ov83_02248030
_02246E04: .word 0x000005F8
	thumb_func_end ov83_02246D40


