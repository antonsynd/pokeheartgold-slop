	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223C350
	.public ov59_0223C5B0

	.text

	thumb_func_start ov59_0223C350
ov59_0223C350: ; 0x0223C350
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl Camera_Delete
	ldr r0, [r4, #0xc]
	bl PokepicManager_Delete
	add r0, r4, #0
	bl ov59_0223C5B0
	ldr r0, [r4, #4]
	bl GF_3DVramMan_Delete
	add r0, r4, #0
	bl Heap_Free
	pop {r4, pc}
	thumb_func_end ov59_0223C350

