	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222A48C
	.public ov43_0222A550
	.public ov43_0222A570
	.public ov43_0222A690
	.public ov43_0222A87C
	.public ov43_0222A8C0
	.public ov43_0222A998
	.public ov43_0222AC28

	.text

	thumb_func_start ov43_0222A48C
ov43_0222A48C: ; 0x0222A48C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r0, _0222A4FC ; =gSystem + 0x60
	mov r1, #1
	add r4, r2, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	mov r0, #0x55
	add r1, r4, #0
	bl NARC_New
	str r0, [r5, #0x58]
	bl ov43_0222A550
	add r0, r5, #0
	add r1, r4, #0
	bl ov43_0222A570
	add r0, r5, #0
	add r1, r4, #0
	bl ov43_0222A690
	add r0, r5, #0
	add r1, r4, #0
	bl ov43_0222A87C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov43_0222A8C0
	add r0, r5, #0
	add r1, r4, #0
	bl ov43_0222AC28
	add r0, r5, #0
	add r1, r4, #0
	bl ov43_0222A998
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #1
	bl TextFlags_SetCanABSpeedUpPrint
	mov r0, #0
	bl TextFlags_SetAutoScrollParam
	mov r0, #0
	bl TextFlags_SetCanTouchSpeedUpPrint
	pop {r4, r5, r6, pc}
	nop
_0222A4FC: .word gSystem + 0x60
	thumb_func_end ov43_0222A48C

