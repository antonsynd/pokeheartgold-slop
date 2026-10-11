	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_0225AD54
	.public ov48_0225ADBC
	.public ov48_0225ADF8

	.text

	thumb_func_start ov48_0225AD54
ov48_0225AD54: ; 0x0225AD54
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0x32
	ldrsh r2, [r5, r1]
	cmp r2, #0
	ble _0225AD82
	sub r2, r2, #1
	strh r2, [r5, #0x32]
	ldrsh r1, [r5, r1]
	cmp r1, #0
	bne _0225ADB6
	mov r1, #0x30
	ldrsh r1, [r5, r1]
	add r2, r4, #0
	bl ov48_0225ADBC
	cmp r0, #1
	bne _0225ADB6
	ldr r0, _0225ADB8 ; =0x000005D8
	bl PlaySE
	pop {r3, r4, r5, pc}
_0225AD82:
	mov r1, #0x30
	ldrsh r1, [r5, r1]
	add r2, r4, #0
	bl ov48_0225ADF8
	cmp r0, #1
	bne _0225ADB6
	mov r1, #0x30
	ldrsh r0, [r5, r1]
	sub r0, r0, #1
	bmi _0225ADA6
	strh r0, [r5, #0x30]
	ldrsh r1, [r5, r1]
	add r0, r5, #0
	add r2, r4, #0
	bl ov48_0225ADBC
	pop {r3, r4, r5, pc}
_0225ADA6:
	ldr r0, _0225ADB8 ; =0x000005D8
	mov r1, #0
	bl StopSE
	mov r0, #2
	strh r0, [r5, #0x30]
	mov r0, #0x80
	strh r0, [r5, #0x32]
_0225ADB6:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0225ADB8: .word 0x000005D8
	thumb_func_end ov48_0225AD54

