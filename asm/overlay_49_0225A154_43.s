	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225AB14
	.public ov49_0225AC38

    .text

	thumb_func_start ov49_0225AB14
ov49_0225AB14: ; 0x0225AB14
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	beq _0225AB30
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl RemoveTextPrinter
_0225AB30:
	add r0, r4, #0
	bl ov49_0225AC38
	ldr r0, [r4, #0x18]
	bl String_Delete
	add r0, r4, #0
	bl RemoveWindow
	pop {r4, pc}
	thumb_func_end ov49_0225AB14

