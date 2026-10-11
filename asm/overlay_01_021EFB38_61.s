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
	.include "overlay_01_021EFB38.inc"
	.include "global.inc"
	.public ov01_021F1044
	.extern ov01_02209B64

	.text

	.text
	thumb_func_start ov01_021F1044
ov01_021F1044: ; 0x021F1044
	push {r3, lr}
	ldr r0, _021F105C ; =ov01_02209B64
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl sub_020154B0
	cmp r0, #0
	bne _021F1058
	mov r0, #1
	pop {r3, pc}
_021F1058:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_021F105C: .word ov01_02209B64
	thumb_func_end ov01_021F1044

