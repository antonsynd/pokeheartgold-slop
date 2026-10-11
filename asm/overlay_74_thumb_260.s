#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02231638
	.public ov74_02231670
	.extern ov74_022305E4
	.extern ov74_022306C8
	.extern ov74_022308E0
	.extern ov74_02231054
	.extern ov74_022310D0
	.extern ov74_022310DC
	.extern ov74_022310E8
	.extern ov74_022310F4
	.extern ov74_02231100
	.extern ov74_022311E8
	.extern ov74_02231448
	.public gApplication_TitleScreen
	.public sub_020342C0

	.public MainMenuApp_Init
	.public MainMenuApp_Main
	.public MainMenuApp_Exit
	.public ov74_0223B2C0
	.public ov74_0223B2CC
	.public ov74_0223B2D8
	.public ov74_0223B2E8
	.public gApp_MainMenu_SelectOption_ConnectToRanger
	.public gApp_MainMenu_SelectOption_MigrateFromAgb
	.public gApp_MainMenu_SelectOption_MysteryGift

	.text

	.text
	thumb_func_start ov74_02231638
ov74_02231638: ; 0x02231638
	push {r3, r4, lr}
	sub sp, #4
	bl ov74_022311E8
	add r4, r0, #0
	bl ov74_02231100
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0223166C ; =ov74_022305E4
	add r2, r4, #0
	mov r3, #1
	bl WM_StartConnectEx
	cmp r0, #2
	beq _02231664
	bl ov74_02231448
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_02231664:
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223166C: .word ov74_022305E4
	thumb_func_end ov74_02231638

	thumb_func_start ov74_02231670
ov74_02231670: ; 0x02231670
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _022316E0 ; =ov74_022308E0
	mov r0, #4
	mov r2, #0
	bl WM_SetPortCallback
	cmp r0, #0
	beq _0223168C
	bl ov74_02231448
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223168C:
	bl ov74_02231054
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	bne _0223169A
	mov r5, #1
	b _0223169C
_0223169A:
	mov r5, #0
_0223169C:
	bl ov74_022310F4
	add r6, r0, #0
	bl ov74_022310DC
	add r4, r0, #0
	bl ov74_022310E8
	add r7, r0, #0
	bl ov74_022310D0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	lsl r2, r4, #0x10
	ldr r0, _022316E4 ; =ov74_022306C8
	add r1, r6, #0
	lsr r2, r2, #0x10
	add r3, r7, #0
	bl WM_StartMP
	cmp r0, #2
	beq _022316DA
	bl ov74_02231448
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022316DA:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022316E0: .word ov74_022308E0
_022316E4: .word ov74_022306C8
	thumb_func_end ov74_02231670

