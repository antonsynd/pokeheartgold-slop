	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E8BB0
	.extern ov85_021E9E58
	.extern ov85_021EA8EA
	.extern ov85_021EA8EB

	.text

	.text
	thumb_func_start ov85_021E8BB0
ov85_021E8BB0: ; 0x021E8BB0
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x1c]
	add r1, #0x1c
	cmp r0, #0
	beq _021E8C0A
	ldr r0, [r1, #4]
	ldr r3, [r1, #8]
	lsl r2, r0, #1
	ldr r0, _021E8C0C ; =ov85_021EA8EA
	ldrb r0, [r0, r2]
	cmp r3, r0
	ble _021E8BFA
	mov r0, #0
	str r0, [r1, #8]
	ldr r2, [r1, #4]
	add r2, r2, #1
	str r2, [r1, #4]
	lsl r3, r2, #1
	ldr r2, _021E8C10 ; =ov85_021EA8EB
	ldrb r2, [r2, r3]
	cmp r2, #0xff
	bne _021E8BE0
	str r0, [r1, #4]
_021E8BE0:
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #4]
	ldr r0, [r0, #0xc]
	lsl r2, r1, #1
	ldr r1, _021E8C10 ; =ov85_021EA8EB
	ldrb r1, [r1, r2]
	mov r2, #0x20
	lsl r1, r1, #5
	add r0, r0, r1
	mov r1, #0
	bl GX_LoadOBJPltt
	b _021E8C00
_021E8BFA:
	ldr r0, [r4, #0x24]
	add r0, r0, #1
	str r0, [r4, #0x24]
_021E8C00:
	mov r0, #0xed
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov85_021E9E58
_021E8C0A:
	pop {r4, pc}
	.balign 4, 0
_021E8C0C: .word ov85_021EA8EA
_021E8C10: .word ov85_021EA8EB
	thumb_func_end ov85_021E8BB0

