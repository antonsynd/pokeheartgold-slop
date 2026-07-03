	.include "asm/macros.inc"
	.include "overlay_83_022479E4.inc"
	.include "global.inc"

    .text

	thumb_func_start ov83_022479E4
ov83_022479E4: ; 0x022479E4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r6, r3, #0
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x28]
	add r1, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov83_02247998
	add r0, r4, #0
	bl String_Delete
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov83_022479E4

	thumb_func_start ov83_02247A18
ov83_02247A18: ; 0x02247A18
	ldr r3, _02247A1C ; =GridInputHandler_Free
	bx r3
	.balign 4, 0
_02247A1C: .word GridInputHandler_Free
	thumb_func_end ov83_02247A18

	thumb_func_start ov83_02247A20
ov83_02247A20: ; 0x02247A20
	bx lr
	.balign 4, 0
	thumb_func_end ov83_02247A20

	thumb_func_start ov83_02247A24
ov83_02247A24: ; 0x02247A24
	push {lr}
	sub sp, #0xc
	add r3, r0, #0
	cmp r2, #3
	bne _02247A4A
	mov r0, #1
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	ldr r0, _02247A68 ; =ov83_02248530
	ldr r1, _02247A6C ; =ov83_022485A8
	ldr r2, _02247A70 ; =ov83_02248500
	bl GridInputHandler_Create
	add sp, #0xc
	pop {pc}
_02247A4A:
	mov r0, #1
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	ldr r0, _02247A74 ; =ov83_02248558
	ldr r1, _02247A78 ; =ov83_022485E8
	ldr r2, _02247A70 ; =ov83_02248500
	bl GridInputHandler_Create
	add sp, #0xc
	pop {pc}
	nop
_02247A68: .word ov83_02248530
_02247A6C: .word ov83_022485A8
_02247A70: .word ov83_02248500
_02247A74: .word ov83_02248558
_02247A78: .word ov83_022485E8
	thumb_func_end ov83_02247A24

	thumb_func_start ov83_02247A7C
ov83_02247A7C: ; 0x02247A7C
	push {lr}
	sub sp, #0xc
	add r3, r0, #0
	cmp r2, #3
	bne _02247AA2
	mov r0, #1
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	ldr r0, _02247AC0 ; =ov83_02248530
	ldr r1, _02247AC4 ; =ov83_022485A8
	ldr r2, _02247AC8 ; =ov83_02248510
	bl GridInputHandler_Create
	add sp, #0xc
	pop {pc}
_02247AA2:
	mov r0, #1
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	ldr r0, _02247ACC ; =ov83_02248558
	ldr r1, _02247AD0 ; =ov83_022485E8
	ldr r2, _02247AC8 ; =ov83_02248510
	bl GridInputHandler_Create
	add sp, #0xc
	pop {pc}
	nop
_02247AC0: .word ov83_02248530
_02247AC4: .word ov83_022485A8
_02247AC8: .word ov83_02248510
_02247ACC: .word ov83_02248558
_02247AD0: .word ov83_022485E8
	thumb_func_end ov83_02247A7C

	thumb_func_start ov83_02247AD4
ov83_02247AD4: ; 0x02247AD4
	push {r3, lr}
	bl GridInputHandler_HandleInput_NoHold
	add r1, r0, #4
	cmp r1, #3
	bhi _02247AF6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02247AEC: ; jump table
	.short _02247AF4 - _02247AEC - 2 ; case 0
	.short _02247AF4 - _02247AEC - 2 ; case 1
	.short _02247AF4 - _02247AEC - 2 ; case 2
	.short _02247AF4 - _02247AEC - 2 ; case 3
_02247AF4:
	pop {r3, pc}
_02247AF6:
	lsl r1, r0, #2
	ldr r0, _02247B00 ; =ov83_02248544
	ldr r0, [r0, r1]
	pop {r3, pc}
	nop
