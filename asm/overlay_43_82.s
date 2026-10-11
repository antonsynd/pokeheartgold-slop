	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public _0222F0E0
	.public ov43_0222DF4C
	.public ov43_0222DF90
	.public ov43_0222F12C

	.text

	thumb_func_start ov43_0222DF4C
ov43_0222DF4C: ; 0x0222DF4C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r7, r1, #0
	add r1, r5, #0
	add r6, r0, #0
	add r4, r3, #0
	bl ov43_0222DF90
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0222DF74
	add r2, r5, #0
	lsl r5, r4, #2
	ldr r4, _0222DF88 ; =ov43_0222F12C
	ldr r3, [sp, #0x20]
	ldr r4, [r4, r5]
	add r0, r6, #0
	add r1, r7, #0
	blx r4
	pop {r3, r4, r5, r6, r7, pc}
_0222DF74:
	add r2, r5, #0
	lsl r5, r4, #2
	ldr r4, _0222DF8C ; =_0222F0E0
	ldr r3, [sp, #0x20]
	ldr r4, [r4, r5]
	add r0, r6, #0
	add r1, r7, #0
	blx r4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222DF88: .word ov43_0222F12C
_0222DF8C: .word _0222F0E0
	thumb_func_end ov43_0222DF4C

