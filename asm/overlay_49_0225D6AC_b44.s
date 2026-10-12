	.include "asm/macros.inc"
	.include "overlay_49_0225D6AC.inc"
	.include "global.inc"
	.public ov49_0225EA70
	.extern ov49_0225EAE0

    .text

	.text
	thumb_func_start ov49_0225EA70
ov49_0225EA70: ; 0x0225EA70
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	ldr r0, [r6, #4]
	add r2, r4, #0
	add r5, r1, #0
	bl ov49_0225D3BC
	cmp r0, #0
	bne _0225EA88
	mov r4, #1
	b _0225EA9A
_0225EA88:
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_0225D470
	mov r1, #2
	lsl r1, r1, #0xc
	cmp r0, r1
	ble _0225EA9A
	mov r4, #1
_0225EA9A:
	cmp r4, #1
	bne _0225EAAC
	add r0, r6, #0
	add r1, r5, #0
	bl ov49_0225EAE0
	ldr r0, _0225EAB0 ; =0x000005BC
	bl PlaySE
_0225EAAC:
	pop {r4, r5, r6, pc}
	nop
_0225EAB0: .word 0x000005BC
	thumb_func_end ov49_0225EA70

