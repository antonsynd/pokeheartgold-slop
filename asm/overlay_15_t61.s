#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FD10C
	.public ov15_021FD24C
	.extern ov15_021F9F08
	.extern ov15_021FA074
	.extern ov15_021FB518
	.extern ov15_021FD788
	.extern ov15_021FE868
	.extern ov15_021FED3C
	.extern ov15_021FEF48
	.extern ov15_021FF058
	.extern ov15_02200140
	.extern ov15_02200458

	.text

	.text
	thumb_func_start ov15_021FD10C
ov15_021FD10C: ; 0x021FD10C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _021FD23C ; =0x00000804
	ldr r0, [r4, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _021FD12A
	cmp r0, #2
	beq _021FD1BA
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	b _021FD234
_021FD12A:
	add r0, r4, #0
	bl ov15_021FF058
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x4f
	bl NewString_ReadMsgData
	add r5, r0, #0
	mov r0, #0x1a
	lsl r0, r0, #6
	ldrsh r0, [r4, r0]
	cmp r0, #1
	ble _021FD15E
	mov r2, #0xbd
	lsl r2, r2, #2
	ldr r0, [r4, r2]
	sub r2, #0xc0
	ldr r2, [r4, r2]
	mov r1, #0
	add r2, #0x66
	ldrh r2, [r2]
	bl BufferItemNamePlural
	b _021FD172
_021FD15E:
	mov r2, #0xbd
	lsl r2, r2, #2
	ldr r0, [r4, r2]
	sub r2, #0xc0
	ldr r2, [r4, r2]
	mov r1, #0
	add r2, #0x66
	ldrh r2, [r2]
	bl BufferItemName
_021FD172:
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	mov r2, #0x1a
	mov r0, #0xbd
	str r1, [sp, #4]
	lsl r2, r2, #6
	ldrsh r3, [r4, r2]
	add r2, r2, #4
	lsl r0, r0, #2
	ldr r2, [r4, r2]
	ldr r0, [r4, r0]
	mul r2, r3
	mov r3, #6
	bl BufferIntegerAsString
	mov r0, #0xbd
	ldr r1, _021FD240 ; =0x000005E4
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
	ldr r1, _021FD244 ; =0x00000616
	add sp, #8
	strb r0, [r4, r1]
	mov r0, #0x17
	pop {r3, r4, r5, pc}
_021FD1BA:
	add r0, r4, #0
	bl ov15_021FF058
	ldr r0, _021FD248 ; =0x00000684
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E5D4
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
	bl ov15_021FED3C
	add r0, r4, #0
	bl ov15_021FB518
	add r0, r4, #0
	mov r1, #1
	bl ov15_02200458
	add r0, r4, #0
	mov r1, #1
	bl ov15_021FD788
	add sp, #8
	mov r0, #0x10
	pop {r3, r4, r5, pc}
_021FD234:
	mov r0, #0x16
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021FD23C: .word 0x00000804
_021FD240: .word 0x000005E4
_021FD244: .word 0x00000616
_021FD248: .word 0x00000684
	thumb_func_end ov15_021FD10C

	thumb_func_start ov15_021FD24C
ov15_021FD24C: ; 0x021FD24C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _021FD2F4 ; =0x00000616
	ldrb r0, [r4, r0]
	bl TextPrinterCheckActive
	cmp r0, #0
	beq _021FD264
	add sp, #4
	mov r0, #0x17
	pop {r3, r4, pc}
_021FD264:
	ldr r0, _021FD2F8 ; =0x00000643
	bl PlaySE
	mov r1, #0x1a
	lsl r1, r1, #6
	mov r0, #0x8f
	ldrsh r2, [r4, r1]
	add r1, r1, #4
	lsl r0, r0, #2
	ldr r1, [r4, r1]
	ldr r0, [r4, r0]
	mul r1, r2
	bl PlayerProfile_AddMoney
	mov r0, #0x1a
	lsl r0, r0, #6
	ldrsh r0, [r4, r0]
	cmp r0, #1
	bne _021FD2A8
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r0, r1, #0
	add r0, #0x75
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _021FD2B4
	add r0, r1, #0
	add r0, #0x75
	ldrb r0, [r0]
	add r1, #0x75
	add r0, r0, #1
	strb r0, [r1]
	b _021FD2B4
_021FD2A8:
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	add r0, #0x75
	strb r1, [r0]
_021FD2B4:
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	add r0, r2, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	add r3, r1, #0
	mul r3, r0
	add r1, r2, r3
	mov r0, #6
	mov r3, #0x1a
	str r0, [sp]
	add r2, #0x66
	lsl r3, r3, #6
	ldr r0, [r1, #4]
	ldrb r1, [r1, #0xd]
	ldrh r2, [r2]
	ldrh r3, [r4, r3]
	bl Pocket_TakeItem
	add r0, r4, #0
	bl ov15_021F9F08
	add r4, #0x34
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	mov r0, #0x18
	add sp, #4
	pop {r3, r4, pc}
	nop
_021FD2F4: .word 0x00000616
_021FD2F8: .word 0x00000643
	thumb_func_end ov15_021FD24C

