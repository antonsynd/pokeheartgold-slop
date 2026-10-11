#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_trainer_card_main.inc"
	.include "global.inc"
	.public ov51_021E757C

	.text

	.text
	thumb_func_start ov51_021E757C
ov51_021E757C: ; 0x021E757C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _021E758E
	bl GF_AssertFail
_021E758E:
	ldr r0, [r5, #0x18]
	bl GetIGTHours
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0
	add r0, #0x50
	mov r2, #0xb8
	add r3, r1, #0
	bl FillWindowPixelRect
	ldr r2, _021E765C ; =0x000002D7
	mov r0, #0
	mov r1, #0x1b
	mov r3, #0x19
	bl NewMsgDataFromNarc
	str r0, [sp, #0x10]
	mov r0, #0x20
	mov r1, #0x19
	bl String_New
	add r4, r0, #0
	mov r0, #0x20
	mov r1, #0x19
	bl String_New
	str r0, [sp, #0x14]
	mov r0, #2
	mov r1, #0x20
	mov r2, #0x19
	bl MessageFormat_New_Custom
	add r6, r0, #0
	ldr r0, [r5, #0x18]
	bl GetIGTHours
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0
	mov r3, #3
	bl BufferIntegerAsString
	ldr r0, [r5, #0x18]
	bl GetIGTMinutes
	mov r3, #2
	add r2, r0, #0
	str r3, [sp]
	mov r1, #1
	add r0, r6, #0
	str r1, [sp, #4]
	bl BufferIntegerAsString
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x14]
	mov r1, #0x15
	bl ReadMsgDataIntoString
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	add r1, r4, #0
	bl StringExpandPlaceholders
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	mov r1, #0xe0
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	ldr r0, _021E7660 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r7, #0x50
	add r0, r7, #0
	add r2, r4, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x10]
	bl DestroyMsgData
	add r0, r4, #0
	bl String_Delete
	ldr r0, [sp, #0x14]
	bl String_Delete
	add r0, r6, #0
	bl MessageFormat_Delete
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E765C: .word 0x000002D7
_021E7660: .word 0x00010200
	thumb_func_end ov51_021E757C

