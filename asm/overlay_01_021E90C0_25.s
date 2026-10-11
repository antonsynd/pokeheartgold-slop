#include "constants/sndseq.h"
#include "constants/moves.h"
#include "constants/std_script.h"
#include "constants/species.h"
#include "constants/sprites.h"
#include "constants/maps.h"
#include "constants/mmodel.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0096_D31R0201.h"
#include "msgdata/msg/msg_0066_D23R0102.h"
	.include "asm/macros.inc"
	.include "overlay_01_021E90C0.inc"
	.include "global.inc"
	.public ov01_021EA3E0
	.extern ov01_021EA578
	.extern ov01_021EA668

	.text

	.text
	thumb_func_start ov01_021EA3E0
ov01_021EA3E0: ; 0x021EA3E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x20
	add r2, r0, #0
	str r1, [sp]
	mov r0, #4
	add r1, r2, #0
	bl Sys_AllocAndReadFile
	mov r1, #0
	str r0, [sp, #0x14]
	str r1, [sp, #8]
	add r5, sp, #0x11c
	mov r6, #1
	mov r7, #2
	add r4, r1, #0
_021EA400:
	add r1, r5, #0
	mov r2, #0xd
	bl Ascii_GetDelim
	ldrsb r1, [r5, r4]
	cmp r1, #0x45
	bne _021EA41A
	ldrsb r1, [r5, r6]
	cmp r1, #0x4f
	bne _021EA41A
	ldrsb r1, [r5, r7]
	cmp r1, #0x46
	beq _021EA468
_021EA41A:
	add r1, r5, #0
	mov r2, #0xd
	bl Ascii_GetDelim
	add r1, r5, #0
	mov r2, #0xd
	bl Ascii_GetDelim
	add r1, r5, #0
	mov r2, #0xd
	bl Ascii_GetDelim
	add r1, r5, #0
	mov r2, #0xd
	bl Ascii_GetDelim
	add r1, r5, #0
	mov r2, #0xd
	bl Ascii_GetDelim
	add r1, r5, #0
	mov r2, #0xd
	bl Ascii_GetDelim
	add r1, r5, #0
	mov r2, #0xd
	bl Ascii_GetDelim
	add r1, r5, #0
	mov r2, #0xd
	bl Ascii_GetDelim
	add r1, r5, #0
	mov r2, #0xd
	bl Ascii_GetDelim
	ldr r1, [sp, #8]
	add r1, r1, #1
	str r1, [sp, #8]
_021EA468:
	mov r1, #0
	ldrsb r1, [r5, r1]
	cmp r1, #0x45
	bne _021EA400
	mov r1, #1
	ldrsb r1, [r5, r1]
	cmp r1, #0x4f
	bne _021EA400
	mov r1, #2
	ldrsb r1, [r5, r1]
	cmp r1, #0x46
	bne _021EA400
	ldr r0, [sp, #8]
	mov r1, #0x30
	add r4, r0, #0
	mul r4, r1
	mov r0, #4
	add r1, r4, #0
	bl Heap_Alloc
	ldr r1, [sp]
	add r2, r4, #0
	str r0, [r1]
	mov r1, #0
	bl MI_CpuFill8
	mov r1, #0
	str r1, [sp, #0x18]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x14]
	cmp r1, #0
	ble _021EA54E
	ldr r1, [sp, #0x18]
	str r1, [sp, #0x10]
_021EA4AC:
	ldr r1, [sp]
	mov r2, #0xd
	ldr r5, [r1]
	ldr r1, [sp, #0x10]
	add r4, r5, r1
	add r1, sp, #0x11c
	bl Ascii_GetDelim
	str r0, [sp, #4]
	add r0, sp, #0x11c
	add r1, sp, #0x1c
	mov r2, #0x2c
	bl Ascii_GetDelim
	add r0, sp, #0x1c
	bl Ascii_StrToL
	ldr r1, [sp, #0x10]
	add r6, r4, #0
	str r0, [r5, r1]
	add r0, r4, #6
	mov r7, #0
	add r6, #0xe
	str r0, [sp, #0xc]
	add r5, r4, #0
_021EA4DE:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	add r2, r6, #0
	bl ov01_021EA578
	str r0, [sp, #4]
	ldrh r1, [r5, #6]
	ldr r0, _021EA560 ; =0x0000FFFF
	cmp r1, r0
	beq _021EA4FE
	mov r0, #1
	ldrb r1, [r4, #4]
	lsl r0, r7
	orr r0, r1
	strb r0, [r4, #4]
	b _021EA502
_021EA4FE:
	mov r0, #0
	strh r0, [r5, #6]
_021EA502:
	ldr r0, [sp, #0xc]
	add r7, r7, #1
	add r0, r0, #2
	add r6, r6, #6
	add r5, r5, #2
	str r0, [sp, #0xc]
	cmp r7, #4
	blt _021EA4DE
	add r1, r4, #0
	ldr r0, [sp, #4]
	add r1, #0x26
	bl ov01_021EA668
	add r1, r4, #0
	add r1, #0x28
	bl ov01_021EA668
	add r1, r4, #0
	add r1, #0x2a
	bl ov01_021EA668
	add r4, #0x2c
	add r1, r4, #0
	bl ov01_021EA668
	add r1, sp, #0x11c
	mov r2, #0xd
	bl Ascii_GetDelim
	ldr r1, [sp, #0x10]
	add r1, #0x30
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x18]
	add r2, r1, #1
	ldr r1, [sp, #8]
	str r2, [sp, #0x18]
	cmp r2, r1
	blt _021EA4AC
_021EA54E:
	ldr r1, [sp, #0x14]
	mov r0, #4
	bl Heap_FreeExplicit
	ldr r0, [sp, #8]
	add sp, #0x1fc
	add sp, #0x20
	pop {r4, r5, r6, r7, pc}
	nop
_021EA560: .word 0x0000FFFF
	thumb_func_end ov01_021EA3E0

