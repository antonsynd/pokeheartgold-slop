	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E6420
	.extern ov85_021E71EC
	.extern ov85_021E7400

	.text

	.text
	thumb_func_start ov85_021E6420
ov85_021E6420: ; 0x021E6420
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0x78
	bge _021E6432
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E6432:
	mov r4, #0
	str r4, [r5, #0xc]
	ldr r0, [r5, #0x30]
	cmp r0, #0
	ble _021E644C
_021E643C:
	add r0, r5, #0
	add r1, r4, #0
	bl ov85_021E7400
	ldr r0, [r5, #0x30]
	add r4, r4, #1
	cmp r4, r0
	blt _021E643C
_021E644C:
	ldr r2, [r5, #0x28]
	add r0, r5, #0
	ldr r2, [r2, #0xc]
	mov r1, #2
	lsl r2, r2, #2
	add r2, r5, r2
	add r2, #0x84
	ldr r2, [r2]
	bl ov85_021E71EC
	ldr r0, _021E6470 ; =0x000004A1
	bl PlayFanfare
	mov r0, #0x26
	str r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021E6470: .word 0x000004A1
	thumb_func_end ov85_021E6420

