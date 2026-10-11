	.include "asm/macros.inc"
	.include "unk_02012DD8.inc"
	.include "global.inc"
	.public sub_02012DD8
	.public sub_02012E10
	.public sub_02012E6C
	.public sub_02012F54
	.public sub_02013004
	.public sub_020131AC
	.public sub_020131F4

	.text

	.text
	thumb_func_start sub_02012DD8
sub_02012DD8: ; 0x02012DD8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	mov r1, #0x4c
	bl Heap_Alloc
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02012E6C
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02012DD8

	thumb_func_start sub_02012E10
sub_02012E10: ; 0x02012E10
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _02012E28
	cmp r0, #2
	beq _02012E44
	cmp r0, #3
	beq _02012E5E
	b _02012E62
_02012E28:
	add r0, r4, #0
	bl sub_02012F54
	cmp r0, #1
	bne _02012E66
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x44]
	ldr r2, [r5, #0x10]
	bl sub_02010F34
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02012E66
_02012E44:
	add r0, r4, #0
	bl sub_02010EC8
	ldr r0, [r5, #0x14]
	bl Heap_Free
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02012E66
_02012E5E:
	mov r6, #1
	b _02012E66
_02012E62:
	bl GF_AssertFail
_02012E66:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end sub_02012E10

	thumb_func_start sub_02012E6C
sub_02012E6C: ; 0x02012E6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	ldr r6, [sp, #0x38]
	str r3, [sp, #0x1c]
	str r2, [sp, #0x18]
	ldrb r1, [r4, #8]
	ldr r3, [sp, #0x44]
	add r2, r6, #0
	add r5, r0, #0
	ldr r7, [sp, #0x3c]
	bl sub_02010E64
	ldr r0, _02012F44 ; =0x007FFF80
	mov r1, #0
	str r0, [r5, #0x14]
	ldrsh r1, [r4, r1]
	lsr r0, r0, #7
	str r1, [r5, #0xc]
	mov r1, #2
	ldrsh r1, [r4, r1]
	str r1, [r5, #0x10]
	ldr r1, [r4, #4]
	str r1, [r5, #0x18]
	ldr r1, [r4, #4]
	str r1, [r5, #0x1c]
	ldr r1, [sp, #0x18]
	bl _s32_div_f
	str r0, [r5, #0x20]
	ldr r0, [sp, #0x18]
	str r0, [r5, #0x24]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0x28]
	mov r0, #0
	str r0, [r5, #0x2c]
	ldr r0, [sp, #0x40]
	str r7, [r5, #0x44]
	str r0, [r5, #0x48]
	ldr r0, [sp, #0x44]
	str r0, [r5, #0x30]
	ldrb r0, [r4, #0xb]
	str r0, [r5, #0x34]
	ldrb r0, [r4, #8]
	str r0, [r5, #0x38]
	str r6, [r5, #0x3c]
	mov r0, #1
	str r0, [r5, #0x40]
	add r0, r5, #0
	bl sub_020131AC
	ldr r0, _02012F48 ; =sub_02010F00
	ldr r2, _02012F4C ; =0x000003FF
	add r1, r5, #0
	bl SysTask_CreateOnVWaitQueue
	add r0, r5, #0
	mov r1, #0
	bl sub_02010EE0
	mov r1, #3
	str r6, [sp]
	lsl r1, r1, #8
	ldrsh r1, [r0, r1]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x12
	lsl r1, r1, #6
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x34]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #0xa]
	ldrb r3, [r4, #8]
	add r0, r7, #0
	bl sub_02010F84
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _02012F22
	ldr r3, [r5, #0x34]
	add r0, r7, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_02011068
	b _02012F2E
_02012F22:
	ldr r3, [r5, #0x34]
	add r0, r7, #0
	mov r1, #2
	add r2, r6, #0
	bl sub_02011068
_02012F2E:
	ldr r0, [sp, #0x44]
	ldr r2, _02012F50 ; =sub_02010C38
	str r0, [sp]
	ldr r0, [r5, #0x48]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_0200FF88
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02012F44: .word 0x007FFF80
_02012F48: .word sub_02010F00
_02012F4C: .word 0x000003FF
_02012F50: .word sub_02010C38
	thumb_func_end sub_02012E6C

	thumb_func_start sub_02012F54
sub_02012F54: ; 0x02012F54
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	add r1, r0, #1
	str r1, [r4, #0x2c]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	blt _02012FF0
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x24]
	sub r0, r0, #1
	cmp r0, #0
	ble _02012FE2
	ldr r2, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	add r0, r4, #0
	add r1, r2, r1
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	ldr r2, _02012FF4 ; =0x0000FFFF
	sub r1, r1, #1
	str r1, [r4, #0x24]
	ldr r1, [r4, #0x1c]
	add r0, #0x1c
	cmp r1, r2
	blt _02012F98
	add r3, r2, #0
_02012F8C:
	ldr r1, [r0]
	sub r1, r1, r2
	str r1, [r0]
	ldr r1, [r4, #0x1c]
	cmp r1, r3
	bge _02012F8C
_02012F98:
	cmp r1, #0
	bge _02012FAE
	add r2, r4, #0
	ldr r0, _02012FF4 ; =0x0000FFFF
	add r2, #0x1c
_02012FA2:
	ldr r1, [r2]
	add r1, r1, r0
	str r1, [r2]
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	blt _02012FA2
_02012FAE:
	ldr r0, _02012FF8 ; =0x00007FFF
	cmp r1, r0
	blt _02012FD0
	ldr r0, [r4, #0x18]
	cmp r1, r0
	bge _02012FD0
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _02012FD0
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x38]
	ldr r2, [r4, #0x3c]
	ldr r3, [r4, #0x34]
	bl sub_02010FEC
	mov r0, #0
	str r0, [r4, #0x40]
_02012FD0:
	add r0, r4, #0
	bl sub_020131AC
	ldr r0, _02012FFC ; =sub_02010F00
	ldr r2, _02013000 ; =0x000003FF
	add r1, r4, #0
	bl SysTask_CreateOnVWaitQueue
	b _02012FF0
_02012FE2:
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x30]
	bl sub_0200FFB4
	mov r0, #1
	pop {r4, pc}
_02012FF0:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_02012FF4: .word 0x0000FFFF
_02012FF8: .word 0x00007FFF
_02012FFC: .word sub_02010F00
_02013000: .word 0x000003FF
	thumb_func_end sub_02012F54

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

