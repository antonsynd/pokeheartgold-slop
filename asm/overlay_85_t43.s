	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E6498
	.extern ov85_021E7274
	.extern ov85_021E8454
	.extern ov85_021EA728
	.extern ov85_021EA72C

	.text

	.text
	thumb_func_start ov85_021E6498
ov85_021E6498: ; 0x021E6498
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov85_021E8454
	ldr r0, [r5, #0x28]
	ldr r2, [r5, #0x20]
	ldr r0, [r0, #0xc]
	mov r1, #1
	lsl r1, r0
	add r0, r2, #0
	tst r0, r1
	bne _021E64B8
	mov r0, #0x2b
	str r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E64B8:
	ldr r0, [r5, #0x30]
	lsl r6, r0, #3
	ldr r0, _021E6520 ; =ov85_021EA728
	ldr r4, [r0, r6]
	ldr r0, _021E6524 ; =ov85_021EA72C
	ldr r7, [r0, r6]
	bl LCRandom
	sub r1, r7, r4
	add r1, r1, #1
	bl _u32_div_f
	ldr r0, _021E6520 ; =ov85_021EA728
	add r4, r4, r1
	ldr r0, [r0, r6]
	cmp r4, r0
	bhs _021E64DE
	add r4, r0, #0
	b _021E64E4
_021E64DE:
	cmp r4, r7
	bls _021E64E4
	add r4, r7, #0
_021E64E4:
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #0
	bl ov85_021E7274
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	bl Save_Bag_Get
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	mov r2, #1
	mov r3, #0x66
	bl Bag_AddItem
	add r4, r0, #0
	ldr r0, _021E6528 ; =0x000004A1
	bl PlayFanfare
	cmp r4, #1
	bne _021E6516
	mov r0, #0x28
	b _021E6518
_021E6516:
	mov r0, #0x29
_021E6518:
	str r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6520: .word ov85_021EA728
_021E6524: .word ov85_021EA72C
_021E6528: .word 0x000004A1
	thumb_func_end ov85_021E6498

