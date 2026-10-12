#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F2ED0
	.public ov14_021F2F20
	.public ov14_021F2F3C
	.public ov14_021F2F88
	.public ov14_021F2FDC
	.public ov14_021F3044
	.public ov14_021F30B0
	.public ov14_021F311C
	.public ov14_021F3190
	.extern ov14_021F2A18
	.extern ov14_021F2A60
	.extern ov14_021F2A74
	.extern ov14_021F2EA0
	.extern ov14_021F80BC
	.extern ov14_021F80BE

    .text

	.text
	thumb_func_start ov14_021F2ED0
ov14_021F2ED0: ; 0x021F2ED0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0xbf
	add r4, r3, #0
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	add r6, r1, r0
	lsl r7, r4, #2
	ldr r0, [r6, r7]
	str r2, [sp, #4]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r1, [sp, #4]
	add r0, r5, #0
	mov r2, #0xac
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021F2F1A
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r5, #0
	bl ov14_021E60C0
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021F2EA0
	ldr r0, [r6, r7]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
_021F2F1A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021F2ED0

	thumb_func_start ov14_021F2F20
ov14_021F2F20: ; 0x021F2F20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021F2F26:
	ldrb r1, [r5, #0x1f]
	add r3, r4, #0
	add r0, r5, #0
	add r2, r4, #0
	add r3, #0x19
	bl ov14_021F2ED0
	add r4, r4, #1
	cmp r4, #0x1e
	blo _021F2F26
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021F2F20

	thumb_func_start ov14_021F2F3C
ov14_021F2F3C: ; 0x021F2F3C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl Party_GetCount
	add r6, r0, #0
	ldr r4, _021F2F80 ; =0x00000000
	beq _021F2F7C
	ldr r7, _021F2F84 ; =0x000040B2
_021F2F4E:
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl Party_GetMonByIndex
	bl Mon_GetBoxMon
	ldr r2, [r5, #0x34]
	add r1, r0, #0
	add r3, r2, r4
	ldr r2, _021F2F84 ; =0x000040B2
	add r0, r5, #0
	ldrb r2, [r3, r2]
	bl ov14_021F2EA0
	ldr r0, [r5, #0x34]
	mov r2, #0
	add r1, r0, r4
	ldrb r1, [r1, r7]
	bl ov14_021F2A18
	add r4, r4, #1
	cmp r4, r6
	blo _021F2F4E
_021F2F7C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2F80: .word 0x00000000
_021F2F84: .word 0x000040B2
	thumb_func_end ov14_021F2F3C

	thumb_func_start ov14_021F2F88
ov14_021F2F88: ; 0x021F2F88
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0x1e
	bhs _021F2FB4
	mov r1, #6
	bl _u32_div_f
	add r1, r1, #1
	mov r0, #0x18
	mul r0, r1
	strh r0, [r4]
	add r0, r5, #0
	mov r1, #6
	bl _u32_div_f
	mov r1, #0x18
	mul r1, r0
	add r1, #0x30
	strh r1, [r6]
	pop {r4, r5, r6, pc}
_021F2FB4:
	sub r5, #0x1e
	ldr r0, _021F2FD4 ; =ov14_021F80BC
	lsl r1, r5, #2
	ldrsh r0, [r0, r1]
	strh r0, [r4]
	ldr r0, _021F2FD8 ; =ov14_021F80BE
	ldrsh r0, [r0, r1]
	sub r0, #0x90
	strh r0, [r6]
	cmp r3, #2
	bne _021F2FD2
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, #0x98
	strh r0, [r4]
_021F2FD2:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F2FD4: .word ov14_021F80BC
_021F2FD8: .word ov14_021F80BE
	thumb_func_end ov14_021F2F88

	thumb_func_start ov14_021F2FDC
ov14_021F2FDC: ; 0x021F2FDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl Party_GetCount
	ldr r6, _021F303C ; =ov14_021F80BC
	str r0, [sp]
	mov r4, #0
_021F2FEC:
	ldr r0, [r5, #0x34]
	ldr r1, _021F3040 ; =0x000040B2
	add r2, r0, r4
	ldrb r7, [r2, r1]
	mov r2, #2
	ldrsh r2, [r6, r2]
	lsl r1, r7, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	ldrsh r1, [r6, r1]
	bl ManagedSprite_SetPositionXY
	add r1, r4, #0
	ldr r0, [r5, #0x34]
	add r1, #0x1e
	mov r2, #1
	bl ov14_021F3190
	ldr r0, [sp]
	cmp r4, r0
	ldr r0, [r5, #0x34]
	bhs _021F3028
	add r1, r7, #0
	mov r2, #1
	bl ov14_021F2A18
	b _021F3030
_021F3028:
	add r1, r7, #0
	mov r2, #0
	bl ov14_021F2A18
_021F3030:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #6
	blo _021F2FEC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F303C: .word ov14_021F80BC
_021F3040: .word 0x000040B2
	thumb_func_end ov14_021F2FDC

	thumb_func_start ov14_021F3044
ov14_021F3044: ; 0x021F3044
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl Party_GetCount
	ldr r6, _021F30A8 ; =ov14_021F80BC
	str r0, [sp]
	mov r4, #0
_021F3054:
	ldr r0, [r5, #0x34]
	ldr r1, _021F30AC ; =0x000040B2
	add r2, r0, r4
	ldrb r7, [r2, r1]
	mov r2, #2
	ldrsh r2, [r6, r2]
	lsl r1, r7, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	ldrsh r1, [r6, r1]
	add r1, #0x98
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl ManagedSprite_SetPositionXY
	add r1, r4, #0
	ldr r0, [r5, #0x34]
	add r1, #0x1e
	mov r2, #1
	bl ov14_021F3190
	ldr r0, [sp]
	cmp r4, r0
	ldr r0, [r5, #0x34]
	bhs _021F3096
	add r1, r7, #0
	mov r2, #1
	bl ov14_021F2A18
	b _021F309E
_021F3096:
	add r1, r7, #0
	mov r2, #0
	bl ov14_021F2A18
_021F309E:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #6
	blo _021F3054
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F30A8: .word ov14_021F80BC
_021F30AC: .word 0x000040B2
	thumb_func_end ov14_021F3044

	thumb_func_start ov14_021F30B0
ov14_021F30B0: ; 0x021F30B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl Party_GetCount
	ldr r6, _021F3114 ; =ov14_021F80BC
	str r0, [sp]
	mov r4, #0
_021F30C0:
	ldr r0, [r5, #0x34]
	ldr r1, _021F3118 ; =0x000040B2
	add r2, r0, r4
	ldrb r7, [r2, r1]
	mov r2, #2
	ldrsh r2, [r6, r2]
	lsl r1, r7, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	sub r2, #0x90
	lsl r2, r2, #0x10
	ldrsh r1, [r6, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r1, r4, #0
	ldr r0, [r5, #0x34]
	add r1, #0x1e
	mov r2, #1
	bl ov14_021F3190
	ldr r0, [sp]
	cmp r4, r0
	ldr r0, [r5, #0x34]
	bhs _021F3102
	add r1, r7, #0
	mov r2, #1
	bl ov14_021F2A18
	b _021F310A
_021F3102:
	add r1, r7, #0
	mov r2, #0
	bl ov14_021F2A18
_021F310A:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #6
	blo _021F30C0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F3114: .word ov14_021F80BC
_021F3118: .word 0x000040B2
	thumb_func_end ov14_021F30B0

	thumb_func_start ov14_021F311C
ov14_021F311C: ; 0x021F311C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl Party_GetCount
	ldr r6, _021F3188 ; =ov14_021F80BC
	str r0, [sp]
	mov r4, #0
_021F312C:
	ldr r0, [r5, #0x34]
	ldr r1, _021F318C ; =0x000040B2
	add r2, r0, r4
	ldrb r7, [r2, r1]
	mov r2, #2
	ldrsh r2, [r6, r2]
	lsl r1, r7, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	ldrsh r1, [r6, r1]
	sub r2, #0x90
	lsl r2, r2, #0x10
	add r1, #0x98
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r1, r4, #0
	ldr r0, [r5, #0x34]
	add r1, #0x1e
	mov r2, #1
	bl ov14_021F3190
	ldr r0, [sp]
	cmp r4, r0
	ldr r0, [r5, #0x34]
	bhs _021F3174
	add r1, r7, #0
	mov r2, #1
	bl ov14_021F2A18
	b _021F317C
_021F3174:
	add r1, r7, #0
	mov r2, #0
	bl ov14_021F2A18
_021F317C:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #6
	blo _021F312C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F3188: .word ov14_021F80BC
_021F318C: .word 0x000040B2
	thumb_func_end ov14_021F311C

	thumb_func_start ov14_021F3190
ov14_021F3190: ; 0x021F3190
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r3, r5, r6
	ldr r1, _021F31DC ; =0x00004094
	cmp r2, #0
	ldrb r4, [r3, r1]
	bne _021F31B4
	add r1, r4, #0
	mov r2, #0
	bl ov14_021F2A60
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x14
	bl ov14_021F2A74
	pop {r4, r5, r6, pc}
_021F31B4:
	cmp r6, #0x1e
	bhs _021F31C2
	add r1, r4, #0
	mov r2, #3
	bl ov14_021F2A60
	b _021F31CA
_021F31C2:
	add r1, r4, #0
	mov r2, #1
	bl ov14_021F2A60
_021F31CA:
	lsl r3, r6, #1
	mov r2, #0x74
	add r0, r5, #0
	add r1, r4, #0
	sub r2, r2, r3
	bl ov14_021F2A74
	pop {r4, r5, r6, pc}
	nop
_021F31DC: .word 0x00004094
	thumb_func_end ov14_021F3190

