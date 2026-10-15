#include "config.h"
	.include "macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F0F90
	.extern ov112_021F0F70
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F0F90
ov112_021F0F90: ; 0x021F0F90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xc8
	add r5, r0, #0
	mov r0, #0
	add r6, sp, #8
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	mov r4, #6
_021F0FA2:
	stmia r6!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	sub r4, r4, #1
	bne _021F0FA2
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	cmp r5, #0
	bne _021F0FB8
	bl GF_AssertFail
_021F0FB8:
	ldr r0, [r5]
	cmp r0, #0
	bne _021F0FC2
	bl GF_AssertFail
_021F0FC2:
	ldr r0, [r5]
	ldr r0, [r0]
	bl Save_Pokewalker_Get
	ldr r0, [r5]
	ldr r0, [r0]
	bl Save_PlayerData_GetProfile
	add r4, r0, #0
	bl PlayerProfile_GetTrainerGender
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl PlayerProfile_GetNamePtr
	mov r6, #0
	str r0, [r5, #8]
	add r7, r6, #0
_021F0FE6:
	ldr r0, [r5]
	ldr r0, [r0, #4]
	add r4, r0, r7
	ldrh r1, [r4, #8]
	ldr r0, _021F1268 ; =0x0000FFF9
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _021F100A
	ldrh r1, [r4, #0xa]
	ldr r0, _021F126C ; =0x000001ED
	cmp r1, r0
	bhi _021F1008
	ldrh r1, [r4, #0xc]
	cmp r1, r0
	bls _021F100A
_021F1008:
	b _021F1122
_021F100A:
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0x1c
	bgt _021F1026
	bge _021F1040
	cmp r0, #0xe
	bgt _021F1052
	cmp r0, #0xc
	blt _021F1052
	beq _021F102C
	cmp r0, #0xe
	beq _021F1036
	b _021F1052
_021F1026:
	cmp r0, #0x1d
	beq _021F104A
	b _021F1052
_021F102C:
	add r1, r4, #0
	add r1, #0x84
	mov r0, #0xb
	strb r0, [r1]
	b _021F1052
_021F1036:
	add r1, r4, #0
	add r1, #0x84
	mov r0, #0xd
	strb r0, [r1]
	b _021F1052
_021F1040:
	add r1, r4, #0
	add r1, #0x84
	mov r0, #0xc
	strb r0, [r1]
	b _021F1052
_021F104A:
	add r1, r4, #0
	add r1, #0x84
	mov r0, #0xe
	strb r0, [r1]
_021F1052:
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0x1c
	blt _021F1060
	mov r0, #0
	b _021F10E6
_021F1060:
	cmp r0, #1
	blt _021F1074
	cmp r0, #0xa
	bgt _021F1074
	ldr r1, _021F1270 ; =0x00000143
	ldrb r1, [r5, r1]
	add r2, r1, #1
	ldr r1, _021F1270 ; =0x00000143
	strb r2, [r5, r1]
	b _021F10E6
_021F1074:
	cmp r0, #0xc
	bne _021F108A
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	add r1, #0xbc
	orr r2, r1
	mov r1, #0x51
	lsl r1, r1, #2
	str r2, [r5, r1]
	b _021F10E6
_021F108A:
	cmp r0, #0xe
	bne _021F10A0
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	sub r1, #0x44
	orr r2, r1
	mov r1, #0x51
	lsl r1, r1, #2
	str r2, [r5, r1]
	b _021F10E6
_021F10A0:
	cmp r0, #0xb
	bne _021F10C2
	ldr r1, _021F1274 ; =0x0000013F
	ldrb r1, [r5, r1]
	cmp r1, #0
	bne _021F10E6
	ldr r1, _021F1278 ; =0x00000141
	ldrb r1, [r5, r1]
	add r2, r1, #1
	ldr r1, _021F1278 ; =0x00000141
	strb r2, [r5, r1]
	ldrb r1, [r5, r1]
	cmp r1, #4
	blo _021F10E6
	ldr r1, _021F1274 ; =0x0000013F
	strb r6, [r5, r1]
	b _021F10E6
_021F10C2:
	cmp r0, #0xd
	bne _021F10E6
	mov r1, #5
	lsl r1, r1, #6
	ldrb r1, [r5, r1]
	cmp r1, #0
	bne _021F10E6
	ldr r1, _021F127C ; =0x00000142
	ldrb r1, [r5, r1]
	add r2, r1, #1
	ldr r1, _021F127C ; =0x00000142
	strb r2, [r5, r1]
	ldrb r1, [r5, r1]
	cmp r1, #4
	blo _021F10E6
	mov r1, #5
	lsl r1, r1, #6
	strb r6, [r5, r1]
_021F10E6:
	cmp r0, #0
	beq _021F1122
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F10F8
	bl GF_AssertFail
_021F10F8:
	ldr r1, [r4]
	ldr r0, [sp, #4]
	cmp r0, r1
	bls _021F1102
	str r1, [sp, #4]
_021F1102:
	ldr r0, _021F1280 ; =0x0000013E
	ldrb r0, [r5, r0]
	lsl r1, r0, #3
	add r0, sp, #8
	str r4, [r0, r1]
	ldr r0, _021F1280 ; =0x0000013E
	ldrb r0, [r5, r0]
	lsl r1, r0, #3
	add r0, sp, #8
	add r0, r0, r1
	str r6, [r0, #4]
	ldr r0, _021F1280 ; =0x0000013E
	ldrb r0, [r5, r0]
	add r1, r0, #1
	ldr r0, _021F1280 ; =0x0000013E
	strb r1, [r5, r0]
_021F1122:
	add r6, r6, #1
	add r7, #0x88
	cmp r6, #0x18
	bge _021F112C
	b _021F0FE6
_021F112C:
	ldr r1, _021F1280 ; =0x0000013E
	mov r0, #0
	ldrb r3, [r5, r1]
	cmp r3, #0
	ble _021F116A
	add r2, sp, #8
_021F1138:
	ldr r1, [r2]
	add r1, #0x84
	ldrb r1, [r1]
	cmp r1, #0x19
	bne _021F1162
	add r6, sp, #8
	lsl r4, r0, #3
	ldr r0, [r6, r4]
	ldr r1, [r0]
	ldr r0, [sp, #4]
	cmp r1, r0
	bls _021F116A
	cmp r0, #0
	bne _021F1158
	bl GF_AssertFail
_021F1158:
	ldr r0, [sp, #4]
	sub r1, r0, #1
	ldr r0, [r6, r4]
	str r1, [r0]
	b _021F116A
_021F1162:
	add r0, r0, #1
	add r2, #8
	cmp r0, r3
	blt _021F1138
_021F116A:
	mov r0, #0
	str r0, [sp]
	ldr r1, _021F1280 ; =0x0000013E
	ldr r3, _021F1284 ; =ov112_021F0F70
	ldrb r1, [r5, r1]
	add r0, sp, #8
	mov r2, #8
	bl MATH_QSort
	ldr r0, _021F1280 ; =0x0000013E
	ldrb r4, [r5, r0]
	cmp r4, #2
	bhs _021F11A6
	sub r0, r4, #1
	lsl r1, r0, #3
	add r0, sp, #8
	ldr r0, [r0, r1]
	mov r2, #0
	add r0, #0x76
	strb r2, [r0]
	bl GF_RTC_DateTimeToSec
	ldr r1, _021F1280 ; =0x0000013E
	ldrb r1, [r5, r1]
	sub r1, r1, #1
	lsl r2, r1, #3
	add r1, sp, #8
	ldr r1, [r1, r2]
	str r0, [r1]
	b _021F11EA
_021F11A6:
	sub r1, r4, #2
	lsl r1, r1, #3
	add r3, sp, #8
	ldr r2, [r3, r1]
	sub r4, r4, #1
	add r1, r2, #0
	add r1, #0x76
	lsl r4, r4, #3
	ldr r4, [r3, r4]
	ldrb r1, [r1]
	add r4, #0x76
	strb r1, [r4]
	add r1, r2, #0
	add r1, #0x84
	ldrb r1, [r1]
	cmp r1, #0x1b
	bne _021F11DC
	ldrb r0, [r5, r0]
	mov r1, #0xe1
	ldr r2, [r2]
	sub r0, r0, #1
	lsl r0, r0, #3
	lsl r1, r1, #4
	ldr r0, [r3, r0]
	add r1, r2, r1
	str r1, [r0]
	b _021F11EA
_021F11DC:
	ldrb r0, [r5, r0]
	ldr r1, [r2]
	sub r0, r0, #1
	lsl r0, r0, #3
	ldr r0, [r3, r0]
	add r1, r1, #5
	str r1, [r0]
_021F11EA:
	ldr r0, _021F1280 ; =0x0000013E
	mov r1, #0
	ldrb r0, [r5, r0]
	add r2, r1, #0
	add r7, r1, #0
	cmp r0, #0
	ble _021F1232
	add r6, sp, #8
_021F11FA:
	ldr r0, [r6]
	add r3, r0, #0
	add r3, #0x84
	ldrb r3, [r3]
	add r4, r0, #0
	add r4, #0x78
	ldrh r4, [r4]
	cmp r3, #0x1b
	bne _021F1222
	cmp r1, #0x1b
	bne _021F1222
	mov r1, #0x4b
	lsl r1, r1, #2
	cmp r4, r1
	bge _021F1222
	cmp r2, r1
	bge _021F1222
	add r0, #0x84
	mov r1, #0
	strb r1, [r0]
_021F1222:
	ldr r0, _021F1280 ; =0x0000013E
	add r7, r7, #1
	ldrb r0, [r5, r0]
	add r1, r3, #0
	add r2, r4, #0
	add r6, #8
	cmp r7, r0
	blt _021F11FA
_021F1232:
	mov r1, #0
	add r4, r1, #0
	cmp r0, #0
	ble _021F1260
	ldr r6, _021F1280 ; =0x0000013E
	add r2, sp, #8
	add r3, r5, #0
_021F1240:
	ldr r0, [r2]
	add r7, r0, #0
	add r7, #0x84
	ldrb r7, [r7]
	cmp r7, #0
	beq _021F1256
	add r7, r3, #0
	add r7, #0xc0
	str r0, [r7]
	add r3, r3, #4
	add r1, r1, #1
_021F1256:
	ldrb r0, [r5, r6]
	add r4, r4, #1
	add r2, #8
	cmp r4, r0
	blt _021F1240
_021F1260:
	ldr r0, _021F1280 ; =0x0000013E
	strb r1, [r5, r0]
	add sp, #0xc8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F1268: .word 0x0000FFF9
_021F126C: .word 0x000001ED
_021F1270: .word 0x00000143
_021F1274: .word 0x0000013F
_021F1278: .word 0x00000141
_021F127C: .word 0x00000142
_021F1280: .word 0x0000013E
_021F1284: .word ov112_021F0F70
	thumb_func_end ov112_021F0F90

