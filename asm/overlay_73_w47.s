#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E705C
	.public ov73_021E7120
	.public ov73_021E71E4
	.public ov73_021E7230
	.extern _021EA51C
	.extern ov73_021E6830
	.extern ov73_021E756C
	.extern ov73_021E75FC
	.extern ov73_021E761C
	.extern ov73_021E781C

	.text

	.text
	thumb_func_start ov73_021E705C
ov73_021E705C: ; 0x021E705C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0xd
	bgt _021E707E
	bge _021E7092
	cmp r4, #8
	bgt _021E7110
	cmp r4, #2
	blt _021E7110
	beq _021E708C
	cmp r4, #7
	beq _021E710A
	cmp r4, #8
	beq _021E710A
	pop {r4, r5, r6, pc}
_021E707E:
	cmp r4, #0x13
	bgt _021E7086
	beq _021E70D0
	pop {r4, r5, r6, pc}
_021E7086:
	cmp r4, #0x19
	beq _021E7098
	pop {r4, r5, r6, pc}
_021E708C:
	bl ov73_021E761C
	b _021E710A
_021E7092:
	bl ov73_021E6830
	b _021E710A
_021E7098:
	ldr r0, [r5, #0x4c]
	bl ov73_021E75FC
	cmp r0, #0
	bne _021E70AC
	ldr r0, [r5, #0x4c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl RemoveTextPrinter
_021E70AC:
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ov73_021E71E4
	ldr r0, [r5]
	mov r1, #1
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0
	bl ov73_021E756C
	add r0, r5, #0
	bl ov73_021E6830
	b _021E710A
_021E70D0:
	ldr r0, _021E7114 ; =0x00004A28
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _021E7110
	add r0, r6, #0
	bl sub_02034818
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl BufferPlayersName
	bl sub_0203769C
	cmp r6, r0
	beq _021E7110
	add r0, r5, #0
	bl ov73_021E6830
	bl sub_0203769C
	cmp r0, #0
	bne _021E710A
	ldr r1, _021E7118 ; =0x00004A24
	ldr r0, _021E711C ; =0x0000FFFF
	ldr r2, [r5, r1]
	eor r0, r6
	and r0, r2
	str r0, [r5, r1]
_021E710A:
	mov r0, #0xc6
	lsl r0, r0, #2
	str r4, [r5, r0]
_021E7110:
	pop {r4, r5, r6, pc}
	nop
_021E7114: .word 0x00004A28
_021E7118: .word 0x00004A24
_021E711C: .word 0x0000FFFF
	thumb_func_end ov73_021E705C

	thumb_func_start ov73_021E7120
ov73_021E7120: ; 0x021E7120
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0xc6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #3
	bne _021E71C0
	cmp r4, #1
	beq _021E713E
	cmp r4, #0x13
	beq _021E7182
	b _021E71B8
_021E713E:
	add r0, r6, #0
	bl sub_02034818
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl BufferPlayersName
	add r0, r5, #0
	mov r1, #1
	bl ov73_021E781C
	mov r0, #0xc6
	lsl r0, r0, #2
	str r4, [r5, r0]
	bl sub_02037454
	ldr r1, _021E71D8 ; =0x00004A1C
	str r0, [r5, r1]
	mov r0, #0
	add r1, #8
	str r0, [r5, r1]
	bl sub_0203769C
	cmp r0, #0
	bne _021E71D2
	mov r2, #1
	mov r0, #0x75
	add r1, sp, #0
	str r2, [sp]
	bl sub_02037030
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021E7182:
	add r0, r6, #0
	bl sub_02034818
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl BufferPlayersName
	bl sub_0203769C
	cmp r6, r0
	beq _021E71D2
	bl sub_0203769C
	cmp r0, #0
	bne _021E71AE
	ldr r1, _021E71DC ; =0x00004A24
	ldr r0, _021E71E0 ; =0x0000FFFF
	ldr r2, [r5, r1]
	eor r0, r6
	and r0, r2
	str r0, [r5, r1]
_021E71AE:
	mov r0, #0xc6
	lsl r0, r0, #2
	add sp, #4
	str r4, [r5, r0]
	pop {r3, r4, r5, r6, pc}
_021E71B8:
	bl GF_AssertFail
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021E71C0:
	cmp r4, #1
	bne _021E71D2
	ldr r0, _021E71DC ; =0x00004A24
	mov r1, #0
	str r1, [r5, r0]
	bl sub_02037454
	ldr r1, _021E71D8 ; =0x00004A1C
	str r0, [r5, r1]
_021E71D2:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021E71D8: .word 0x00004A1C
_021E71DC: .word 0x00004A24
_021E71E0: .word 0x0000FFFF
	thumb_func_end ov73_021E7120

	thumb_func_start ov73_021E71E4
ov73_021E71E4: ; 0x021E71E4
	push {r3, r4, lr}
	sub sp, #0x1c
	add r3, r1, #0
	mov r1, #0xc3
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	mov r4, #8
	str r4, [sp]
	mov r4, #4
	str r4, [sp, #4]
	add r4, r1, #0
	add r4, #0xc
	str r4, [sp, #8]
	mov r4, #0
	lsl r2, r2, #0x1a
	str r4, [sp, #0xc]
	lsr r2, r2, #0x18
	str r2, [sp, #0x10]
	ldrh r2, [r1]
	lsl r2, r2, #0x15
	lsr r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r1, [r1, #2]
	ldr r2, _021E722C ; =_021EA51C
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x18]
	ldrb r2, [r2, r3]
	ldr r0, [r0]
	mov r1, #1
	mov r3, #0x14
	bl CopyToBgTilemapRect
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_021E722C: .word _021EA51C
	thumb_func_end ov73_021E71E4

	thumb_func_start ov73_021E7230
ov73_021E7230: ; 0x021E7230
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl sub_0203769C
	cmp r0, #0
	bne _021E7286
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov73_021E71E4
	ldr r0, [r4, #0x28]
	mov r1, #0x15
	bl NewString_ReadMsgData
	add r5, r0, #0
	mov r0, #4
	add r1, r5, #0
	mov r2, #0
	bl FontID_String_GetWidth
	mov r1, #0x40
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	lsr r6, r3, #0x1f
	add r6, r3, r6
	ldr r0, _021E72EC ; =0x00040100
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xae
	lsl r0, r0, #2
	str r1, [sp, #0xc]
	add r0, r4, r0
	mov r1, #4
	add r2, r5, #0
	asr r3, r6, #1
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl String_Delete
_021E7286:
	mov r1, #0
	ldr r0, _021E72F0 ; =0x00004A38
	mvn r1, r1
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov73_021E71E4
	ldr r0, [r4, #0x28]
	mov r1, #0x16
	bl NewString_ReadMsgData
	add r5, r0, #0
	mov r0, #4
	add r1, r5, #0
	mov r2, #0
	bl FontID_String_GetWidth
	mov r1, #0x40
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	lsr r6, r3, #0x1f
	add r6, r3, r6
	ldr r0, _021E72EC ; =0x00040100
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xb2
	lsl r0, r0, #2
	str r1, [sp, #0xc]
	add r0, r4, r0
	mov r1, #4
	add r2, r5, #0
	asr r3, r6, #1
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl String_Delete
	ldr r0, [r4]
	mov r1, #1
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, [r4]
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021E72EC: .word 0x00040100
_021E72F0: .word 0x00004A38
	thumb_func_end ov73_021E7230

