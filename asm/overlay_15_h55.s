#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FB830
	.extern ov15_021FA074
	.extern ov15_021FB518
	.extern ov15_021FD788
	.extern ov15_021FE868
	.extern ov15_021FED3C
	.extern ov15_021FEF48
	.extern ov15_021FF004
	.extern ov15_021FF058
	.extern ov15_02200140
	.extern ov15_02200294

	.text

	.text
	thumb_func_start ov15_021FB830
ov15_021FB830: ; 0x021FB830
	push {r3, r4, r5, lr}
	ldr r1, _021FB9C0 ; =0x0000067B
	add r4, r0, #0
	ldrb r0, [r4, r1]
	cmp r0, #3
	bhi _021FB936
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FB848: ; jump table
	.short _021FB850 - _021FB848 - 2 ; case 0
	.short _021FB8AC - _021FB848 - 2 ; case 1
	.short _021FB90C - _021FB848 - 2 ; case 2
	.short _021FB926 - _021FB848 - 2 ; case 3
_021FB850:
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x66
	ldrh r0, [r0]
	bl TMHMGetMove
	add r5, r0, #0
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r2, r5, #0
	bl BufferMoveName
	add r0, r5, #0
	bl MoveIsHM
	cmp r0, #1
	ldr r2, _021FB9C4 ; =0x000005E4
	bne _021FB88A
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	mov r1, #0x3c
	bl ReadMsgDataIntoString
	b _021FB898
_021FB88A:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	mov r1, #0x3b
	bl ReadMsgDataIntoString
_021FB898:
	add r0, r4, #0
	mov r1, #0
	bl ov15_021FEF48
	ldr r1, _021FB9C8 ; =0x00000616
	strb r0, [r4, r1]
	mov r0, #1
	add r1, #0x65
	strb r0, [r4, r1]
	b _021FB9BA
_021FB8AC:
	sub r1, #0x65
	ldrb r0, [r4, r1]
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _021FB936
	ldr r0, _021FB9CC ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _021FB8CA
	ldr r0, _021FB9D0 ; =gSystem + 0x40
	ldrh r0, [r0, #0x24]
	cmp r0, #0
	beq _021FB9BA
_021FB8CA:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x3d
	bl NewString_ReadMsgData
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x34
	mov r1, #0xf
	bl FillWindowPixelBuffer
	mov r0, #0xbd
	ldr r1, _021FB9C4 ; =0x000005E4
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl StringExpandPlaceholders
	add r0, r5, #0
	bl String_Delete
	add r0, r4, #0
	mov r1, #0
	bl ov15_021FEF48
	ldr r1, _021FB9C8 ; =0x00000616
	strb r0, [r4, r1]
	mov r0, #2
	add r1, #0x65
	strb r0, [r4, r1]
	b _021FB9BA
_021FB90C:
	sub r1, #0x65
	ldrb r0, [r4, r1]
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _021FB9BA
	add r0, r4, #0
	bl ov15_021FF004
	ldr r0, _021FB9C0 ; =0x0000067B
	mov r1, #3
	strb r1, [r4, r0]
	b _021FB9BA
_021FB926:
	ldr r0, _021FB9D4 ; =0x00000804
	ldr r0, [r4, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _021FB938
	cmp r0, #2
	beq _021FB956
_021FB936:
	b _021FB9BA
_021FB938:
	add r0, r4, #0
	bl ov15_021FF058
	mov r0, #1
	mov r1, #6
	bl sub_020880CC
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x68
	strh r1, [r0]
	mov r0, #0x25
	pop {r3, r4, r5, pc}
_021FB956:
	add r0, r4, #0
	bl ov15_021FF058
	add r0, r4, #0
	bl ov15_021FED3C
	add r0, r4, #0
	add r0, #0x34
	mov r1, #1
	bl ClearFrameAndWindow2
	add r0, r4, #0
	add r0, #0x34
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r4, #4
	bl ScheduleWindowCopyToVram
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r5, [r4, r0]
	add r0, r4, #0
	bl ov15_021FA074
	add r1, r5, #4
	add r5, #0x64
	add r2, r0, #0
	ldrb r5, [r5]
	mov r3, #0xc
	add r0, r4, #0
	mul r3, r5
	add r1, r1, r3
	mov r3, #0
	bl ov15_02200140
	add r0, r4, #0
	bl ov15_021FE868
	add r0, r4, #0
	bl ov15_02200294
	add r0, r4, #0
	bl ov15_021FB518
	add r0, r4, #0
	mov r1, #1
	bl ov15_021FD788
	mov r0, #1
	pop {r3, r4, r5, pc}
_021FB9BA:
	mov r0, #0xd
	pop {r3, r4, r5, pc}
	nop
_021FB9C0: .word 0x0000067B
_021FB9C4: .word 0x000005E4
_021FB9C8: .word 0x00000616
_021FB9CC: .word gSystem
_021FB9D0: .word gSystem + 0x40
_021FB9D4: .word 0x00000804
	thumb_func_end ov15_021FB830

