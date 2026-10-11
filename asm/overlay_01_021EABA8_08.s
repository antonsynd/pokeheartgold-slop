#include "constants/sndseq.h"
#include "constants/moves.h"
#include "constants/std_script.h"
#include "constants/species.h"
#include "constants/sprites.h"
#include "constants/maps.h"
#include "constants/mmodel.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0096_D31R0201.h"
#include "msgdata/msg/msg_0066_D23R0102.h"
	.include "asm/macros.inc"
	.include "overlay_01_021EABA8.inc"
	.include "global.inc"
	.public ov01_021EAEE0

	.text

	.text
	thumb_func_start ov01_021EAEE0
ov01_021EAEE0: ; 0x021EAEE0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r2, #0
	add r5, r0, #0
	mul r0, r4
	add r1, r7, #0
	bl _s32_div_f
	add r6, r0, #0
	sub r0, r4, #1
	mul r0, r5
	add r1, r7, #0
	bl _s32_div_f
	sub r0, r6, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021EAEE0

