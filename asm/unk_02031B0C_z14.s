#include "constants/items.h"
	.include "asm/macros.inc"
	.include "unk_02031B0C.inc"
	.include "global.inc"
	.public sub_02031CEC
	.public sub_02031D6C
	.public sub_02031D80
	.public sub_02031DA0
	.public sub_02031FE8
	.public sub_02032004
	.public sub_02032024
	.public sub_02032058
	.public sub_020320E0
	.public sub_02032158
	.public sub_020321A0
	.public sub_020322AC
	.extern _020F6902
	.extern sub_02031B5C
	.extern sub_02031BEC
	.extern sub_02032340
	.extern sub_02032354
	.extern sub_02032588

	.text
	thumb_func_start sub_02031CEC
sub_02031CEC: ; 0x02031CEC
	push {r3, r4, r5, lr}
	add r5, r2, #0
	cmp r1, #9
	blt _02031CF6
	mov r1, #0
_02031CF6:
	cmp r1, #4
	bgt _02031D12
	ldr r0, _02031D68 ; =_020F6902
	lsl r2, r1, #3
	add r1, r0, r2
	ldrh r0, [r0, r2]
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	ldrh r0, [r1, #4]
	strh r0, [r5, #4]
	ldrh r0, [r1, #6]
	strh r0, [r5, #6]
	b _02031D64
_02031D12:
	cmp r1, #7
	bgt _02031D44
	sub r1, r1, #5
	add r0, #0x38
	lsl r1, r1, #5
	add r4, r0, r1
	add r0, r4, #0
	bl sub_02031D80
	cmp r0, #0
	bne _02031D32
	add r0, r5, #0
	bl sub_02031B5C
	mov r0, #0
	pop {r3, r4, r5, pc}
_02031D32:
	ldrh r0, [r4]
	strh r0, [r5]
	ldrh r0, [r4, #2]
	strh r0, [r5, #2]
	ldrh r0, [r4, #4]
	strh r0, [r5, #4]
	ldrh r0, [r4, #6]
	strh r0, [r5, #6]
	b _02031D64
_02031D44:
	ldrb r1, [r0, #9]
	cmp r1, #0
	bne _02031D54
	add r0, r5, #0
	bl sub_02031B5C
	mov r0, #0
	pop {r3, r4, r5, pc}
_02031D54:
	ldrh r1, [r0, #0xc]
	strh r1, [r5]
	ldrh r1, [r0, #0xe]
	strh r1, [r5, #2]
	ldrh r1, [r0, #0x10]
	strh r1, [r5, #4]
	ldrh r0, [r0, #0x12]
	strh r0, [r5, #6]
_02031D64:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02031D68: .word _020F6902
	thumb_func_end sub_02031CEC

	thumb_func_start sub_02031D6C
sub_02031D6C: ; 0x02031D6C
	push {r3, lr}
	bl sub_02031D80
	cmp r0, #0
	beq _02031D7A
	mov r0, #1
	pop {r3, pc}
_02031D7A:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02031D6C

	thumb_func_start sub_02031D80
sub_02031D80: ; 0x02031D80
	mov r3, #0
	add r2, r3, #0
_02031D84:
	add r1, r0, r2
	ldrb r1, [r1, #3]
	add r2, r2, #1
	add r1, r3, r1
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	cmp r2, #5
	blt _02031D84
	cmp r3, #0x64
	bls _02031D9A
	mov r3, #0x64
_02031D9A:
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end sub_02031D80

	thumb_func_start sub_02031DA0
sub_02031DA0: ; 0x02031DA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0
	mov r2, #0xe
	bl MI_CpuFill8
	add r0, sp, #4
	add r0, #2
	mov r1, #0
	mov r2, #0xa
	bl MI_CpuFill8
	mov r0, #0
	add r1, sp, #4
	str r0, [sp]
	add r1, #2
_02031DC6:
	add r2, r4, r0
	ldrb r2, [r2, #3]
	strb r0, [r1]
	strb r2, [r1, #1]
	cmp r2, #0
	beq _02031DDC
	ldr r2, [sp]
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	str r2, [sp]
_02031DDC:
	add r0, r0, #1
	add r1, r1, #2
	cmp r0, #5
	blt _02031DC6
	ldr r0, [sp]
	cmp r0, #0
	beq _02031E3C
	add r0, sp, #4
	add r0, #2
	mov r7, #0
	mov ip, r0
_02031DF2:
	add r5, r7, #1
	cmp r5, #5
	bge _02031E34
	lsl r2, r5, #1
	mov r1, ip
	add r1, r1, r2
	add r2, sp, #4
_02031E00:
	ldrb r4, [r1, #1]
	ldrb r3, [r0, #1]
	cmp r3, r4
	bhi _02031E2C
	cmp r3, r4
	bne _02031E14
	ldrb r4, [r0]
	ldrb r3, [r1]
	cmp r4, r3
	blo _02031E2C
_02031E14:
	ldrb r3, [r0]
	strb r3, [r2]
	ldrb r3, [r0, #1]
	strb r3, [r2, #1]
	ldrb r3, [r1]
	strb r3, [r0]
	ldrb r3, [r1, #1]
	strb r3, [r0, #1]
	ldrb r3, [r2]
	strb r3, [r1]
	ldrb r3, [r2, #1]
	strb r3, [r1, #1]
_02031E2C:
	add r5, r5, #1
	add r1, r1, #2
	cmp r5, #5
	blt _02031E00
_02031E34:
	add r7, r7, #1
	add r0, r0, #2
	cmp r7, #5
	blt _02031DF2
_02031E3C:
	add r0, sp, #4
	ldrb r5, [r0, #0xb]
	add r3, sp, #4
	add r0, r6, #0
	mov r4, #0
	add r3, #2
	add r0, #0xb
_02031E4A:
	ldrb r2, [r3]
	add r1, r6, r4
	strb r2, [r1, #6]
	ldrb r1, [r3, #1]
	cmp r5, r1
	bne _02031E5C
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
_02031E5C:
	add r4, r4, #1
	add r3, r3, #2
	cmp r4, #5
	blt _02031E4A
	ldr r0, [sp]
	strb r0, [r6, #0xc]
	ldr r0, [sp]
	cmp r0, #5
	bls _02031E70
	b _02031FDC
_02031E70:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02031E7C: ; jump table
	.short _02031E88 - _02031E7C - 2 ; case 0
	.short _02031E98 - _02031E7C - 2 ; case 1
	.short _02031EB2 - _02031E7C - 2 ; case 2
	.short _02031ED6 - _02031E7C - 2 ; case 3
	.short _02031EFA - _02031E7C - 2 ; case 4
	.short _02031EFA - _02031E7C - 2 ; case 5
_02031E88:
	ldrh r1, [r6]
	mov r0, #0xf
	add sp, #0x10
	bic r1, r0
	mov r0, #6
	orr r0, r1
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02031E98:
	add r1, sp, #4
	add r0, r6, #0
	add r1, #2
	mov r2, #0
	bl sub_02032588
	ldrh r1, [r6, #2]
	mov r0, #0xf
	bic r1, r0
	mov r0, #6
	orr r0, r1
	strh r0, [r6, #2]
	b _02031FDC
_02031EB2:
	add r1, sp, #4
	add r0, r6, #0
	add r1, #2
	mov r2, #0
	bl sub_02032588
	add r0, r6, #2
	add r1, sp, #8
	mov r2, #1
	bl sub_02032588
	ldrh r1, [r6, #4]
	mov r0, #0xf
	bic r1, r0
	mov r0, #6
	orr r0, r1
	strh r0, [r6, #4]
	b _02031FDC
_02031ED6:
	add r1, sp, #4
	add r0, r6, #0
	add r1, #2
	mov r2, #0
	bl sub_02032588
	add r0, r6, #2
	add r1, sp, #8
	mov r2, #1
	bl sub_02032588
	add r1, sp, #8
	add r0, r6, #4
	add r1, #2
	mov r2, #2
	bl sub_02032588
	b _02031FDC
_02031EFA:
	add r0, sp, #4
	ldrb r2, [r0, #3]
	ldrb r1, [r0, #9]
	sub r1, r2, r1
	cmp r1, #0xc
	bgt _02031F88
	ldrh r3, [r6]
	mov r2, #0xf
	mov r1, #5
	bic r3, r2
	orr r1, r3
	strh r1, [r6]
	ldrb r3, [r0, #3]
	ldrh r1, [r6]
	ldr r4, _02031FE4 ; =0xFFFF00FF
	lsl r3, r3, #0x18
	and r1, r4
	lsr r3, r3, #0x10
	orr r1, r3
	strh r1, [r6]
	ldrh r1, [r6, #2]
	mov r3, #6
	bic r1, r2
	orr r1, r3
	strh r1, [r6, #2]
	ldrb r5, [r0, #5]
	ldrh r1, [r6, #2]
	lsl r5, r5, #0x18
	and r1, r4
	lsr r5, r5, #0x10
	orr r1, r5
	strh r1, [r6, #2]
	ldrh r1, [r6, #4]
	bic r1, r2
	orr r1, r3
	strh r1, [r6, #4]
	ldrh r1, [r6, #4]
	add r2, r1, #0
	ldrb r1, [r0, #7]
	and r2, r4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x10
	orr r1, r2
	strh r1, [r6, #4]
	mov r1, #1
	strb r1, [r6, #0xc]
	ldrb r0, [r0, #3]
	cmp r0, #0x14
	bls _02031F6A
	ldrh r1, [r6]
	mov r0, #0xf0
	bic r1, r0
	mov r0, #0x30
	orr r0, r1
	strh r0, [r6]
	b _02031FDC
_02031F6A:
	cmp r0, #7
	ldrh r1, [r6]
	bls _02031F7C
	mov r0, #0xf0
	bic r1, r0
	mov r0, #0x20
	orr r0, r1
	strh r0, [r6]
	b _02031FDC
_02031F7C:
	mov r0, #0xf0
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strh r0, [r6]
	b _02031FDC
_02031F88:
	add r1, sp, #4
	add r0, r6, #0
	add r1, #2
	mov r2, #0
	bl sub_02032588
	add r0, r6, #2
	add r1, sp, #8
	mov r2, #1
	bl sub_02032588
	ldr r0, [sp]
	cmp r0, #4
	bne _02031FB2
	add r1, sp, #0xc
	add r0, r6, #4
	add r1, #2
	mov r2, #2
	bl sub_02032588
	b _02031FDC
_02031FB2:
	ldrh r1, [r6, #4]
	mov r0, #0xf
	bic r1, r0
	mov r0, #5
	orr r0, r1
	strh r0, [r6, #4]
	ldrh r1, [r6, #4]
	mov r0, #0xf0
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strh r0, [r6, #4]
	ldrh r1, [r6, #4]
	ldr r0, _02031FE4 ; =0xFFFF00FF
	and r1, r0
	add r0, sp, #4
	ldrb r0, [r0, #7]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r6, #4]
_02031FDC:
	ldr r0, [sp]
	strb r0, [r6, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02031FE4: .word 0xFFFF00FF
	thumb_func_end sub_02031DA0

	thumb_func_start sub_02031FE8
sub_02031FE8: ; 0x02031FE8
	push {r3, lr}
	sub sp, #0x10
	add r1, sp, #0
	bl sub_02031DA0
	add r0, sp, #0
	ldrh r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #5
	blo _02032000
	mov r0, #5
_02032000:
	add sp, #0x10
	pop {r3, pc}
	thumb_func_end sub_02031FE8

	thumb_func_start sub_02032004
sub_02032004: ; 0x02032004
	push {r3, lr}
	sub sp, #0x10
	add r1, sp, #0
	bl sub_02031DA0
	add r0, sp, #0
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	bne _0203201C
	add sp, #0x10
	mov r0, #0
	pop {r3, pc}
_0203201C:
	ldrb r0, [r0, #6]
	add r0, r0, #1
	add sp, #0x10
	pop {r3, pc}
	thumb_func_end sub_02032004

	thumb_func_start sub_02032024
sub_02032024: ; 0x02032024
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _02032032
	mov r0, #0
	pop {r4, pc}
_02032032:
	sub r0, r0, #1
	strb r0, [r4, #9]
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _02032054
	add r0, r4, #0
	add r0, #0xc
	bl sub_02031B5C
	mov r0, #0
	str r0, [r4, #0x18]
	str r0, [r4, #0x14]
	mov r0, #3
	ldr r1, [r4, #0x1c]
	lsl r0, r0, #0x1e
	and r0, r1
	str r0, [r4, #0x1c]
_02032054:
	ldrb r0, [r4, #9]
	pop {r4, pc}
	thumb_func_end sub_02032024

	thumb_func_start sub_02032058
sub_02032058: ; 0x02032058
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0xa]
	add r4, r1, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	bne _0203206C
	ldrb r0, [r5, #9]
	cmp r0, #0
	beq _020320D8
_0203206C:
	ldr r0, [r5, #0x18]
	sub r6, r4, r0
	cmp r6, #0x64
	blo _02032094
	add r0, r6, #0
	mov r1, #0x64
	bl _u32_div_f
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02032340
	add r0, r6, #0
	mov r1, #0x64
	bl _u32_div_f
	sub r0, r4, r1
	str r0, [r5, #0x18]
_02032094:
	ldrh r0, [r5, #0xa]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	beq _020320D8
	ldr r1, [r5, #0x1c]
	mov r0, #3
	lsl r0, r0, #0x1e
	add r2, r1, #0
	and r2, r0
	ldr r0, [r5, #0x14]
	sub r1, r4, r0
	ldr r0, _020320DC ; =0x3FFFFFFF
	and r0, r1
	orr r0, r2
	str r0, [r5, #0x1c]
	lsl r0, r0, #2
	lsr r0, r0, #2
	cmp r0, #0x64
	blo _020320D8
	ldrb r0, [r5, #9]
	cmp r0, #0
	beq _020320CA
	add r0, r5, #0
	mov r1, #3
	bl sub_02031BEC
	b _020320D2
_020320CA:
	add r0, r5, #0
	mov r1, #2
	bl sub_02031BEC
_020320D2:
	add r0, r5, #0
	bl sub_02032354
_020320D8:
	pop {r4, r5, r6, pc}
	nop
_020320DC: .word 0x3FFFFFFF
	thumb_func_end sub_02032058

	thumb_func_start sub_020320E0
sub_020320E0: ; 0x020320E0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r0, r3, #0
	mov r1, #0x20
	add r6, r2, #0
	bl Heap_AllocAtEnd
	mov r1, #0
	mov r2, #0x20
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r5, #0
	bl PlayerProfile_GetTrainerID
	str r0, [r4]
	add r0, r5, #0
	bl PlayerProfile_GetTrainerGender
	strb r0, [r4, #4]
	add r0, r5, #0
	bl PlayerProfile_GetLanguage
	strb r0, [r4, #5]
	add r0, r5, #0
	bl PlayerProfile_GetVersion
	strb r0, [r4, #6]
	add r0, r4, #0
	add r0, #8
	mov r1, #8
	bl StringFillEOS
	add r0, r5, #0
	bl PlayerProfile_GetNamePtr
	add r1, r0, #0
	add r0, r4, #0
	add r0, #8
	mov r2, #7
	bl CopyU16StringArrayN
	add r2, r4, #0
	add r0, r7, #0
	mov r1, #8
	add r2, #0x18
	bl sub_02031CEC
	ldr r0, _02032154 ; =0x0000FFFF
	cmp r6, r0
	bls _0203214C
	strh r0, [r4, #0x18]
	b _0203214E
_0203214C:
	strh r6, [r4, #0x18]
_0203214E:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02032154: .word 0x0000FFFF
	thumb_func_end sub_020320E0

	thumb_func_start sub_02032158
sub_02032158: ; 0x02032158
	push {r3, lr}
	ldr r3, [r0]
	ldr r2, [r1]
	cmp r3, r2
	beq _02032166
	mov r0, #0
	pop {r3, pc}
_02032166:
	ldrb r3, [r0, #4]
	ldrb r2, [r1, #4]
	cmp r3, r2
	beq _02032172
	mov r0, #0
	pop {r3, pc}
_02032172:
	ldrb r3, [r0, #6]
	ldrb r2, [r1, #6]
	cmp r3, r2
	beq _0203217E
	mov r0, #0
	pop {r3, pc}
_0203217E:
	ldrb r3, [r0, #5]
	ldrb r2, [r1, #5]
	cmp r3, r2
	beq _0203218A
	mov r0, #0
	pop {r3, pc}
_0203218A:
	add r0, #8
	add r1, #8
	bl StringNotEqual
	cmp r0, #0
	bne _0203219A
	mov r0, #1
	pop {r3, pc}
_0203219A:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02032158

	thumb_func_start sub_020321A0
sub_020321A0: ; 0x020321A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r4, #0
	add r5, r0, #0
	str r0, [sp]
	add r7, r1, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	str r4, [sp, #0x10]
	add r5, #0x38
_020321B4:
	add r0, r5, #0
	bl sub_02031D6C
	cmp r0, #0
	beq _020321CC
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	add r0, r0, #1
	add r5, #0x20
	str r0, [sp, #0x10]
	cmp r4, #3
	blt _020321B4
_020321CC:
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _020322A6
_020321D6:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r1, r0
	beq _02032298
	add r0, r7, #0
	add r0, #0x18
	bl sub_02031D6C
	cmp r0, #0
	beq _02032298
	mov r4, #0
	str r4, [sp, #0x14]
	ldr r5, [sp]
	ldr r6, [sp, #0x14]
	add r5, #0x20
_020321F4:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_02032158
	cmp r0, #0
	beq _0203220A
	lsl r0, r6, #0x18
	lsr r4, r0, #0x18
	mov r0, #1
	str r0, [sp, #0x14]
	b _02032212
_0203220A:
	add r6, r6, #1
	add r5, #0x20
	cmp r6, #3
	blt _020321F4
_02032212:
	ldr r0, [sp, #0x10]
	cmp r0, #3
	blt _02032222
	mov r0, #2
	mov ip, r0
	mov r0, #1
	str r0, [sp, #0x14]
	b _02032242
_02032222:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02032234
	ldr r0, [sp, #0x10]
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov ip, r0
	b _02032242
_02032234:
	ldr r0, [sp, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov ip, r0
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
_02032242:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0203227C
	mov r0, ip
	cmp r4, r0
	bhs _0203227C
	ldr r0, [sp, #0x10]
	sub r6, r0, #1
	cmp r4, r6
	bge _0203227C
	ldr r0, [sp]
	lsl r1, r4, #5
	add r5, r0, r1
_0203225C:
	add r3, r5, #0
	add r2, r5, #0
	add r3, #0x40
	add r2, #0x20
	add r5, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	add r4, r4, #1
	stmia r2!, {r0, r1}
	cmp r4, r6
	blt _0203225C
_0203227C:
	mov r0, ip
	lsl r1, r0, #5
	ldr r0, [sp]
	add r3, r7, #0
	add r2, r0, r1
	add r2, #0x20
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
_02032298:
	ldr r0, [sp, #0xc]
	add r7, #0x20
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _020321D6
_020322A6:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_020321A0

	thumb_func_start sub_020322AC
sub_020322AC: ; 0x020322AC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #9
	add r1, r7, #0
	bl String_New
	add r6, r0, #0
	cmp r5, #5
	bge _020322E2
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0x15
	add r3, r7, #0
	bl NewMsgDataFromNarc
	add r5, #0xe
	add r4, r0, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ReadMsgDataIntoString
	add r0, r4, #0
	bl DestroyMsgData
	b _02032304
_020322E2:
	cmp r5, #8
	bge _02032304
	sub r0, r5, #5
	lsl r0, r0, #0x18
	lsr r5, r0, #0x13
	add r0, r4, #0
	add r0, #0x38
	add r0, r0, r5
	bl sub_02031D6C
	cmp r0, #0
	beq _02032304
	add r4, #0x28
	add r0, r6, #0
	add r1, r4, r5
	bl CopyU16ArrayToString
_02032304:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020322AC

