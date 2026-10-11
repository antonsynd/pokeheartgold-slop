#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_trainer_card_main.inc"
	.include "global.inc"
	.public ov51_021E67A4
	.public ov51_021E6888
	.public ov51_021E69EC
	.public ov51_021E6A54
	.public ov51_021E6AAC
	.public ov51_021E6B44
	.public ov51_021E6B88
	.public ov51_021E6C00
	.public ov51_021E6C6C
	.extern _021E7DB8
	.extern ov51_021E66C0
	.extern ov51_021E6D44
	.extern ov51_021E6E10
	.extern ov51_021E71D0
	.extern ov51_021E76EC
	.extern ov51_021E77A0
	.extern ov51_021E7804
	.extern ov51_021E786C
	.extern ov51_021E7DBC
	.extern ov51_021E7DC0

	.text

	.text
	thumb_func_start ov51_021E67A4
ov51_021E67A4: ; 0x021E67A4
	push {r4, lr}
	ldr r1, _021E6884 ; =0x00003436
	add r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #4
	bhi _021E6880
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E67BC: ; jump table
	.short _021E67C6 - _021E67BC - 2 ; case 0
	.short _021E67D6 - _021E67BC - 2 ; case 1
	.short _021E6800 - _021E67BC - 2 ; case 2
	.short _021E683E - _021E67BC - 2 ; case 3
	.short _021E6860 - _021E67BC - 2 ; case 4
_021E67C6:
	mov r1, #0
	bl ov51_021E77A0
	ldr r0, _021E6884 ; =0x00003436
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021E6880
_021E67D6:
	add r0, r1, #6
	ldrb r0, [r4, r0]
	bl TextPrinterCheckActive
	cmp r0, #0
	beq _021E67E6
	mov r0, #0
	pop {r4, pc}
_021E67E6:
	add r0, r4, #0
	mov r1, #0
	bl ov51_021E7804
	add r0, r4, #0
	mov r1, #1
	bl ov51_021E6E10
	ldr r0, _021E6884 ; =0x00003436
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021E6880
_021E6800:
	mov r1, #0
	bl ov51_021E786C
	cmp r0, #0
	blt _021E6880
	bne _021E6818
	add r0, r4, #0
	mov r1, #0
	bl ov51_021E6E10
	mov r0, #1
	pop {r4, pc}
_021E6818:
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _021E6830
	add r0, r4, #0
	mov r1, #1
	bl ov51_021E77A0
	b _021E6834
_021E6830:
	mov r0, #2
	pop {r4, pc}
_021E6834:
	ldr r0, _021E6884 ; =0x00003436
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021E6880
_021E683E:
	add r0, r1, #6
	ldrb r0, [r4, r0]
	bl TextPrinterCheckActive
	cmp r0, #0
	beq _021E684E
	mov r0, #0
	pop {r4, pc}
_021E684E:
	add r0, r4, #0
	mov r1, #1
	bl ov51_021E7804
	ldr r0, _021E6884 ; =0x00003436
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021E6880
_021E6860:
	mov r1, #1
	bl ov51_021E786C
	cmp r0, #0
	beq _021E6870
	cmp r0, #1
	beq _021E687C
	b _021E6880
_021E6870:
	add r0, r4, #0
	mov r1, #0
	bl ov51_021E6E10
	mov r0, #1
	pop {r4, pc}
_021E687C:
	mov r0, #2
	pop {r4, pc}
_021E6880:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_021E6884: .word 0x00003436
	thumb_func_end ov51_021E67A4

	thumb_func_start ov51_021E6888
ov51_021E6888: ; 0x021E6888
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _021E69D4 ; =0x00003436
	add r4, r0, #0
	ldrb r2, [r4, r1]
	mov r5, #0
	cmp r2, #5
	bls _021E6898
	b _021E69C4
_021E6898:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E68A4: ; jump table
	.short _021E68B0 - _021E68A4 - 2 ; case 0
	.short _021E68DE - _021E68A4 - 2 ; case 1
	.short _021E6918 - _021E68A4 - 2 ; case 2
	.short _021E6930 - _021E68A4 - 2 ; case 3
	.short _021E696E - _021E68A4 - 2 ; case 4
	.short _021E697E - _021E68A4 - 2 ; case 5
