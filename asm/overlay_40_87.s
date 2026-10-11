	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02230E08

	.text

	thumb_func_start ov40_02230E08
ov40_02230E08: ; 0x02230E08
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl String_SetEmpty
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xd
	add r3, r5, #0
	bl NewMsgDataFromNarc
	mov r1, #0x53
	add r5, r0, #0
	lsl r1, r1, #2
	add r2, r4, #0
	bl ReadMsgDataIntoString
	add r0, r5, #0
	bl DestroyMsgData
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov40_02230E08

