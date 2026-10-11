	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrtCmd_183

	.text

	thumb_func_start FrtCmd_183
FrtCmd_183: ; 0x0222E120
	push {r4, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl Frontier_GetLaunchArgs
	ldr r0, [r0, #8]
	bl sub_0202C6F4
	add r4, r0, #0
	bl ov00_021E6EBC
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0202C4B0
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end FrtCmd_183

