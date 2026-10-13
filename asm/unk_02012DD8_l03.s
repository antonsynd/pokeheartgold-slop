	.include "asm/macros.inc"
	.include "unk_02012DD8.inc"
	.include "global.inc"
	.public sub_02013004
	.public sub_020131AC
	.public sub_020131F4

	.text

	.text
	thumb_func_start sub_02013004
sub_02013004: ; 0x02013004
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r0, [sp, #0x28]
	add r5, r3, #0
	str r0, [sp, #0x10]
	asr r0, r0, #4
	add r4, r2, #0
	lsl r2, r0, #1
	add r0, r2, #1
	str r1, [sp]
	lsl r1, r0, #1
	ldr r0, _020131A4 ; =FX_SinCosTable_
	ldr r3, [sp, #0x2c]
	ldrsh r1, [r0, r1]
	ldr r0, _020131A8 ; =0x0000FFFF
	ldr r6, [sp, #0x30]
	mul r0, r1
	asr r1, r0, #0xc
	ldr r0, [sp]
	ldr r7, [sp, #0x34]
	add r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, _020131A4 ; =FX_SinCosTable_
	lsl r1, r2, #1
	ldrsh r1, [r0, r1]
	ldr r0, _020131A8 ; =0x0000FFFF
	mul r0, r1
	asr r0, r0, #0xc
	add r1, r4, r0
	asr r0, r3, #4
	lsl r0, r0, #1
	mov ip, r0
	add r0, r0, #1
	lsl r2, r0, #1
	ldr r0, _020131A4 ; =FX_SinCosTable_
	ldrsh r2, [r0, r2]
	ldr r0, _020131A8 ; =0x0000FFFF
	mul r0, r2
	asr r2, r0, #0xc
	ldr r0, [sp]
	add r0, r0, r2
	str r0, [sp, #8]
	mov r0, ip
	lsl r2, r0, #1
	ldr r0, _020131A4 ; =FX_SinCosTable_
	ldrsh r2, [r0, r2]
	ldr r0, _020131A8 ; =0x0000FFFF
	mul r0, r2
	asr r0, r0, #0xc
	add r0, r4, r0
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	sub r2, r3, r0
	ldr r0, _020131A8 ; =0x0000FFFF
	lsr r0, r0, #1
	cmp r2, r0
	bne _0201308C
	cmp r5, #0
	blt _0201307E
	cmp r5, r4
	blt _02013080
_0201307E:
	b _020131A0
_02013080:
	mov r0, #0
	str r0, [r6]
	mov r0, #0xff
	add sp, #0x14
	str r0, [r7]
	pop {r4, r5, r6, r7, pc}
_0201308C:
	cmp r3, #0
	blt _02013100
	ldr r0, _020131A8 ; =0x0000FFFF
	lsr r0, r0, #1
	cmp r3, r0
	bge _02013100
	cmp r1, r4
	bge _020130A0
	add r0, r1, #0
	b _020130A2
_020130A0:
	add r0, r4, #0
_020130A2:
	cmp r1, r4
	ble _020130AA
	add r2, r1, #0
	b _020130AC
_020130AA:
	add r2, r4, #0
_020130AC:
	cmp r0, r5
	bgt _020130CC
	cmp r5, r2
	bgt _020130CC
	ldr r2, [sp, #0xc]
	ldr r0, [sp]
	sub r2, r2, r0
	sub r0, r5, r1
	mul r0, r2
	sub r1, r1, r4
	bl _s32_div_f
	ldr r1, [sp, #0xc]
	add r0, r1, r0
	str r0, [r6]
	b _020130E6
_020130CC:
	ldr r1, [sp, #8]
	ldr r0, [sp]
	sub r1, r1, r0
	ldr r0, [sp, #4]
	sub r0, r5, r0
	mul r0, r1
	ldr r1, [sp, #4]
	sub r1, r1, r4
	bl _s32_div_f
	ldr r1, [sp, #8]
	add r0, r1, r0
	str r0, [r6]
_020130E6:
	ldr r0, [r6]
	cmp r0, #0xff
	ble _020130F0
	mov r0, #0xff
	b _020130F6
_020130F0:
	cmp r0, #0
	bge _020130F6
	mov r0, #0
_020130F6:
	str r0, [r6]
	mov r0, #0xff
	add sp, #0x14
	str r0, [r7]
	pop {r4, r5, r6, r7, pc}
_02013100:
	cmp r1, r4
	bge _02013108
	add r0, r1, #0
	b _0201310A
_02013108:
	add r0, r4, #0
_0201310A:
	cmp r1, r4
	ble _02013112
	add r2, r1, #0
	b _02013114
_02013112:
	add r2, r4, #0
_02013114:
	cmp r0, r5
	bgt _02013144
	cmp r5, r2
	bgt _02013144
	ldr r2, [sp, #0xc]
	ldr r0, [sp]
	sub r2, r2, r0
	sub r0, r5, r1
	mul r0, r2
	sub r1, r1, r4
	bl _s32_div_f
	ldr r1, [sp, #0xc]
	add r0, r1, r0
	str r0, [r6]
	cmp r0, #0xff
	ble _0201313A
	mov r0, #0xff
	b _02013140
_0201313A:
	cmp r0, #0
	bge _02013140
	mov r0, #0
_02013140:
	str r0, [r6]
	b _02013148
_02013144:
	mov r0, #0
	str r0, [r6]
_02013148:
	ldr r0, [sp, #4]
	cmp r0, r4
	bge _02013152
	add r1, r0, #0
	b _02013154
_02013152:
	add r1, r4, #0
_02013154:
	ldr r0, [sp, #4]
	cmp r0, r4
	bgt _0201315C
	add r0, r4, #0
_0201315C:
	cmp r1, r5
	bgt _02013190
	cmp r5, r0
	bgt _02013190
	ldr r1, [sp, #8]
	ldr r0, [sp]
	sub r1, r1, r0
	ldr r0, [sp, #4]
	sub r0, r5, r0
	mul r0, r1
	ldr r1, [sp, #4]
	sub r1, r1, r4
	bl _s32_div_f
	ldr r1, [sp, #8]
	add r0, r1, r0
	str r0, [r7]
	cmp r0, #0xff
	ble _02013186
	mov r0, #0xff
	b _0201318C
_02013186:
	cmp r0, #0
	bge _0201318C
	mov r0, #0
_0201318C:
	str r0, [r7]
	b _02013194
_02013190:
	ldr r0, [r6]
	str r0, [r7]
_02013194:
	ldr r1, [r7]
	ldr r0, [r6]
	cmp r0, r1
	ble _020131A0
	str r1, [r6]
	str r0, [r7]
_020131A0:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_020131A4: .word FX_SinCosTable_
_020131A8: .word 0x0000FFFF
	thumb_func_end sub_02013004

	thumb_func_start sub_020131AC
sub_020131AC: ; 0x020131AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r1, #0
	add r5, r0, #0
	bl sub_02010EE0
	add r4, r0, #0
	mov r6, #0
	add r7, sp, #0x14
_020131BE:
	ldr r0, [r5, #0x18]
	add r3, r6, #0
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r0, sp, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	bl sub_02013004
	mov r0, #3
	ldr r1, [sp, #0x14]
	lsl r0, r0, #8
	strh r1, [r4, r0]
	mov r0, #0x12
	ldr r1, [sp, #0x10]
	lsl r0, r0, #6
	strh r1, [r4, r0]
	add r6, r6, #1
	add r4, r4, #2
	cmp r6, #0xc0
	blt _020131BE
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020131AC

	thumb_func_start sub_020131F4
sub_020131F4: ; 0x020131F4
	cmp r1, #0
	ldr r1, _02013218 ; =0xFFFF1FFF
	bne _0201320A
	mov r3, #1
	lsl r3, r3, #0x1a
	ldr r2, [r3]
	lsl r0, r0, #0xd
	and r1, r2
	orr r0, r1
	str r0, [r3]
	bx lr
_0201320A:
	ldr r3, _0201321C ; =0x04001000
	lsl r0, r0, #0xd
	ldr r2, [r3]
	and r1, r2
	orr r0, r1
	str r0, [r3]
	bx lr
	.balign 4, 0
_02013218: .word 0xFFFF1FFF
_0201321C: .word 0x04001000
	thumb_func_end sub_020131F4

