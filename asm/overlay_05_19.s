	.include "asm/macros.inc"
	.include "overlay_05.inc"
	.include "global.inc"
	.public ov05_0221C908
	.public ov05_0221CAB8
	.extern ov05_0221E9C4
	.extern ov05_0221E9F8
	.extern ov05_0221EA18
	.extern ov05_0221EA38

	.text

	.text
	thumb_func_start ov05_0221C908
ov05_0221C908: ; 0x0221C908
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov05_0221E9F8
	cmp r0, #0
	bne _0221C920
	ldr r1, _0221CA9C ; =0x00000B81
	mov r0, #1
	add sp, #0xc
	strb r0, [r4, r1]
	pop {r3, r4, pc}
_0221C920:
	mov r0, #0xbd
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _0221C938
	sub r0, #0x10
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0221C938
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_0221C938:
	ldr r0, _0221CAA0 ; =0x00000BBC
	ldr r1, [r4, r0]
	cmp r1, #5
	bne _0221C946
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_0221C946:
	cmp r1, #6
	beq _0221C960
	cmp r1, #5
	beq _0221C960
	cmp r1, #7
	beq _0221C960
	cmp r1, #8
	beq _0221C960
	mov r1, #7
	str r1, [r4, r0]
	mov r1, #0xff
	sub r0, #0x3a
	strb r1, [r4, r0]
_0221C960:
	ldr r0, _0221CAA4 ; =0x00000B82
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _0221C972
	cmp r1, #1
	beq _0221C9B0
	cmp r1, #2
	beq _0221CA4A
	b _0221CA68
_0221C972:
	add r0, r4, #0
	bl ov05_0221E9C4
	ldr r2, _0221CAA8 ; =0x00000BAC
	mov r1, #8
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl ReadMsgDataIntoString
	mov r3, #0
	str r3, [sp]
	ldr r2, _0221CAAC ; =0x00000B88
	str r3, [sp, #4]
	add r0, r4, r2
	str r3, [sp, #8]
	add r2, #0x2c
	ldr r2, [r4, r2]
	mov r1, #1
	bl AddTextPrinterParameterized
	ldr r1, _0221CAB0 ; =0x00000BB8
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov05_0221EA18
	ldr r0, _0221CAA4 ; =0x00000B82
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0221CA8C
_0221C9B0:
	add r2, r0, #2
	add r0, r0, #4
	ldr r1, [r4]
	add r2, r4, r2
	str r2, [sp]
	add r0, r4, r0
	str r0, [sp, #4]
	ldr r2, [r1]
	mov r0, #7
	add r1, #0x2c
	lsl r0, r0, #6
	ldr r0, [r2, r0]
	mov r2, #0
	ldrb r1, [r1]
	add r3, r2, #0
	bl sub_0202FE14
	cmp r0, #2
	bne _0221C9EC
	ldr r2, _0221CAA8 ; =0x00000BAC
	mov r1, #6
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl ReadMsgDataIntoString
	ldr r0, _0221CAB4 ; =0x0000061A
	bl PlaySE
	b _0221C9FE
_0221C9EC:
	cmp r0, #3
	bne _0221CA8C
	ldr r2, _0221CAA8 ; =0x00000BAC
	mov r1, #7
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl ReadMsgDataIntoString
_0221C9FE:
	add r0, r4, #0
	bl ov05_0221EA38
	mov r0, #0xd8
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldr r0, _0221CAAC ; =0x00000B88
	mov r2, #0
	add r0, r4, r0
	mov r1, #0xf
	add r3, r2, #0
	bl FillWindowPixelRect
	mov r3, #0
	str r3, [sp]
	ldr r2, _0221CAAC ; =0x00000B88
	str r3, [sp, #4]
	add r0, r4, r2
	str r3, [sp, #8]
	add r2, #0x2c
	ldr r2, [r4, r2]
	mov r1, #1
	bl AddTextPrinterParameterized
	ldr r1, _0221CAB0 ; =0x00000BB8
	mov r2, #0
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x37
	strb r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0x36
	ldrb r0, [r4, r0]
	sub r1, #0x36
	add r0, r0, #1
	strb r0, [r4, r1]
	b _0221CA8C
_0221CA4A:
	sub r1, r0, #1
	ldrb r1, [r4, r1]
	add r2, r1, #1
	sub r1, r0, #1
	strb r2, [r4, r1]
	ldrb r1, [r4, r1]
	cmp r1, #0x1e
	bls _0221CA8C
	mov r2, #0
	sub r1, r0, #1
	strb r2, [r4, r1]
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0221CA8C
_0221CA68:
	add r0, r0, #6
	add r0, r4, r0
	mov r1, #0
	bl ClearFrameAndWindow2
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, _0221CAA4 ; =0x00000B82
	mov r1, #0
	strb r1, [r4, r0]
	mov r1, #0x15
	sub r0, r0, #1
	strb r1, [r4, r0]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0221CA8C:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0221CA9C: .word 0x00000B81
_0221CAA0: .word 0x00000BBC
_0221CAA4: .word 0x00000B82
_0221CAA8: .word 0x00000BAC
_0221CAAC: .word 0x00000B88
_0221CAB0: .word 0x00000BB8
_0221CAB4: .word 0x0000061A
	thumb_func_end ov05_0221C908

	thumb_func_start ov05_0221CAB8
ov05_0221CAB8: ; 0x0221CAB8
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _0221CB5C ; =0x00000B82
	add r4, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0221CACC
	cmp r1, #1
	beq _0221CB34
	b _0221CB4A
_0221CACC:
	bl ov05_0221E9F8
	cmp r0, #0
	bne _0221CADC
	mov r0, #1
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
_0221CADC:
	add r0, r4, #0
	bl ov05_0221E9C4
	ldr r2, _0221CB60 ; =0x00000BAC
	mov r1, #9
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl ReadMsgDataIntoString
	mov r3, #0
	str r3, [sp]
	ldr r2, _0221CB64 ; =0x00000B88
	str r3, [sp, #4]
	add r0, r4, r2
	str r3, [sp, #8]
	add r2, #0x2c
	ldr r2, [r4, r2]
	mov r1, #1
	bl AddTextPrinterParameterized
	ldr r1, _0221CB68 ; =0x00000BB8
	str r0, [r4, r1]
	mov r0, #0x3e
	bl sub_02037AC0
	ldr r0, _0221CB6C ; =0x00000BC8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0221CB2A
	add r0, r4, #0
	bl ov05_0221E9F8
	cmp r0, #1
	bne _0221CB2A
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
_0221CB2A:
	ldr r0, _0221CB5C ; =0x00000B82
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0221CB4E
_0221CB34:
	mov r0, #0x3e
	bl sub_02037B38
	cmp r0, #0
	beq _0221CB4E
	ldr r0, _0221CB5C ; =0x00000B82
	mov r1, #0
	strb r1, [r4, r0]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0221CB4A:
	bl GF_AssertFail
_0221CB4E:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_0221CB5C: .word 0x00000B82
_0221CB60: .word 0x00000BAC
_0221CB64: .word 0x00000B88
_0221CB68: .word 0x00000BB8
_0221CB6C: .word 0x00000BC8
	thumb_func_end ov05_0221CAB8

