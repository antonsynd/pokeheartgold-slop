#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FCB64
	.extern ov15_021FD43C
	.extern ov15_021FD574
	.extern ov15_021FD788
	.extern ov15_021FECA0
	.extern ov15_021FEDEC
	.extern ov15_021FEF48
	.extern ov15_021FF068
	.extern ov15_021FF0FC
	.extern ov15_021FF4EC
	.extern ov15_021FFF24
	.extern ov15_022002B4
	.extern ov15_02200458

	.text

	.text
	thumb_func_start ov15_021FCB64
ov15_021FCB64: ; 0x021FCB64
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #0x8d
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r3, r1, #4
	add r1, #0x64
	ldrb r2, [r1]
	mov r1, #0xc
	mul r1, r2
	add r5, r3, r1
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	bl ov15_021FD574
	mov r0, #0x1a
	mov r1, #1
	lsl r0, r0, #6
	strh r1, [r4, r0]
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x66
	ldrh r0, [r0]
	mov r2, #6
	bl GetItemAttr
	asr r1, r0, #1
	ldr r0, _021FCD70 ; =0x00000684
	mov r2, #0
	str r1, [r4, r0]
	ldr r0, [r4]
	mov r1, #5
	bl ov15_021FD43C
	ldr r0, [r4]
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	mov r0, #0xa5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	add r0, r4, #0
	mov r1, #0
	bl ov15_02200458
	add r0, r4, #0
	mov r1, #0
	bl ov15_021FD788
	ldr r2, _021FCD74 ; =0x00000644
	mov r1, #6
	ldr r2, [r4, r2]
	ldrsh r1, [r5, r1]
	add r0, r4, #0
	sub r2, #8
	bl ov15_021FF4EC
	ldr r1, _021FCD74 ; =0x00000644
	add r0, r4, #0
	ldr r1, [r4, r1]
	sub r1, #8
	bl ov15_022002B4
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	add r0, r4, #0
	add r2, #0x66
	ldrh r2, [r2]
	add r1, r4, #4
	bl ov15_021FECA0
	add r0, r4, #0
	bl ov15_021FFF24
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	add r0, #0x66
	ldrh r0, [r0]
	mov r2, #6
	bl GetItemAttr
	cmp r0, #0
	bne _021FCC32
	ldr r0, _021FCD70 ; =0x00000684
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021FCC7C
_021FCC32:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x4c
	bl NewString_ReadMsgData
	mov r2, #0xbd
	lsl r2, r2, #2
	add r5, r0, #0
	ldr r0, [r4, r2]
	sub r2, #0xc0
	ldr r2, [r4, r2]
	mov r1, #0
	add r2, #0x66
	ldrh r2, [r2]
	bl BufferItemName
	mov r0, #0xbd
	ldr r1, _021FCD78 ; =0x000005E4
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
	ldr r1, _021FCD7C ; =0x00000616
	add sp, #8
	strb r0, [r4, r1]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_021FCC7C:
	add r0, r4, #0
	mov r1, #0
	bl ov15_021FF0FC
	add r0, r4, #0
	bl ov15_021FF068
	add r0, r4, #0
	mov r1, #2
	bl ov15_021FEDEC
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	mov r3, #6
	add r0, r2, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r1, r2, r0
	add r2, #0x66
	ldr r0, [r1, #4]
	ldrb r1, [r1, #0xd]
	ldrh r2, [r2]
	bl Pocket_GetQuantity
	cmp r0, #1
	bne _021FCD0C
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x4e
	bl NewString_ReadMsgData
	mov r1, #0
	add r5, r0, #0
	mov r2, #0x1a
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	lsl r2, r2, #6
	mov r0, #0xbd
	ldrsh r3, [r4, r2]
	add r2, r2, #4
	lsl r0, r0, #2
	ldr r2, [r4, r2]
	ldr r0, [r4, r0]
	mul r2, r3
	mov r3, #6
	bl BufferIntegerAsString
	mov r0, #0xbd
	ldr r1, _021FCD78 ; =0x000005E4
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl StringExpandPlaceholders
	add r0, r5, #0
	bl String_Delete
	add r0, r4, #0
	mov r1, #1
	bl ov15_021FEF48
	ldr r1, _021FCD7C ; =0x00000616
	add sp, #8
	strb r0, [r4, r1]
	mov r0, #0x15
	pop {r3, r4, r5, pc}
_021FCD0C:
	mov r1, #6
	ldrsh r3, [r5, r1]
	ldr r1, _021FCD74 ; =0x00000644
	ldr r0, [r5]
	ldr r2, [r4, r1]
	add r1, #0x3e
	add r2, r3, r2
	sub r2, #8
	lsl r2, r2, #2
	add r0, r0, r2
	ldrh r0, [r0, #2]
	strh r0, [r4, r1]
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x4d
	bl NewString_ReadMsgData
	mov r2, #0xbd
	lsl r2, r2, #2
	add r5, r0, #0
	ldr r0, [r4, r2]
	sub r2, #0xc0
	ldr r2, [r4, r2]
	mov r1, #0
	add r2, #0x66
	ldrh r2, [r2]
	bl BufferItemName
	mov r0, #0xbd
	ldr r1, _021FCD78 ; =0x000005E4
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl StringExpandPlaceholders
	add r0, r5, #0
	bl String_Delete
	add r0, r4, #0
	mov r1, #1
	bl ov15_021FEF48
	ldr r1, _021FCD7C ; =0x00000616
	strb r0, [r4, r1]
	mov r0, #0x11
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021FCD70: .word 0x00000684
_021FCD74: .word 0x00000644
_021FCD78: .word 0x000005E4
_021FCD7C: .word 0x00000616
	thumb_func_end ov15_021FCB64

