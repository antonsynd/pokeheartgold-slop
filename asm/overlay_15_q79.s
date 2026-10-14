#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FC01C
	.extern ov15_021FA074
	.extern ov15_021FB518
	.extern ov15_021FD788
	.extern ov15_021FE868
	.extern ov15_021FED3C
	.extern ov15_021FEF48
	.extern ov15_021FF058
	.extern ov15_02200140

	.text

	.text
	thumb_func_start ov15_021FC01C
ov15_021FC01C: ; 0x021FC01C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021FC134 ; =0x00000804
	ldr r0, [r5, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _021FC03A
	cmp r0, #2
	beq _021FC0CE
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	b _021FC12E
_021FC03A:
	add r0, r5, #0
	bl ov15_021FF058
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x36
	bl NewString_ReadMsgData
	add r4, r0, #0
	mov r0, #0x1a
	lsl r0, r0, #6
	ldrsh r0, [r5, r0]
	cmp r0, #1
	bne _021FC06E
	mov r2, #0xbd
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	sub r2, #0xc0
	ldr r2, [r5, r2]
	mov r1, #0
	add r2, #0x66
	ldrh r2, [r2]
	bl BufferItemName
	b _021FC082
_021FC06E:
	mov r2, #0xbd
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	sub r2, #0xc0
	ldr r2, [r5, r2]
	mov r1, #0
	add r2, #0x66
	ldrh r2, [r2]
	bl BufferItemNamePlural
_021FC082:
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	mov r2, #0x1a
	mov r0, #0xbd
	str r1, [sp, #4]
	lsl r2, r2, #6
	lsl r0, r0, #2
	ldrsh r2, [r5, r2]
	ldr r0, [r5, r0]
	mov r3, #3
	bl BufferIntegerAsString
	mov r0, #0xbd
	ldr r1, _021FC138 ; =0x000005E4
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl StringExpandPlaceholders
	add r0, r4, #0
	bl String_Delete
	add r0, r5, #0
	add r0, #0x34
	mov r1, #0xf
	bl FillWindowPixelBuffer
	add r0, r5, #0
	mov r1, #0
	bl ov15_021FEF48
	ldr r1, _021FC13C ; =0x00000616
	add sp, #8
	strb r0, [r5, r1]
	mov r0, #0xa
	pop {r3, r4, r5, pc}
_021FC0CE:
	add r0, r5, #0
	bl ov15_021FF058
	add r0, r5, #0
	add r0, #0x34
	mov r1, #1
	bl ClearFrameAndWindow2
	add r0, r5, #0
	add r0, #0x34
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r5, #4
	bl ScheduleWindowCopyToVram
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	add r0, r5, #0
	bl ov15_021FA074
	add r1, r4, #4
	add r4, #0x64
	add r2, r0, #0
	ldrb r4, [r4]
	mov r3, #0xc
	add r0, r5, #0
	mul r3, r4
	add r1, r1, r3
	mov r3, #0
	bl ov15_02200140
	add r0, r5, #0
	bl ov15_021FE868
	add r0, r5, #0
	bl ov15_021FED3C
	add r0, r5, #0
	mov r1, #1
	bl ov15_021FD788
	add r0, r5, #0
	bl ov15_021FB518
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021FC12E:
	mov r0, #9
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021FC134: .word 0x00000804
_021FC138: .word 0x000005E4
_021FC13C: .word 0x00000616
	thumb_func_end ov15_021FC01C

