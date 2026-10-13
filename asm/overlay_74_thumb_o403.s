#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0223514C
	.extern _0223B690
	.extern ov74_02235138
	.extern ov74_0223CE9C
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
	thumb_func_start ov74_0223514C
ov74_0223514C: ; 0x0223514C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x130
	bl CTRDG_GetAgbGameCode
	lsr r1, r0, #0x18
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	lsr r1, r0, #0x10
	lsl r3, r0, #0x18
	lsr r0, r0, #8
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #8
	lsr r1, r1, #0x10
	orr r0, r3
	orr r0, r1
	add r6, r2, #0
	orr r6, r0
	ldr r0, _022351E0 ; =ov74_0223CE9C
	mov r4, #0
	ldr r0, [r0]
	cmp r0, #0
	bls _022351D6
	ldr r5, _022351E4 ; =ov74_0223CE9C
	add r7, sp, #0x80
_02235182:
	ldr r0, [r5]
	cmp r6, r0
	bne _022351CC
	mov r0, #1
	bl CTRDG_Enable
	mov r0, #0x81
	ldr r2, _022351E8 ; =0x000004A8
	lsl r0, r0, #0x14
	add r1, r7, #0
	bl CTRDG_CpuCopy8
	ldr r0, _022351EC ; =0x08020000
	add r1, sp, #0
	mov r2, #0x80
	bl CTRDG_CpuCopy8
	mov r0, #0
	bl CTRDG_Enable
	ldr r0, _022351F0 ; =ov74_02235138
	ldr r1, _022351F4 ; =Heap_Free
	bl CRYPTO_SetAllocator
	ldr r1, _022351E8 ; =0x000004A8
	ldr r3, _022351F8 ; =_0223B690
	add r0, r7, #0
	add r2, sp, #0
	bl CRYPTO_VerifySignature
	cmp r0, #0
	beq _022351CC
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x130
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022351CC:
	add r5, r5, #4
	ldr r0, [r5]
	add r4, r4, #1
	cmp r4, r0
	blo _02235182
_022351D6:
	mov r0, #0
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x130
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022351E0: .word ov74_0223CE9C
_022351E4: .word ov74_0223CE9C
_022351E8: .word 0x000004A8
_022351EC: .word 0x08020000
_022351F0: .word ov74_02235138
_022351F4: .word Heap_Free
_022351F8: .word _0223B690
	thumb_func_end ov74_0223514C

