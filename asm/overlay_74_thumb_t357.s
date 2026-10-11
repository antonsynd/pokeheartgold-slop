#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02235690
	.public ov74_02235708
	.public ov74_02235728
	.extern ov74_02235A74
	.extern ov74_0223D454
	.extern ov74_0223D48C
	.extern ov74_0223D654
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
	thumb_func_start ov74_02235690
ov74_02235690: ; 0x02235690
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r6, _022356F8 ; =ov74_0223D454
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	ldr r2, _022356FC ; =ov74_0223D454
	str r3, [sp, #0xc]
	ldr r2, [r2, #8]
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl OamManager_Create
	ldr r2, _022356FC ; =ov74_0223D454
	ldr r1, _02235700 ; =ov74_0223D48C
	ldr r2, [r2, #8]
	mov r0, #0x80
	bl G2dRenderer_Init
	ldr r1, _022356FC ; =ov74_0223D454
	mov r2, #1
	str r0, [r1, #0x34]
	ldr r0, _02235700 ; =ov74_0223D48C
	mov r1, #0
	lsl r2, r2, #0x14
	bl G2dRenderer_SetSubSurfaceCoords
	mov r1, #3
	mov r7, #0x16
	ldr r0, _02235704 ; =ov74_0223D654
	lsl r1, r1, #0x12
	str r1, [r0, #0x10]
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #4
_022356E0:
	ldr r2, [r6, #8]
	mov r0, #0x20
	add r1, r4, #0
	bl Create2DGfxResObjMan
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _022356E0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022356F8: .word ov74_0223D454
_022356FC: .word ov74_0223D454
_02235700: .word ov74_0223D48C
_02235704: .word ov74_0223D654
	thumb_func_end ov74_02235690

	thumb_func_start ov74_02235708
ov74_02235708: ; 0x02235708
	push {r4, lr}
	ldr r0, _02235720 ; =ov74_0223D454
	ldr r4, _02235724 ; =ov74_0223D454
	ldr r0, [r0, #0x34]
	cmp r0, #0
	bne _02235718
	bl GF_AssertFail
_02235718:
	add r4, #0x34
	add r0, r4, #0
	pop {r4, pc}
	nop
_02235720: .word ov74_0223D454
_02235724: .word ov74_0223D454
	thumb_func_end ov74_02235708

	thumb_func_start ov74_02235728
ov74_02235728: ; 0x02235728
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r4, [sp, #0x54]
	add r6, r0, #0
	mov ip, r1
	str r2, [sp, #0x2c]
	str r3, [sp, #0x30]
	ldr r5, _02235894 ; =ov74_0223D454
	cmp r4, #0
	bne _02235740
	mov r7, #1
	b _02235742
_02235740:
	mov r7, #2
_02235742:
	mov r0, #1
	str r0, [sp, #0x34]
	cmp r6, #0x12
	bne _0223574E
	mov r0, #0
	str r0, [sp, #0x34]
_0223574E:
	mov r1, #0
	mvn r1, r1
	mov r0, ip
	cmp r0, r1
	beq _0223577C
	str r4, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #8]
	ldr r3, [sp, #0x34]
	str r0, [sp, #8]
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r2, ip
	bl AddCharResObjFromNarc
	mov r1, #0x18
	mul r1, r4
	add r2, r5, r1
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r2, r1]
_0223577C:
	mov r1, #0
	ldr r0, [sp, #0x2c]
	mvn r1, r1
	cmp r0, r1
	beq _022357AE
	str r4, [sp]
	str r7, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	ldr r2, [sp, #0x2c]
	str r0, [sp, #0xc]
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r3, #0
	bl AddPlttResObjFromNarc
	mov r1, #0x18
	mul r1, r4
	add r2, r5, r1
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r2, r1]
_022357AE:
	mov r1, #0
	ldr r0, [sp, #0x30]
	mvn r1, r1
	cmp r0, r1
	beq _022357DE
	str r4, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r2, [sp, #0x30]
	str r0, [sp, #8]
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x34]
	add r1, r6, #0
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x18
	add r2, r4, #0
	mul r2, r1
	add r2, r5, r2
	lsl r1, r1, #4
	str r0, [r2, r1]
_022357DE:
	mov r0, #0
	ldr r2, [sp, #0x50]
	mvn r0, r0
	cmp r2, r0
	beq _0223580C
	str r4, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r3, [sp, #0x34]
	str r0, [sp, #8]
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x18
	mul r1, r4
	add r2, r5, r1
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r2, r1]
_0223580C:
	mov r0, #0x18
	add r6, r4, #0
	mul r6, r0
	mov r0, #0x5e
	add r1, r5, r6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl SpriteTransfer_CreateCharTransferTask
	mov r0, #0x5f
	add r1, r5, r6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl SpriteTransfer_CreatePlttTransferTask
	mov r0, #0
	mov r2, #0x16
	str r4, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r2, r2, #4
	ldr r1, [r5, r2]
	add r3, r4, #0
	str r1, [sp, #0x14]
	add r1, r2, #4
	ldr r1, [r5, r1]
	str r1, [sp, #0x18]
	add r1, r2, #0
	add r1, #8
	ldr r1, [r5, r1]
	str r1, [sp, #0x1c]
	add r1, r2, #0
	add r1, #0xc
	ldr r1, [r5, r1]
	add r2, #0x48
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	mov r0, #0x24
	add r1, r5, r2
	mul r0, r4
	add r0, r1, r0
	add r1, r4, #0
	add r2, r4, #0
	bl CreateSpriteResourcesHeader
	cmp r4, #0
	bne _0223587E
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	b _02235886
_0223587E:
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
_02235886:
	ldr r0, _02235898 ; =ov74_02235A74
	mov r1, #0
	bl Main_SetVBlankIntrCB
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02235894: .word ov74_0223D454
_02235898: .word ov74_02235A74
	thumb_func_end ov74_02235728

