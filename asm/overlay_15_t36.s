#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FB680
	.public ov15_021FB700
	.public ov15_021FB784
	.extern BagApp_TryUseItemInPlace
	.extern ov15_021FB518
	.extern ov15_021FB830
	.extern ov15_021FBBB0
	.extern ov15_021FD788
	.extern ov15_021FED3C
	.extern ov15_021FEF48
	.extern ov15_021FFF24

	.text

	.text
	thumb_func_start ov15_021FB680
ov15_021FB680: ; 0x021FB680
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r1, #0
	bl ov15_021FD788
	add r0, r4, #0
	bl ov15_021FFF24
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	add r0, #0x66
	ldrh r0, [r0]
	add r2, r1, #0
	bl GetItemAttr
	add r1, r0, #0
	lsl r1, r1, #0x10
	mov r0, #2
	lsr r1, r1, #0x10
	bl GetItemFieldUseFunc
	add r1, r0, #0
	beq _021FB6EE
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x70]
	blx r1
	add r3, r0, #0
	beq _021FB6EE
	mov r2, #0x8f
	mov r0, #6
	lsl r2, r2, #2
	str r0, [sp]
	ldr r0, [r4, r2]
	sub r2, #8
	ldr r2, [r4, r2]
	ldr r1, _021FB6F8 ; =0x000005E4
	add r2, #0x66
	ldrh r2, [r2]
	ldr r1, [r4, r1]
	bl GetItemUseErrorMessage
	add r0, r4, #0
	mov r1, #0
	bl ov15_021FEF48
	ldr r1, _021FB6FC ; =0x00000616
	add sp, #4
	strb r0, [r4, r1]
	mov r0, #0xc
	pop {r3, r4, pc}
_021FB6EE:
	add r0, r4, #0
	bl ov15_021FB784
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021FB6F8: .word 0x000005E4
_021FB6FC: .word 0x00000616
	thumb_func_end ov15_021FB680

	thumb_func_start ov15_021FB700
ov15_021FB700: ; 0x021FB700
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021FB778 ; =0x00000616
	ldrb r0, [r4, r0]
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _021FB772
	ldr r0, _021FB77C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _021FB722
	ldr r0, _021FB780 ; =gSystem + 0x40
	ldrh r0, [r0, #0x24]
	cmp r0, #0
	beq _021FB772
_021FB722:
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #3
	beq _021FB736
	add r0, r4, #0
	bl ov15_021FED3C
_021FB736:
	add r0, r4, #0
	add r0, #0x34
	mov r1, #1
	bl ClearFrameAndWindow2
	add r0, r4, #0
	add r0, #0x34
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r4, #4
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	mov r1, #1
	bl ov15_021FD788
	add r0, r4, #0
	bl ov15_021FB518
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #3
	bne _021FB76E
	mov r0, #0x1a
	pop {r4, pc}
_021FB76E:
	mov r0, #1
	pop {r4, pc}
_021FB772:
	mov r0, #0xc
	pop {r4, pc}
	nop
_021FB778: .word 0x00000616
_021FB77C: .word gSystem
_021FB780: .word gSystem + 0x40
	thumb_func_end ov15_021FB700

	thumb_func_start ov15_021FB784
ov15_021FB784: ; 0x021FB784
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r3, r1, #4
	add r1, #0x64
	ldrb r2, [r1]
	mov r1, #0xc
	mul r1, r2
	add r3, r3, r1
	ldr r1, _021FB80C ; =0x0000067B
	mov r2, #0
	strb r2, [r4, r1]
	ldrb r2, [r3, #8]
	cmp r2, #3
	bne _021FB7B0
	ldr r2, _021FB810 ; =ov15_021FB830
	add r0, r1, #1
	str r2, [r4, r0]
	mov r0, #0xd
	pop {r4, pc}
_021FB7B0:
	ldr r2, [r4, r0]
	sub r1, #0x97
	ldr r0, [r2]
	add r2, #0x66
	ldrh r2, [r2]
	ldr r1, [r4, r1]
	mov r3, #6
	bl TryFormatRegisteredKeyItemUseMessage
	cmp r0, #1
	bne _021FB7D6
	add r0, r4, #0
	mov r1, #0
	bl ov15_021FEF48
	ldr r1, _021FB814 ; =0x00000616
	strb r0, [r4, r1]
	mov r0, #0xc
	pop {r4, pc}
_021FB7D6:
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r1, #0x66
	ldrh r1, [r1]
	bl BagApp_TryUseItemInPlace
	cmp r0, #1
	bne _021FB7F4
	ldr r1, _021FB818 ; =ov15_021FBBB0
	ldr r0, _021FB81C ; =0x0000067C
	str r1, [r4, r0]
	mov r0, #0xd
	pop {r4, pc}
_021FB7F4:
	mov r0, #1
	mov r1, #6
	bl sub_020880CC
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x68
	strh r1, [r0]
	mov r0, #0x25
	pop {r4, pc}
	.balign 4, 0
_021FB80C: .word 0x0000067B
_021FB810: .word ov15_021FB830
_021FB814: .word 0x00000616
_021FB818: .word ov15_021FBBB0
_021FB81C: .word 0x0000067C
	thumb_func_end ov15_021FB784

