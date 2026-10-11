#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_trainer_card_main.inc"
	.include "global.inc"
	.public ov51_021E76A4
	.public ov51_021E76EC
	.public ov51_021E77A0
	.public ov51_021E7804
	.public ov51_021E786C
	.extern ov51_021E7D44

	.text

	.text
	thumb_func_start ov51_021E76A4
ov51_021E76A4: ; 0x021E76A4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r1, _021E76E4 ; =0x000033D8
	add r5, r0, #0
	ldr r1, [r5, r1]
	mov r0, #4
	mov r2, #0
	bl FontID_String_GetWidth
	mov r1, #0x30
	sub r4, r1, r0
	add r0, r5, #0
	add r0, #0xd4
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r1, #4
	str r1, [sp]
	mov r2, #0
	ldr r0, _021E76E8 ; =0x00050400
	str r2, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _021E76E4 ; =0x000033D8
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #0xd4
	lsr r3, r4, #1
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E76E4: .word 0x000033D8
_021E76E8: .word 0x00050400
	thumb_func_end ov51_021E76A4

	thumb_func_start ov51_021E76EC
ov51_021E76EC: ; 0x021E76EC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0xc4
	cmp r1, #0
	bne _021E7706
	ldr r0, _021E778C ; =0x0000343A
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021E7706
	mov r1, #1
_021E7706:
	cmp r1, #0
	beq _021E7712
	cmp r1, #1
	beq _021E7756
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021E7712:
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r1, _021E7790 ; =0x000033E0
	mov r0, #4
	ldr r1, [r5, r1]
	mov r2, #0
	bl FontID_String_GetWidth
	mov r1, #0x60
	sub r3, r1, r0
	mov r1, #4
	str r1, [sp]
	mov r2, #0
	ldr r0, _021E7794 ; =0x00050400
	str r2, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _021E7790 ; =0x000033E0
	add r0, r4, #0
	ldr r2, [r5, r2]
	lsr r3, r3, #1
	bl AddTextPrinterParameterizedWithColor
	ldr r0, _021E7798 ; =0x0000311C
	mov r1, #1
	add r0, r5, r0
	mov r2, #2
	add r3, r1, #0
	bl ov51_021E7D44
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021E7756:
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	ldr r0, _021E7794 ; =0x00050400
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r2, _021E779C ; =0x000033DC
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r0, r4, #0
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	ldr r0, _021E7798 ; =0x0000311C
	mov r1, #1
	add r0, r5, r0
	mov r2, #4
	add r3, r1, #0
	bl ov51_021E7D44
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021E778C: .word 0x0000343A
_021E7790: .word 0x000033E0
_021E7794: .word 0x00050400
_021E7798: .word 0x0000311C
_021E779C: .word 0x000033DC
	thumb_func_end ov51_021E76EC

	thumb_func_start ov51_021E77A0
ov51_021E77A0: ; 0x021E77A0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	bne _021E77B6
	ldr r2, _021E77F4 ; =0x000003E1
	add r0, #0xb4
	mov r1, #1
	mov r3, #0xd
	bl DrawFrameAndWindow2
_021E77B6:
	add r0, r5, #0
	add r0, #0xb4
	mov r1, #0xf
	bl FillWindowPixelBuffer
	mov r3, #0
	ldr r2, _021E77F8 ; =0x0000343E
	str r3, [sp]
	ldrb r0, [r5, r2]
	lsl r4, r4, #2
	add r4, r5, r4
	str r0, [sp, #4]
	ldr r0, _021E77FC ; =0x0001020F
	sub r2, #0x5a
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r0, r5, #0
	ldr r2, [r4, r2]
	add r0, #0xb4
	mov r1, #1
	bl AddTextPrinterParameterizedWithColor
	ldr r1, _021E7800 ; =0x0000343C
	strb r0, [r5, r1]
	ldr r0, [r5]
	mov r1, #4
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021E77F4: .word 0x000003E1
_021E77F8: .word 0x0000343E
_021E77FC: .word 0x0001020F
_021E7800: .word 0x0000343C
	thumb_func_end ov51_021E77A0

	thumb_func_start ov51_021E7804
ov51_021E7804: ; 0x021E7804
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r0, [r4]
	mov r1, #0x1a
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021E7864 ; =0x000003A5
	mov r2, #0xf
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	add r0, sp, #0
	strb r1, [r0, #0x10]
	mov r1, #6
	strb r1, [r0, #0x11]
	ldrb r1, [r0, #0x12]
	bic r1, r2
	ldr r2, _021E7868 ; =0x0000310C
	ldr r2, [r4, r2]
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	mov r2, #0xf
	and r2, r3
	orr r1, r2
	strb r1, [r0, #0x12]
	ldrb r2, [r0, #0x12]
	mov r1, #0xf0
	bic r2, r1
	strb r2, [r0, #0x12]
	mov r0, #0xcf
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplate
	ldr r0, [r4]
	mov r1, #4
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
_021E7864: .word 0x000003A5
_021E7868: .word 0x0000310C
	thumb_func_end ov51_021E7804

	thumb_func_start ov51_021E786C
ov51_021E786C: ; 0x021E786C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0xcf
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r6, r1, #0
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _021E7886
	cmp r0, #2
	beq _021E788A
	b _021E788E
_021E7886:
	mov r4, #1
	b _021E7894
_021E788A:
	mov r4, #0
	b _021E7894
_021E788E:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021E7894:
	mov r0, #0xcf
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl YesNoPrompt_IsInTouchMode
	ldr r1, _021E78CC ; =0x0000310C
	str r0, [r5, r1]
	mov r0, #0xcf
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl YesNoPrompt_Reset
	cmp r4, #0
	beq _021E78B4
	cmp r6, #0
	beq _021E78C6
_021E78B4:
	add r0, r5, #0
	add r0, #0xb4
	mov r1, #0
	bl ClearFrameAndWindow2
	ldr r0, [r5]
	mov r1, #4
	bl ScheduleBgTilemapBufferTransfer
_021E78C6:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_021E78CC: .word 0x0000310C
	thumb_func_end ov51_021E786C