_02247B00: .word ov83_02248544
	thumb_func_end ov83_02247AD4

	thumb_func_start ov83_02247B04
ov83_02247B04: ; 0x02247B04
	push {r4, lr}
	add r4, r0, #0
	bl GridInputHandler_GetNextInput
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	add r3, r2, #0
	bl GridInputHandler_SetNextLastUnk0FInputs
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov83_02247B04

	thumb_func_start ov83_02247B1C
ov83_02247B1C: ; 0x02247B1C
	ldr r3, _02247B2C ; =ov83_02248544
	lsl r1, r1, #2
	lsl r2, r2, #2
	ldr r1, [r3, r1]
	ldr r2, [r3, r2]
	ldr r3, _02247B30 ; =ov83_02242AB4
	bx r3
	nop
_02247B2C: .word ov83_02248544
_02247B30: .word ov83_02242AB4
	thumb_func_end ov83_02247B1C

	thumb_func_start ov83_02247B34
ov83_02247B34: ; 0x02247B34
	ldr r3, _02247B44 ; =ov83_02248544
	lsl r1, r1, #2
	lsl r2, r2, #2
	ldr r1, [r3, r1]
	ldr r2, [r3, r2]
	ldr r3, _02247B48 ; =ov83_02242AB4
	bx r3
	nop
_02247B44: .word ov83_02248544
_02247B48: .word ov83_02242AB4
	thumb_func_end ov83_02247B34

	thumb_func_start ov83_02247B4C
ov83_02247B4C: ; 0x02247B4C
	ldr r3, _02247B5C ; =ov83_02248544
	lsl r1, r1, #2
	lsl r2, r2, #2
	ldr r1, [r3, r1]
	ldr r2, [r3, r2]
	ldr r3, _02247B60 ; =ov83_022469D8
	bx r3
	nop
_02247B5C: .word ov83_02248544
_02247B60: .word ov83_022469D8
	thumb_func_end ov83_02247B4C

	thumb_func_start ov83_02247B64
ov83_02247B64: ; 0x02247B64
	ldr r3, _02247B74 ; =ov83_02248544
	lsl r1, r1, #2
	lsl r2, r2, #2
	ldr r1, [r3, r1]
	ldr r2, [r3, r2]
	ldr r3, _02247B78 ; =ov83_022469D8
	bx r3
	nop
_02247B74: .word ov83_02248544
_02247B78: .word ov83_022469D8
	thumb_func_end ov83_02247B64

	thumb_func_start ov83_02247B7C
ov83_02247B7C: ; 0x02247B7C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	ldr r0, _02247BB8 ; =ov83_022485C8
	ldr r1, _02247BBC ; =ov83_02248610
	ldr r2, _02247BC0 ; =ov83_02248520
	add r3, r4, #0
	bl GridInputHandler_Create
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x40
	mov r2, #0x34
	mov r3, #3
	bl ov83_02242AC0
	add r0, r4, #0
	mov r1, #0
	bl ov83_02242AE0
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02247BB8: .word ov83_022485C8
_02247BBC: .word ov83_02248610
_02247BC0: .word ov83_02248520
	thumb_func_end ov83_02247B7C

	thumb_func_start ov83_02247BC4
ov83_02247BC4: ; 0x02247BC4
	push {r4, lr}
	add r4, r0, #0
	bl GridInputHandler_HandleInput_NoHold
	add r1, r0, #4
	cmp r1, #3
	bhi _02247C28
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02247BDE: ; jump table
	.short _02247BE6 - _02247BDE - 2 ; case 0
	.short _02247BE6 - _02247BDE - 2 ; case 1
	.short _02247BE6 - _02247BDE - 2 ; case 2
	.short _02247BE8 - _02247BDE - 2 ; case 3
_02247BE6:
	pop {r4, pc}
