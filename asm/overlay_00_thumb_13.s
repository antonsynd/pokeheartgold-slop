	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E629C
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E629C
ov00_021E629C: ; 0x021E629C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021E62CC ; =_0221A680
	add r4, r1, #0
	ldr r1, [r0]
	ldr r0, _021E62D0 ; =0x00000F78
	ldr r0, [r1, r0]
	bl sub_0202C6F4
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0202C5E4
	ldr r0, _021E62CC ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E62D0 ; =0x00000F78
	ldr r0, [r1, r0]
	bl Save_Frontier_GetStatic
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02031214
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E62CC: .word _0221A680
_021E62D0: .word 0x00000F78
	thumb_func_end ov00_021E629C

