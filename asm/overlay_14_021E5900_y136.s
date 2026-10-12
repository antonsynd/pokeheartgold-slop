#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E8B1C

    .text

	.text
	thumb_func_start ov14_021E8B1C
ov14_021E8B1C: ; 0x021E8B1C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021E8B38 ; =FS_OVERLAY_ID(OVY_15)
	bl UnloadOverlayByID
	ldr r0, [r4, #0x18]
	bl BagView_GetItemId
	strh r0, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	bl Heap_Free
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_021E8B38: .word FS_OVERLAY_ID(OVY_15)
	thumb_func_end ov14_021E8B1C

