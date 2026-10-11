	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_02259F14

	.text

	thumb_func_start ov48_02259F14
ov48_02259F14: ; 0x02259F14
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	beq _02259F30
	ldr r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl RemoveTextPrinter
_02259F30:
	ldr r0, [r4, #0xc]
	bl String_Delete
	ldr r0, [r4, #0x20]
	bl YesNoPrompt_Destroy
	add r4, #0x10
	add r0, r4, #0
	bl RemoveWindow
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov48_02259F14

