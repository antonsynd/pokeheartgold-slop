#include "config.h"
#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_022378C0.inc"
	.include "global.inc"
	.public ov12_02237ED0

	.text

	.text
	thumb_func_start ov12_02237ED0
ov12_02237ED0: ; 0x02237ED0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02237F0C ; =0x00002445
	add r4, r1, #0
	ldrb r0, [r5, r0]
	cmp r0, r4
	bne _02237EE2
	bl GF_AssertFail
_02237EE2:
	ldr r0, _02237F0C ; =0x00002445
	cmp r4, #0
	strb r4, [r5, r0]
	bne _02237EFA
	ldr r0, _02237F10 ; =FS_OVERLAY_ID(OVY_10)
	bl UnloadOverlayByID
	ldr r0, _02237F14 ; =FS_OVERLAY_ID(OVY_7)
	mov r1, #2
	bl HandleLoadOverlay
	pop {r3, r4, r5, pc}
_02237EFA:
	ldr r0, _02237F14 ; =FS_OVERLAY_ID(OVY_7)
	bl UnloadOverlayByID
	ldr r0, _02237F10 ; =FS_OVERLAY_ID(OVY_10)
	mov r1, #2
	bl HandleLoadOverlay
	pop {r3, r4, r5, pc}
	nop
_02237F0C: .word 0x00002445
_02237F10: .word FS_OVERLAY_ID(OVY_10)
_02237F14: .word FS_OVERLAY_ID(OVY_7)
	thumb_func_end ov12_02237ED0