_021E68B0:
	mov r0, #8
	sub r1, #0xa2
	str r0, [r4, r1]
	ldr r1, _021E69D8 ; =0x000030FC
	lsl r2, r0, #9
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r4, r1]
	add r0, #0x80
	str r0, [r4, r1]
	add r0, r1, #4
	ldr r2, [r4, r0]
	add r2, #0x80
	str r2, [r4, r0]
	ldr r0, _021E69DC ; =SEQ_SE_DP_CARD5
	bl PlaySE
	ldr r0, _021E69D4 ; =0x00003436
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021E69C4
_021E68DE:
	add r3, r1, #0
	sub r3, #0xa2
	ldr r7, [r4, r3]
	ldr r6, _021E69D8 ; =0x000030FC
	mov r3, #0xc
	mov r0, #2
	sub r3, r3, r7
	ldr r2, [r4, r6]
	lsl r0, r3
	sub r0, r2, r0
	str r0, [r4, r6]
	ldr r0, [r4, r6]
	cmp r0, #0
	bgt _021E6904
	mov r0, #0x24
	str r0, [r4, r6]
	ldrb r0, [r4, r1]
	add r0, r0, #1
	strb r0, [r4, r1]
_021E6904:
	ldr r0, _021E69E0 ; =0x00003394
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #1
	bgt _021E69C4
	mov r1, #1
	str r1, [r4, r0]
	b _021E69C4
_021E6918:
	ldr r2, _021E69E4 ; =0x000030F4
	mov r1, #1
	ldr r3, [r4, r2]
	eor r1, r3
	str r1, [r4, r2]
	bl ov51_021E66C0
	ldr r0, _021E69D4 ; =0x00003436
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021E69C4
_021E6930:
	ldr r1, _021E69E4 ; =0x000030F4
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _021E6946
	bl ov51_021E6C6C
	add r0, r4, #0
	mov r1, #1
	bl ov51_021E76EC
	b _021E6964
_021E6946:
	add r2, r4, #0
	ldr r0, [r4]
	mov r1, #7
	add r2, #0xec
	bl ov51_021E6D44
	ldr r0, _021E69E8 ; =0x0000343A
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _021E6964
	add r0, r4, #0
	add r1, r5, #0
	bl ov51_021E76EC
_021E6964:
	ldr r0, _021E69D4 ; =0x00003436
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021E69C4
_021E696E:
	add r1, r4, #4
	bl ov51_021E71D0
	ldr r0, _021E69D4 ; =0x00003436
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021E69C4
_021E697E:
	add r0, r1, #0
	sub r0, #0xa2
	ldr r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #0
	sub r0, #0xa2
	str r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0xa2
	ldr r0, [r4, r0]
	cmp r0, #8
	ble _021E699C
	mov r0, #8
	sub r1, #0xa2
	str r0, [r4, r1]
_021E699C:
	ldr r2, _021E69E0 ; =0x00003394
	ldr r3, _021E69D8 ; =0x000030FC
	ldr r6, [r4, r2]
	mov r2, #0xc
	mov r0, #2
	sub r2, r2, r6
	add r6, r0, #0
	ldr r1, [r4, r3]
	lsl r6, r2
	add r1, r1, r6
	str r1, [r4, r3]
	ldr r2, [r4, r3]
	lsl r1, r0, #0xb
	cmp r2, r1
	blt _021E69C4
	str r1, [r4, r3]
	str r1, [r4, r3]
	add r0, r3, #4
	str r1, [r4, r0]
	mov r5, #1
_021E69C4:
	ldr r1, _021E69E8 ; =0x0000343A
	mov r0, #4
	ldrb r2, [r4, r1]
	orr r0, r2
	strb r0, [r4, r1]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E69D4: .word 0x00003436
_021E69D8: .word 0x000030FC
_021E69DC: .word SEQ_SE_DP_CARD5
_021E69E0: .word 0x00003394
_021E69E4: .word 0x000030F4
_021E69E8: .word 0x0000343A
	thumb_func_end ov51_021E6888

	thumb_func_start ov51_021E69EC
