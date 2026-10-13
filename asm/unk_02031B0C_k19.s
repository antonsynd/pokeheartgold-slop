#include "constants/items.h"
	.include "asm/macros.inc"
	.include "unk_02031B0C.inc"
	.include "global.inc"
	.public sub_020320E0
	.public sub_02032158
	.public sub_020321A0
	.public sub_020322AC
	.extern sub_02031CEC
	.extern sub_02031D6C

	.text
	thumb_func_start sub_020320E0
sub_020320E0: ; 0x020320E0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r0, r3, #0
	mov r1, #0x20
	add r6, r2, #0
	bl Heap_AllocAtEnd
	mov r1, #0
	mov r2, #0x20
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r5, #0
	bl PlayerProfile_GetTrainerID
	str r0, [r4]
	add r0, r5, #0
	bl PlayerProfile_GetTrainerGender
	strb r0, [r4, #4]
	add r0, r5, #0
	bl PlayerProfile_GetLanguage
	strb r0, [r4, #5]
	add r0, r5, #0
	bl PlayerProfile_GetVersion
	strb r0, [r4, #6]
	add r0, r4, #0
	add r0, #8
	mov r1, #8
	bl StringFillEOS
	add r0, r5, #0
	bl PlayerProfile_GetNamePtr
	add r1, r0, #0
	add r0, r4, #0
	add r0, #8
	mov r2, #7
	bl CopyU16StringArrayN
	add r2, r4, #0
	add r0, r7, #0
	mov r1, #8
	add r2, #0x18
	bl sub_02031CEC
	ldr r0, _02032154 ; =0x0000FFFF
	cmp r6, r0
	bls _0203214C
	strh r0, [r4, #0x18]
	b _0203214E
_0203214C:
	strh r6, [r4, #0x18]
_0203214E:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02032154: .word 0x0000FFFF
	thumb_func_end sub_020320E0

	thumb_func_start sub_02032158
sub_02032158: ; 0x02032158
	push {r3, lr}
	ldr r3, [r0]
	ldr r2, [r1]
	cmp r3, r2
	beq _02032166
	mov r0, #0
	pop {r3, pc}
_02032166:
	ldrb r3, [r0, #4]
	ldrb r2, [r1, #4]
	cmp r3, r2
	beq _02032172
	mov r0, #0
	pop {r3, pc}
_02032172:
	ldrb r3, [r0, #6]
	ldrb r2, [r1, #6]
	cmp r3, r2
	beq _0203217E
	mov r0, #0
	pop {r3, pc}
_0203217E:
	ldrb r3, [r0, #5]
	ldrb r2, [r1, #5]
	cmp r3, r2
	beq _0203218A
	mov r0, #0
	pop {r3, pc}
_0203218A:
	add r0, #8
	add r1, #8
	bl StringNotEqual
	cmp r0, #0
	bne _0203219A
	mov r0, #1
	pop {r3, pc}
_0203219A:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02032158

	thumb_func_start sub_020321A0
sub_020321A0: ; 0x020321A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r4, #0
	add r5, r0, #0
	str r0, [sp]
	add r7, r1, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	str r4, [sp, #0x10]
	add r5, #0x38
_020321B4:
	add r0, r5, #0
	bl sub_02031D6C
	cmp r0, #0
	beq _020321CC
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	add r0, r0, #1
	add r5, #0x20
	str r0, [sp, #0x10]
	cmp r4, #3
	blt _020321B4
_020321CC:
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _020322A6
_020321D6:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r1, r0
	beq _02032298
	add r0, r7, #0
	add r0, #0x18
	bl sub_02031D6C
	cmp r0, #0
	beq _02032298
	mov r4, #0
	str r4, [sp, #0x14]
	ldr r5, [sp]
	ldr r6, [sp, #0x14]
	add r5, #0x20
_020321F4:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_02032158
	cmp r0, #0
	beq _0203220A
	lsl r0, r6, #0x18
	lsr r4, r0, #0x18
	mov r0, #1
	str r0, [sp, #0x14]
	b _02032212
_0203220A:
	add r6, r6, #1
	add r5, #0x20
	cmp r6, #3
	blt _020321F4
_02032212:
	ldr r0, [sp, #0x10]
	cmp r0, #3
	blt _02032222
	mov r0, #2
	mov ip, r0
	mov r0, #1
	str r0, [sp, #0x14]
	b _02032242
_02032222:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02032234
	ldr r0, [sp, #0x10]
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov ip, r0
	b _02032242
_02032234:
	ldr r0, [sp, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov ip, r0
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
_02032242:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0203227C
	mov r0, ip
	cmp r4, r0
	bhs _0203227C
	ldr r0, [sp, #0x10]
	sub r6, r0, #1
	cmp r4, r6
	bge _0203227C
	ldr r0, [sp]
	lsl r1, r4, #5
	add r5, r0, r1
_0203225C:
	add r3, r5, #0
	add r2, r5, #0
	add r3, #0x40
	add r2, #0x20
	add r5, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	add r4, r4, #1
	stmia r2!, {r0, r1}
	cmp r4, r6
	blt _0203225C
_0203227C:
	mov r0, ip
	lsl r1, r0, #5
	ldr r0, [sp]
	add r3, r7, #0
	add r2, r0, r1
	add r2, #0x20
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
_02032298:
	ldr r0, [sp, #0xc]
	add r7, #0x20
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _020321D6
_020322A6:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_020321A0

	thumb_func_start sub_020322AC
sub_020322AC: ; 0x020322AC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #9
	add r1, r7, #0
	bl String_New
	add r6, r0, #0
	cmp r5, #5
	bge _020322E2
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0x15
	add r3, r7, #0
	bl NewMsgDataFromNarc
	add r5, #0xe
	add r4, r0, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ReadMsgDataIntoString
	add r0, r4, #0
	bl DestroyMsgData
	b _02032304
_020322E2:
	cmp r5, #8
	bge _02032304
	sub r0, r5, #5
	lsl r0, r0, #0x18
	lsr r5, r0, #0x13
	add r0, r4, #0
	add r0, #0x38
	add r0, r0, r5
	bl sub_02031D6C
	cmp r0, #0
	beq _02032304
	add r4, #0x28
	add r0, r6, #0
	add r1, r4, r5
	bl CopyU16ArrayToString
_02032304:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020322AC

