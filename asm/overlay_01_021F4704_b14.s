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
	.include "overlay_01_021F4704.inc"
	.include "global.inc"
	.public ov01_021F4D10
	.public ov01_021F4D88
	.public ov01_021F4E1C
	.public ov01_021F4E88
	.public ov01_021F4F0C
	.public ov01_021F4FB0
	.extern ov01_021F4A50
	.extern ov01_021F4AAC
	.extern ov01_021F4AE4
	.extern ov01_021F4B1C
	.extern ov01_021F4BE8
	.extern ov01_021F4C6C

	.text

	.text
	thumb_func_start ov01_021F4D10
ov01_021F4D10: ; 0x021F4D10
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r5, [sp, #0x40]
	lsl r4, r0, #2
	add r0, r5, r4
	ldr r0, [r0, #0x18]
	ldr r6, [sp, #0x3c]
	str r0, [sp]
	ldr r0, [sp, #0x38]
	str r1, [sp, #0xc]
	mul r0, r3
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r3, [r5, r4]
	add r0, sp, #0x10
	add r1, r6, #0
	bl ov01_021F4A50
	add r7, r0, #0
	ldr r0, _021F4D80 ; =0x0000FFFF
	cmp r7, r0
	beq _021F4D7C
	ldr r1, [r5, r4]
	add r0, r6, #0
	bl ov01_021F4AAC
	ldr r1, [r5, r4]
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	bl ov01_021F4AE4
	mov r0, #1
	lsl r0, r0, #8
	ldr r3, [r5, r4]
	ldr r2, _021F4D84 ; =0x00000868
	ldr r0, [r6, r0]
	ldr r2, [r3, r2]
	add r3, r6, #0
	add r3, #0xf4
	ldr r1, [sp, #0x1c]
	ldr r3, [r3]
	bl MapPropManager_LoadFromNARC
	str r5, [sp]
	str r7, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r1, [r5, r4]
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r2, sp, #0x10
	bl ov01_021F4BE8
_021F4D7C:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F4D80: .word 0x0000FFFF
_021F4D84: .word 0x00000868
	thumb_func_end ov01_021F4D10

	thumb_func_start ov01_021F4D88
ov01_021F4D88: ; 0x021F4D88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x30
	str r1, [sp, #0xc]
	ldr r1, _021F4E10 ; =0x00000828
	lsl r6, r0, #2
	add r1, sp
	ldr r4, [r1, #0x18]
	ldr r5, [r1, #0x14]
	add r0, r4, r6
	ldr r0, [r0, #0x18]
	str r0, [sp]
	ldr r0, [r1, #0x10]
	add r1, r5, #0
	mul r0, r3
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r3, [r4, r6]
	add r0, sp, #0x10
	bl ov01_021F4A50
	add r7, r0, #0
	ldr r0, _021F4E14 ; =0x0000FFFF
	cmp r7, r0
	beq _021F4E04
	ldr r1, [r4, r6]
	add r0, r5, #0
	bl ov01_021F4AAC
	mov r1, #1
	lsl r1, r1, #8
	ldr r0, [r5, r1]
	lsl r1, r1, #3
	add r2, sp, #0x20
	bl NARC_ReadFile
	mov r0, #1
	lsl r0, r0, #8
	ldr r3, [r4, r6]
	ldr r2, _021F4E18 ; =0x00000868
	ldr r0, [r5, r0]
	ldr r2, [r3, r2]
	add r3, r5, #0
	add r3, #0xf4
	ldr r1, [sp, #0x1c]
	ldr r3, [r3]
	bl MapPropManager_LoadFromNARC
	str r4, [sp]
	str r7, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, [r4, r6]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	add r2, sp, #0x10
	bl ov01_021F4BE8
_021F4E04:
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F4E10: .word 0x00000828
_021F4E14: .word 0x0000FFFF
_021F4E18: .word 0x00000868
	thumb_func_end ov01_021F4D88

	thumb_func_start ov01_021F4E1C
ov01_021F4E1C: ; 0x021F4E1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r5, [sp, #0x40]
	lsl r4, r0, #2
	add r7, r5, #0
	add r7, #0x18
	ldr r0, [r7, r4]
	ldr r6, [sp, #0x3c]
	str r0, [sp]
	ldr r0, [sp, #0x38]
	str r1, [sp, #0xc]
	mul r0, r3
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r3, [r5, r4]
	add r0, sp, #0x14
	add r1, r6, #0
	bl ov01_021F4A50
	ldr r1, _021F4E84 ; =0x0000FFFF
	str r0, [sp, #0x10]
	cmp r0, r1
	beq _021F4E80
	ldr r1, [r5, r4]
	add r0, r6, #0
	bl ov01_021F4AAC
	ldr r1, [r5, r4]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	bl ov01_021F4AE4
	ldr r1, [r5, r4]
	ldr r3, [r7, r4]
	add r0, r6, #0
	add r2, sp, #0x14
	bl ov01_021F4B1C
	ldr r0, [sp, #0x10]
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r1, [r5, r4]
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r2, sp, #0x14
	bl ov01_021F4BE8
_021F4E80:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F4E84: .word 0x0000FFFF
	thumb_func_end ov01_021F4E1C

	thumb_func_start ov01_021F4E88
ov01_021F4E88: ; 0x021F4E88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r0, #0
	lsl r5, r1, #2
	ldr r6, [sp, #0x4c]
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x44]
	add r4, r6, #0
	mul r0, r1
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r2, [sp, #0x10]
	add r4, #0x90
	add r2, r3, #0
	ldr r3, [r4, r5]
	add r0, sp, #0x18
	add r1, r6, #0
	bl ov01_021F4A50
	ldr r1, _021F4F04 ; =0x0000FFFF
	str r0, [sp, #0x14]
	cmp r0, r1
	beq _021F4EFE
	ldr r1, [r4, r5]
	add r0, r6, #0
	bl ov01_021F4AAC
	ldr r1, [r4, r5]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	bl ov01_021F4AE4
	mov r0, #1
	lsl r0, r0, #8
	ldr r3, [r4, r5]
	ldr r2, _021F4F08 ; =0x00000868
	ldr r0, [r6, r0]
	ldr r2, [r3, r2]
	add r3, r6, #0
	add r3, #0xf4
	ldr r1, [sp, #0x24]
	ldr r3, [r3]
	bl MapPropManager_LoadFromNARC
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x48]
	str r7, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r1, [r4, r5]
	add r0, r6, #0
	add r2, sp, #0x18
	bl ov01_021F4C6C
_021F4EFE:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4F04: .word 0x0000FFFF
_021F4F08: .word 0x00000868
	thumb_func_end ov01_021F4E88

	thumb_func_start ov01_021F4F0C
ov01_021F4F0C: ; 0x021F4F0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x38
	add r7, r0, #0
	ldr r0, _021F4FA4 ; =0x00000830
	str r2, [sp, #0x10]
	add r0, sp
	ldr r5, [r0, #0x1c]
	lsl r4, r1, #2
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0x14]
	add r6, r5, #0
	mul r0, r1
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r6, #0x90
	add r2, r3, #0
	ldr r3, [r6, r4]
	add r0, sp, #0x18
	add r1, r5, #0
	bl ov01_021F4A50
	ldr r1, _021F4FA8 ; =0x0000FFFF
	str r0, [sp, #0x14]
	cmp r0, r1
	beq _021F4F96
	ldr r1, [r6, r4]
	add r0, r5, #0
	bl ov01_021F4AAC
	mov r1, #1
	lsl r1, r1, #8
	ldr r0, [r5, r1]
	lsl r1, r1, #3
	add r2, sp, #0x28
	bl NARC_ReadFile
	mov r0, #1
	lsl r0, r0, #8
	ldr r3, [r6, r4]
	ldr r2, _021F4FAC ; =0x00000868
	ldr r0, [r5, r0]
	ldr r2, [r3, r2]
	add r3, r5, #0
	add r3, #0xf4
	ldr r1, [sp, #0x24]
	ldr r3, [r3]
	bl MapPropManager_LoadFromNARC
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	ldr r0, _021F4FA4 ; =0x00000830
	str r7, [sp, #4]
	add r0, sp
	ldr r0, [r0, #0x18]
	add r2, sp, #0x18
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [r6, r4]
	add r0, r5, #0
	bl ov01_021F4C6C
_021F4F96:
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4FA4: .word 0x00000830
_021F4FA8: .word 0x0000FFFF
_021F4FAC: .word 0x00000868
	thumb_func_end ov01_021F4F0C

	thumb_func_start ov01_021F4FB0
ov01_021F4FB0: ; 0x021F4FB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r0, #0
	lsl r5, r1, #2
	ldr r6, [sp, #0x4c]
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x44]
	add r4, r6, #0
	mul r0, r1
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r2, [sp, #0x10]
	add r4, #0x90
	add r2, r3, #0
	ldr r3, [r4, r5]
	add r0, sp, #0x18
	add r1, r6, #0
	bl ov01_021F4A50
	ldr r1, _021F5020 ; =0x0000FFFF
	str r0, [sp, #0x14]
	cmp r0, r1
	beq _021F501A
	ldr r1, [r4, r5]
	add r0, r6, #0
	bl ov01_021F4AAC
	ldr r1, [r4, r5]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	bl ov01_021F4AE4
	ldr r1, [r4, r5]
	add r0, r6, #0
	add r2, sp, #0x18
	add r3, r7, #0
	bl ov01_021F4B1C
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x48]
	str r7, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r1, [r4, r5]
	add r0, r6, #0
	add r2, sp, #0x18
	bl ov01_021F4C6C
_021F501A:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F5020: .word 0x0000FFFF
	thumb_func_end ov01_021F4FB0

