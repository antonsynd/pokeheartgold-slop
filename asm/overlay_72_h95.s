	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_0223A0E0
	.extern ov72_022387D0
	.extern ov72_0223A350

	.text

	.text
	thumb_func_start ov72_0223A0E0
ov72_0223A0E0: ; 0x0223A0E0
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0xfd
	add r4, r0, #0
	lsl r1, r1, #4
	ldrsh r2, [r4, r1]
	cmp r2, #3
	bhi _0223A17C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0223A0FC: ; jump table
	.short _0223A104 - _0223A0FC - 2 ; case 0
	.short _0223A120 - _0223A0FC - 2 ; case 1
	.short _0223A144 - _0223A0FC - 2 ; case 2
	.short _0223A160 - _0223A0FC - 2 ; case 3
_0223A104:
	sub r1, #0xc1
	str r1, [sp]
	ldr r1, _0223A1A0 ; =0x00000BD4
	mov r2, #0x12
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov72_0223A350
	mov r0, #0xfd
	lsl r0, r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _0223A198
_0223A120:
	ldr r0, _0223A1A4 ; =0x00000BF4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _0223A198
	bl sub_0203946C
	bl ov00_021EC8D8
	mov r0, #0xfd
	lsl r0, r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _0223A198
_0223A144:
	sub r1, #0xc1
	str r1, [sp]
	ldr r1, _0223A1A0 ; =0x00000BD4
	mov r2, #0x13
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov72_0223A350
	mov r0, #0xfd
	lsl r0, r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _0223A198
_0223A160:
	ldr r0, _0223A1A4 ; =0x00000BF4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _0223A198
	mov r0, #0xfd
	lsl r0, r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _0223A198
_0223A17C:
	ldr r0, _0223A1A8 ; =0x00000FD2
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	ble _0223A198
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov72_022387D0
	mov r0, #0x2e
	str r0, [r4, #0x1c]
_0223A198:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223A1A0: .word 0x00000BD4
_0223A1A4: .word 0x00000BF4
_0223A1A8: .word 0x00000FD2
	thumb_func_end ov72_0223A0E0