_02247BE8:
	ldr r0, _02247C4C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0x20
	tst r0, r1
	beq _02247C08
	add r0, r4, #0
	bl GridInputHandler_GetNextInput
	cmp r0, #0
	beq _02247C04
	cmp r0, #2
	beq _02247C04
	cmp r0, #4
	bne _02247C08
_02247C04:
	mov r0, #6
	pop {r4, pc}
_02247C08:
	ldr r0, _02247C4C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0x10
	tst r0, r1
	beq _02247C30
	add r0, r4, #0
	bl GridInputHandler_GetNextInput
	cmp r0, #1
	beq _02247C24
	cmp r0, #3
	beq _02247C24
	cmp r0, #5
	bne _02247C30
_02247C24:
	mov r0, #7
	pop {r4, pc}
_02247C28:
	lsl r1, r0, #2
	ldr r0, _02247C50 ; =ov83_0224858C
	ldr r0, [r0, r1]
	pop {r4, pc}
_02247C30:
	ldr r0, _02247C54 ; =ov83_022484F4
	bl TouchscreenHitbox_FindRectAtTouchNew
	cmp r0, #0
	bne _02247C3E
	mov r0, #6
	pop {r4, pc}
_02247C3E:
	cmp r0, #1
	bne _02247C46
	mov r0, #7
	pop {r4, pc}
_02247C46:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	.balign 4, 0
_02247C4C: .word gSystem
_02247C50: .word ov83_0224858C
_02247C54: .word ov83_022484F4
	thumb_func_end ov83_02247BC4

	thumb_func_start ov83_02247C58
ov83_02247C58: ; 0x02247C58
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, _02247C7C ; =ov83_02248610
	lsl r3, r4, #3
	ldr r2, _02247C80 ; =ov83_02248611
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldr r3, _02247C84 ; =ov83_02248570
	lsl r6, r4, #2
	ldr r3, [r3, r6]
	add r5, r0, #0
	bl ov83_02242AC0
	add r0, r5, #0
	add r1, r4, #0
	bl ov83_02242AE0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02247C7C: .word ov83_02248610
_02247C80: .word ov83_02248611
_02247C84: .word ov83_02248570
	thumb_func_end ov83_02247C58

	thumb_func_start ov83_02247C88
ov83_02247C88: ; 0x02247C88
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, _02247CAC ; =ov83_02248610
	lsl r3, r4, #3
	ldr r2, _02247CB0 ; =ov83_02248611
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldr r3, _02247CB4 ; =ov83_02248570
	lsl r6, r4, #2
	ldr r3, [r3, r6]
	add r5, r0, #0
	bl ov83_02242AC0
	add r0, r5, #0
	add r1, r4, #0
	bl ov83_02242AE0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02247CAC: .word ov83_02248610
_02247CB0: .word ov83_02248611
_02247CB4: .word ov83_02248570
	thumb_func_end ov83_02247C88

	thumb_func_start ov83_02247CB8
ov83_02247CB8: ; 0x02247CB8
	ldr r3, _02247CC0 ; =TouchscreenListMenuSpawner_Create
	mov r0, #0x6b
	bx r3
	nop
_02247CC0: .word TouchscreenListMenuSpawner_Create
	thumb_func_end ov83_02247CB8

	thumb_func_start ov83_02247CC4
ov83_02247CC4: ; 0x02247CC4
	ldr r3, _02247CC8 ; =TouchscreenListMenuSpawner_Destroy
	bx r3
	.balign 4, 0
_02247CC8: .word TouchscreenListMenuSpawner_Destroy
	thumb_func_end ov83_02247CC4

	thumb_func_start ov83_02247CCC
