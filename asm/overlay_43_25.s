	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222AA70

	.text

	thumb_func_start ov43_0222AA70
ov43_0222AA70: ; 0x0222AA70
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x84
	ldr r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #1
	bne _0222AA98
	mov r0, #0
	bl TextFlags_SetCanTouchSpeedUpPrint
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl RemoveTextPrinter
_0222AA98:
	add r4, #0x64
	add r0, r4, #0
	bl ClearWindowTilemapAndScheduleTransfer
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov43_0222AA70