ov51_021E69EC: ; 0x021E69EC
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, _021E6A44 ; =0x000030FC
	ldr r0, [r4, r0]
	bl FX_Inv
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x31
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl FX_Inv
	str r0, [sp, #0x14]
	bl OS_WaitVBlankIntr
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021E6A48 ; =0x04001020
	add r1, sp, #8
	mov r2, #0x80
	mov r3, #0x60
	bl G2x_SetBGyAffine_
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021E6A4C ; =0x04001030
	add r1, sp, #8
	mov r2, #0x80
	mov r3, #0x60
	bl G2x_SetBGyAffine_
	ldr r1, _021E6A50 ; =0x0000343A
	mov r0, #4
	ldrb r2, [r4, r1]
	bic r2, r0
	strb r2, [r4, r1]
	add sp, #0x18
	pop {r4, pc}
	.balign 4, 0
_021E6A44: .word 0x000030FC
_021E6A48: .word 0x04001020
_021E6A4C: .word 0x04001030
_021E6A50: .word 0x0000343A
	thumb_func_end ov51_021E69EC

	thumb_func_start ov51_021E6A54
ov51_021E6A54: ; 0x021E6A54
	push {r3, lr}
	ldr r1, _021E6A9C ; =gSystem
	mov r2, #1
	ldr r1, [r1, #0x48]
	tst r2, r1
	beq _021E6A7C
	ldr r2, _021E6AA0 ; =0x000030F4
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _021E6A8E
	ldr r2, _021E6AA4 ; =0x0000343A
	ldrb r0, [r0, r2]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _021E6A8E
	ldr r0, _021E6AA8 ; =SEQ_SE_DP_SELECT
	bl PlaySE
	mov r0, #4
	pop {r3, pc}
_021E6A7C:
	mov r0, #2
	tst r0, r1
	beq _021E6A8E
	mov r0, #SEQ_SE_GS_GEARCANCEL>>6
	lsl r0, r0, #6
	bl PlaySE
	mov r0, #5
	pop {r3, pc}
_021E6A8E:
	mov r0, #0x30
	tst r0, r1
	beq _021E6A98
	mov r0, #3
	pop {r3, pc}
_021E6A98:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_021E6A9C: .word gSystem
_021E6AA0: .word 0x000030F4
_021E6AA4: .word 0x0000343A
_021E6AA8: .word SEQ_SE_DP_SELECT
	thumb_func_end ov51_021E6A54

	thumb_func_start ov51_021E6AAC
ov51_021E6AAC: ; 0x021E6AAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl System_GetTouchNew
	cmp r0, #0
	bne _021E6ABE
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E6ABE:
	ldr r0, _021E6B28 ; =_021E7DB8
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _021E6AD8
	mov r0, #1
	str r0, [r4]
	mov r0, #SEQ_SE_GS_GEARCANCEL>>6
	lsl r0, r0, #6
	bl PlaySE
	mov r0, #5
	pop {r3, r4, r5, pc}
_021E6AD8:
	ldr r0, _021E6B2C ; =0x000030F4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E6B02
	ldr r0, _021E6B30 ; =0x0000343A
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _021E6B02
	ldr r0, _021E6B34 ; =ov51_021E7DBC
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _021E6B02
	mov r0, #1
	str r0, [r4]
	ldr r0, _021E6B38 ; =SEQ_SE_DP_SELECT
	bl PlaySE
	mov r0, #4
	pop {r3, r4, r5, pc}
_021E6B02:
	ldr r0, _021E6B3C ; =ov51_021E7DC0
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _021E6B24
	ldr r1, _021E6B40 ; =gSystem + 0x40
	mov r0, #0xd1
	ldrh r2, [r1, #0x20]
	lsl r0, r0, #6
	strb r2, [r5, r0]
	ldrh r1, [r1, #0x22]
	add r0, r0, #1
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [r4]
	mov r0, #3
	pop {r3, r4, r5, pc}
_021E6B24:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E6B28: .word _021E7DB8
_021E6B2C: .word 0x000030F4
_021E6B30: .word 0x0000343A
_021E6B34: .word ov51_021E7DBC
_021E6B38: .word SEQ_SE_DP_SELECT
_021E6B3C: .word ov51_021E7DC0
_021E6B40: .word gSystem + 0x40
	thumb_func_end ov51_021E6AAC

	thumb_func_start ov51_021E6B44
ov51_021E6B44: ; 0x021E6B44
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0
	str r1, [sp]
	sub r2, r1, #1
	ldr r1, _021E6B80 ; =0x00003108
	add r4, r0, #0
	str r2, [r4, r1]
	add r1, sp, #0
	bl ov51_021E6AAC
	ldr r1, [sp]
	cmp r1, #0
	beq _021E6B6A
	ldr r1, _021E6B84 ; =0x0000310C
	mov r2, #1
	add sp, #4
	str r2, [r4, r1]
	pop {r3, r4, pc}
_021E6B6A:
	add r0, r4, #0
	bl ov51_021E6A54
	cmp r0, #0
	beq _021E6B7A
	ldr r1, _021E6B84 ; =0x0000310C
	mov r2, #0
	str r2, [r4, r1]
_021E6B7A:
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E6B80: .word 0x00003108
_021E6B84: .word 0x0000310C
	thumb_func_end ov51_021E6B44

	thumb_func_start ov51_021E6B88
ov51_021E6B88: ; 0x021E6B88
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _021E6BF0 ; =0x0000343F
	mov r1, #5
	ldrb r0, [r4, r0]
	mov r2, #0
	neg r5, r0
	ldr r0, [r4]
	add r3, r5, #0
	bl BgSetPosTextAndCommit
	ldr r0, [r4]
	mov r1, #5
	mov r2, #3
	add r3, r5, #0
	bl BgSetPosTextAndCommit
	ldr r0, [r4]
	mov r1, #3
	mov r2, #0
	add r3, r5, #0
	bl BgSetPosTextAndCommit
	mov r1, #3
	ldr r0, [r4]
	add r2, r1, #0
	add r3, r5, #0
	bl BgSetPosTextAndCommit
	ldr r0, _021E6BF4 ; =0x0000343A
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021E6BD2
	add r0, r4, #0
	bl ov51_021E69EC
_021E6BD2:
	ldr r0, [r4]
	bl DoScheduledBgGpuUpdates
	bl GF_RunVramTransferTasks
	bl OamManager_ApplyAndResetBuffers
	ldr r3, _021E6BF8 ; =0x027E0000
	ldr r1, _021E6BFC ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, r4, r5, pc}
	nop
_021E6BF0: .word 0x0000343F
_021E6BF4: .word 0x0000343A
_021E6BF8: .word 0x027E0000
_021E6BFC: .word 0x00003FF8
	thumb_func_end ov51_021E6B88

	thumb_func_start ov51_021E6C00
ov51_021E6C00: ; 0x021E6C00
	push {r4, lr}
	sub sp, #0x18
	mov r0, #1
	lsl r0, r0, #0xc
	bl FX_Inv
	add r4, r0, #0
	mov r0, #1
	lsl r0, r0, #0xc
	bl FX_Inv
	mov r1, #0
	str r4, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	bl OS_WaitVBlankIntr
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021E6C60 ; =0x04001020
	add r1, sp, #8
	mov r2, #0x80
	mov r3, #0x60
	bl G2x_SetBGyAffine_
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021E6C64 ; =0x04001030
	add r1, sp, #8
	mov r2, #0x80
	mov r3, #0x60
	bl G2x_SetBGyAffine_
	bl OS_WaitVBlankIntr
	mov r3, #0
	str r3, [sp]
	ldr r0, _021E6C68 ; =0x04000030
	add r1, sp, #8
	mov r2, #0x80
	str r3, [sp, #4]
	bl G2x_SetBGyAffine_
	add sp, #0x18
	pop {r4, pc}
	.balign 4, 0
_021E6C60: .word 0x04001020
_021E6C64: .word 0x04001030
_021E6C68: .word 0x04000030
	thumb_func_end ov51_021E6C00

	thumb_func_start ov51_021E6C6C
ov51_021E6C6C: ; 0x021E6C6C
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, _021E6CC4 ; =0x000030F0
	mov r1, #7
	ldr r3, [r4, r0]
	mov r0, #0
	str r0, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r4]
	ldr r3, [r3, #0x10]
	bl BG_LoadCharTilesData
	ldr r0, _021E6CC8 ; =0x000033B4
	mov r1, #0xa
	ldr r0, [r4, r0]
	mov r2, #0x15
	str r1, [sp]
	mov r1, #0xb
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	mov r3, #5
	str r3, [sp, #0x10]
	ldrh r1, [r0]
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #7
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4]
	bl CopyToBgTilemapRect
	ldr r0, [r4]
	mov r1, #7
	bl BgCommitTilemapBufferToVram
	add sp, #0x1c
	pop {r3, r4, pc}
	.balign 4, 0
_021E6CC4: .word 0x000030F0
_021E6CC8: .word 0x000033B4
	thumb_func_end ov51_021E6C6C