ov83_02247CCC: ; 0x02247CCC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r2, #0
	str r3, [sp]
	add r2, sp, #8
	ldrb r2, [r2, #0x10]
	add r3, r4, #0
	str r2, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	bl TouchscreenListMenu_Create
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov83_02247CCC

	thumb_func_start ov83_02247CE8
ov83_02247CE8: ; 0x02247CE8
	ldr r3, _02247CEC ; =TouchscreenListMenu_Destroy
	bx r3
	.balign 4, 0
_02247CEC: .word TouchscreenListMenu_Destroy
	thumb_func_end ov83_02247CE8

	thumb_func_start ov83_02247CF0
ov83_02247CF0: ; 0x02247CF0
	push {r3, lr}
	ldr r0, _02247D08 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02247D00
	mov r0, #1
	pop {r3, pc}
_02247D00:
	bl System_GetTouchNew
	pop {r3, pc}
	nop
_02247D08: .word gSystem
	thumb_func_end ov83_02247CF0


    .rodata

ov83_022484F4: ; 0x022484F4
	.byte 0xA0, 0xBF, 0x00, 0x27, 0xA0, 0xBF, 0x28, 0x4F, 0xFF, 0x00, 0x00, 0x00

ov83_02248500: ; 0x02248500
	.word ov83_02247A20
	.word ov83_02247A20
	.word ov83_02247B1C
	.word ov83_02247B34

ov83_02248510: ; 0x02248510
	.word ov83_02247A20
	.word ov83_02247A20
	.word ov83_02247B4C
	.word ov83_02247B64

ov83_02248520: ; 0x02248520
	.word ov83_02247A20
	.word ov83_02247A20
	.word ov83_02247C58
	.word ov83_02247C88

ov83_02248530: ; 0x02248530
	.byte 0x98, 0xAF, 0xC8, 0xF7, 0x20, 0x4F, 0x20, 0x5F, 0x20, 0x4F, 0x60, 0x9F, 0x20, 0x4F, 0xA0, 0xDF
	.byte 0xFF, 0x00, 0x00, 0x00

ov83_02248544: ; 0x02248544
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00

ov83_02248558: ; 0x02248558
	.byte 0x98, 0xAF, 0xC8, 0xF7, 0x20, 0x4F, 0x00, 0x3F
	.byte 0x20, 0x4F, 0x40, 0x7F, 0x20, 0x4F, 0x80, 0xBF, 0x20, 0x4F, 0xC0, 0xFF, 0xFF, 0x00, 0x00, 0x00

ov83_02248570: ; 0x02248570
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00

ov83_0224858C: ; 0x0224858C
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00

ov83_022485A8: ; 0x022485A8
	.byte 0x00, 0x00, 0x00, 0x00, 0x81, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x03, 0x02, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x03
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x02, 0x01

ov83_022485C8: ; 0x022485C8
	.byte 0x20, 0x47, 0x00, 0x7F, 0x20, 0x47, 0x80, 0xFF
	.byte 0x48, 0x6F, 0x00, 0x7F, 0x48, 0x6F, 0x80, 0xFF, 0x70, 0x97, 0x00, 0x7F, 0x70, 0x97, 0x80, 0xFF
	.byte 0xA0, 0xBF, 0xC8, 0xFF, 0xFF, 0x00, 0x00, 0x00

ov83_022485E8: ; 0x022485E8
	.byte 0x00, 0x00, 0x00, 0x00, 0x81, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x02, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x03
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x03, 0x01

ov83_02248610: ; 0x02248610
	.byte 0x40

ov83_02248611: ; 0x02248611
	.byte 0x34, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0xC0, 0x34, 0x00, 0x00, 0x01, 0x03, 0x00, 0x01
	.byte 0x40, 0x5C, 0x00, 0x00, 0x00, 0x04, 0x02, 0x03, 0xC0, 0x5C, 0x00, 0x00, 0x01, 0x05, 0x02, 0x03
	.byte 0x40, 0x84, 0x00, 0x00, 0x02, 0x06, 0x04, 0x05, 0xC0, 0x84, 0x00, 0x00, 0x03, 0x06, 0x04, 0x05
	.byte 0xE4, 0xB0, 0x00, 0x00, 0x85, 0x06, 0x06, 0x06
	; 0x02248648
