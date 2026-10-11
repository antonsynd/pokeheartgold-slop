	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E7958
	.extern ov85_021EA7C4

	.text

	.text
	thumb_func_start ov85_021E7958
ov85_021E7958: ; 0x021E7958
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	mov r1, #0x19
	ldr r6, [r0, #0x30]
	lsl r1, r1, #4
	add r1, r0, r1
	mov lr, r1
	ldr r0, [r0, #0x2c]
	mov r1, #0xa
	add r2, r6, #0
	mul r2, r1
	ldr r1, _021E7A18 ; =ov85_021EA7C4
	lsl r4, r0, #1
	add r0, r1, r2
	ldrh r0, [r4, r0]
	mov r3, #0
	add r1, sp, #4
	lsl r5, r0, #0xc
	ldr r0, _021E7A1C ; =0x0000FFFF
	add r2, sp, #0x18
_021E7980:
	stmia r1!, {r3}
	add r3, r3, #1
	stmia r2!, {r0}
	cmp r3, r6
	blt _021E7980
	mov r3, #0
	cmp r6, #0
	ble _021E79B8
	mov r0, #0x5a
	lsl r0, r0, #0xe
	mov r1, lr
	add r2, sp, #0x18
	add r7, r5, r0
_021E799A:
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	sub r0, r5, r4
	bpl _021E79A6
	sub r0, r7, r4
_021E79A6:
	asr r4, r0, #0xb
	lsr r4, r4, #0x14
	add r4, r0, r4
	asr r0, r4, #0xc
	add r3, r3, #1
	stmia r2!, {r0}
	add r1, #0xb0
	cmp r3, r6
	blt _021E799A
_021E79B8:
	mov r7, #1
	cmp r6, #1
	ble _021E7A02
	add r0, sp, #8
	str r0, [sp]
	add r5, sp, #0x18
_021E79C4:
	ldr r0, [sp]
	add r2, sp, #4
	ldr r0, [r0]
	mov ip, r0
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	sub r0, r7, #1
	lsl r3, r0, #2
	add r2, r2, r3
	b _021E79DE
_021E79D8:
	str r3, [r2, #4]
	sub r2, r2, #4
	sub r0, r0, #1
_021E79DE:
	cmp r0, #0
	blt _021E79EC
	ldr r3, [r2]
	lsl r4, r3, #2
	ldr r4, [r5, r4]
	cmp r4, r1
	bgt _021E79D8
_021E79EC:
	lsl r1, r0, #2
	add r0, sp, #4
	add r1, r0, r1
	mov r0, ip
	str r0, [r1, #4]
	ldr r0, [sp]
	add r7, r7, #1
	add r0, r0, #4
	str r0, [sp]
	cmp r7, r6
	blt _021E79C4
_021E7A02:
	mov r1, #5
	lsl r1, r1, #6
	mov r0, lr
	add r2, r0, r1
	ldr r1, [sp, #4]
	mov r0, #0xb0
	mul r0, r1
	add r0, r2, r0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021E7A18: .word ov85_021EA7C4
_021E7A1C: .word 0x0000FFFF
	thumb_func_end ov85_021E7958

