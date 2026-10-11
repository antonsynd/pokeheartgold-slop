#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_022366E8
	.public ov74_02236768
	.public ov74_022368A4
	.public ov74_022368D4
	.extern ov74_02236168
	.extern ov74_0223E2FC
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
	thumb_func_start ov74_022366E8
ov74_022366E8: ; 0x022366E8
	push {r4, r5, r6, lr}
	ldr r3, _02236758 ; =ov74_0223E2FC
	ldr r1, _0223675C ; =0x00001048
	ldr r2, [r3]
	mov r4, #0
	str r4, [r2, r1]
	ldr r1, [r3]
	ldr r2, _02236760 ; =0x00001158
	mov r4, #3
	strh r4, [r1, r2]
	ldrh r5, [r0]
	ldr r4, [r3]
	add r1, r2, #2
	strh r5, [r4, r1]
	ldr r4, [r0, #4]
	add r0, r2, #0
	ldr r1, [r3]
	add r0, #8
	str r4, [r1, r0]
	ldr r4, [r3]
	add r2, #8
	ldr r0, [r4, r2]
	mov r1, #0x68
	sub r0, r0, #1
	bl _u32_div_f
	ldr r2, _02236764 ; =0x0000115C
	add r0, r0, #1
	strh r0, [r4, r2]
	ldr r4, _02236758 ; =ov74_0223E2FC
	mov r0, #0
	ldr r3, [r4]
	add r1, r2, #2
	strh r0, [r3, r1]
	add r1, r2, #0
	ldr r3, [r4]
	add r1, #8
	str r0, [r3, r1]
	ldr r1, [r4]
	ldrh r2, [r1, r2]
	cmp r2, #0
	ble _02236754
	mov r2, #0x46
	lsl r2, r2, #6
	add r3, r2, #0
	add r6, r0, #0
	sub r3, #0x24
_02236746:
	add r1, r1, r0
	strb r6, [r1, r2]
	ldr r1, [r4]
	add r0, r0, #1
	ldrh r5, [r1, r3]
	cmp r0, r5
	blt _02236746
_02236754:
	pop {r4, r5, r6, pc}
	nop
_02236758: .word ov74_0223E2FC
_0223675C: .word 0x00001048
_02236760: .word 0x00001158
_02236764: .word 0x0000115C
	thumb_func_end ov74_022366E8

	thumb_func_start ov74_02236768
ov74_02236768: ; 0x02236768
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _02236884 ; =ov74_0223E2FC
	ldrh r1, [r4]
	ldr r3, [r0]
	ldr r0, _02236888 ; =0x0000115A
	ldrh r2, [r3, r0]
	cmp r2, r1
	bne _02236784
	add r0, r0, #6
	ldr r1, [r3, r0]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _022367B0
_02236784:
	ldr r0, _02236884 ; =ov74_0223E2FC
	ldr r3, [r0]
	ldr r0, _0223688C ; =0x00001164
	ldr r2, [r3, r0]
	add r1, r2, #1
	str r1, [r3, r0]
	cmp r2, #0x10
	blo _022367AC
	add r0, r4, #0
	bl ov74_022366E8
	ldr r0, _02236884 ; =ov74_0223E2FC
	ldr r1, [r0]
	ldr r0, _02236890 ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _022367B0
	mov r0, #5
	blx r1
	b _022367B0
_022367AC:
	mov r0, #0
	pop {r3, r4, r5, pc}
_022367B0:
	ldrh r3, [r4, #2]
	ldr r0, _02236894 ; =0x0000FFFF
	cmp r3, r0
	bne _022367D8
	ldr r1, _02236884 ; =ov74_0223E2FC
	add r4, #8
	ldr r2, [r1]
	mov r1, #0xfe
	lsl r1, r1, #4
	add r1, r2, r1
	add r0, r4, #0
	mov r2, #0x68
	bl MIi_CpuCopy32
	ldr r0, _02236884 ; =ov74_0223E2FC
	mov r2, #1
	ldr r1, [r0]
	ldr r0, _02236898 ; =0x00001048
	str r2, [r1, r0]
	b _02236880
_022367D8:
	ldr r1, _02236884 ; =ov74_0223E2FC
	ldr r0, _0223689C ; =0x00001168
	ldr r2, [r1]
	str r3, [r2, r0]
	ldr r3, [r1]
	add r1, r0, #0
	sub r1, #0xc
	ldrh r2, [r4, #2]
	ldrh r1, [r3, r1]
	cmp r2, r1
	blo _02236800
	add r0, #0x14
	ldr r1, [r3, r0]
	cmp r1, #0
	beq _022367FA
	mov r0, #4
	blx r1
_022367FA:
	mov r0, #9
	bl ov74_02236168
_02236800:
	ldr r0, _02236884 ; =ov74_0223E2FC
	mov r2, #0x46
	ldr r1, [r0]
	lsl r2, r2, #6
	ldrh r3, [r4, #2]
	add r5, r1, r2
	ldrb r1, [r5, r3]
	cmp r1, #0
	bne _02236880
	mov r1, #1
	strb r1, [r5, r3]
	ldr r5, [r0]
	add r0, r2, #0
	sub r0, #0x24
	ldrh r0, [r5, r0]
	ldrh r1, [r4, #2]
	sub r0, r0, #1
	cmp r1, r0
	bne _02236844
	add r3, r1, #0
	add r1, r2, #0
	sub r1, #8
	sub r2, #0x20
	mov r0, #0x68
	ldr r1, [r5, r1]
	mul r3, r0
	ldr r2, [r5, r2]
	add r4, #8
	add r0, r4, #0
	add r1, r1, r3
	sub r2, r2, r3
	bl MIi_CpuCopy32
	b _02236858
_02236844:
	add r4, #8
	sub r2, #8
	add r0, r4, #0
	ldr r4, [r5, r2]
	mov r2, #0x68
	add r3, r1, #0
	mul r3, r2
	add r1, r4, r3
	bl MIi_CpuCopy32
_02236858:
	ldr r1, _02236884 ; =ov74_0223E2FC
	ldr r0, _022368A0 ; =0x0000115E
	ldr r3, [r1]
	ldrh r2, [r3, r0]
	add r2, r2, #1
	strh r2, [r3, r0]
	ldr r3, [r1]
	sub r1, r0, #2
	ldrh r2, [r3, r0]
	ldrh r1, [r3, r1]
	cmp r2, r1
	bne _02236880
	add r0, #0x1e
	ldr r1, [r3, r0]
	cmp r1, #0
	beq _0223687C
	mov r0, #2
	blx r1
_0223687C:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02236880:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02236884: .word ov74_0223E2FC
_02236888: .word 0x0000115A
_0223688C: .word 0x00001164
_02236890: .word 0x0000117C
_02236894: .word 0x0000FFFF
_02236898: .word 0x00001048
_0223689C: .word 0x00001168
_022368A0: .word 0x0000115E
	thumb_func_end ov74_02236768

	thumb_func_start ov74_022368A4
ov74_022368A4: ; 0x022368A4
	push {r3, r4}
	mov r2, #0
	add r3, r2, #0
	lsr r1, r1, #1
	beq _022368CC
_022368AE:
	lsl r4, r3, #1
	ldrh r4, [r0, r4]
	add r3, r3, #1
	lsl r3, r3, #0x10
	add r2, r2, r4
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	lsl r4, r2, #1
	asr r2, r2, #0xf
	orr r2, r4
	lsl r2, r2, #0x10
	lsr r3, r3, #0x10
	lsr r2, r2, #0x10
	cmp r3, r1
	blo _022368AE
_022368CC:
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov74_022368A4

	thumb_func_start ov74_022368D4
ov74_022368D4: ; 0x022368D4
	push {r4, lr}
	sub sp, #8
	ldr r0, _02236968 ; =ov74_0223E2FC
	add r1, sp, #0
	ldr r4, [r0]
	ldr r0, _0223696C ; =0x00001170
	add r3, r4, r0
	ldrh r2, [r3]
	sub r0, #0x16
	strh r2, [r1]
	ldrh r2, [r3, #2]
	strh r2, [r1, #6]
	ldrh r2, [r3, #4]
	add r3, sp, #0
	strh r2, [r1, #4]
	ldrh r0, [r4, r0]
	ldr r2, _02236970 ; =0x00003FA2
	strh r0, [r1, #2]
	mov r1, #0
_022368FA:
	ldrh r0, [r3]
	add r1, r1, #1
	eor r0, r2
	strh r0, [r3]
	ldrh r2, [r3]
	add r3, r3, #2
	cmp r1, #4
	blt _022368FA
	ldr r0, _02236968 ; =ov74_0223E2FC
	mov r2, #8
	ldr r1, [r0]
	ldr r0, _02236974 ; =0x0000104C
	add r0, r1, r0
	add r1, sp, #0
	bl CRYPTO_RC4Init
	ldr r0, _02236968 ; =ov74_0223E2FC
	ldr r2, _02236978 ; =0x00001178
	ldr r3, [r0]
	ldr r0, _02236974 ; =0x0000104C
	ldr r1, [r3, r2]
	sub r2, #0x18
	ldr r2, [r3, r2]
	add r0, r3, r0
	add r3, r1, #0
	bl CRYPTO_RC4Encrypt
	ldr r1, _02236968 ; =ov74_0223E2FC
	ldr r2, _02236974 ; =0x0000104C
	ldr r1, [r1]
	mov r0, #0
	add r1, r1, r2
	lsr r2, r2, #4
	bl MIi_CpuClear32
	ldr r0, _02236968 ; =ov74_0223E2FC
	ldr r1, _02236978 ; =0x00001178
	ldr r2, [r0]
	ldr r0, [r2, r1]
	sub r1, #0x18
	ldr r1, [r2, r1]
	bl ov74_022368A4
	ldr r1, _02236968 ; =ov74_0223E2FC
	ldr r2, [r1]
	ldr r1, _0223697C ; =0x0000115A
	ldrh r1, [r2, r1]
	cmp r1, r0
	bne _02236962
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_02236962:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_02236968: .word ov74_0223E2FC
_0223696C: .word 0x00001170
_02236970: .word 0x00003FA2
_02236974: .word 0x0000104C
_02236978: .word 0x00001178
_0223697C: .word 0x0000115A
	thumb_func_end ov74_022368D4

