#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_02088288.inc"
	.include "global.inc"
	.public sub_02089F98
	.public sub_0208A0EC
	.public sub_0208A1A0
	.extern _021039B8
	.extern sub_02089E80
	.extern sub_02089F50
	.extern sub_0208AF70
	.extern sub_0208B118

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_02089F98
sub_02089F98: ; 0x02089F98
	push {r3, r4, r5, lr}
	mov r1, #0x8b
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _02089FBC
	ldr r1, _0208A0DC ; =0x000007BC
	ldrsb r1, [r4, r1]
	cmp r1, #2
	bne _02089FBC
	ldr r1, [r4]
	mov r2, #0xb
	mov r3, #3
	bl sub_02089F50
	b _02089FD4
_02089FBC:
	ldr r2, _0208A0DC ; =0x000007BC
	ldr r1, [r4]
	ldrsb r3, [r4, r2]
	mov r2, #0xc
	add r0, r4, #0
	add r5, r3, #0
	mul r5, r2
	ldr r2, _0208A0E0 ; =_021039B8
	mov r3, #3
	ldr r2, [r2, r5]
	bl sub_02089F50
_02089FD4:
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldrb r1, [r1, #0x12]
	cmp r1, #2
	bne _0208A024
	ldr r2, _0208A0DC ; =0x000007BC
	ldr r1, [r4]
	ldrsb r3, [r4, r2]
	mov r2, #0xc
	add r0, r4, #0
	add r5, r3, #0
	mul r5, r2
	ldr r2, _0208A0E4 ; =_021039B8 + 8
	mov r3, #6
	ldr r2, [r2, r5]
	bl sub_02089F50
	ldr r0, [r4]
	mov r1, #5
	mov r2, #0
	mov r3, #0x80
	bl ScheduleSetBgPosText
	ldr r0, [r4]
	mov r1, #5
	mov r2, #3
	mov r3, #0
	bl ScheduleSetBgPosText
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	bne _0208A090
	add r0, r4, #0
	bl sub_0208AF70
	b _0208A090
_0208A024:
	add r0, #0x54
	ldr r0, [r4, r0]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	beq _0208A048
	ldr r2, _0208A0DC ; =0x000007BC
	ldr r1, [r4]
	ldrsb r3, [r4, r2]
	mov r2, #0xc
	add r0, r4, #0
	add r5, r3, #0
	mul r5, r2
	ldr r2, _0208A0E4 ; =_021039B8 + 8
	mov r3, #6
	ldr r2, [r2, r5]
	bl sub_02089F50
	b _0208A090
_0208A048:
	add r0, r4, #0
	mov r1, #2
	bl sub_02089E80
	cmp r0, #0
	beq _0208A06E
	ldr r2, _0208A0DC ; =0x000007BC
	ldr r1, [r4]
	ldrsb r3, [r4, r2]
	mov r2, #0xc
	add r0, r4, #0
	add r5, r3, #0
	mul r5, r2
	ldr r2, _0208A0E8 ; =_021039B8 + 4
	mov r3, #6
	ldr r2, [r2, r5]
	bl sub_02089F50
	b _0208A090
_0208A06E:
	ldr r0, _0208A0DC ; =0x000007BC
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0208A084
	ldr r1, [r4]
	add r0, r4, #0
	mov r2, #0x4d
	mov r3, #6
	bl sub_02089F50
	b _0208A090
_0208A084:
	ldr r1, [r4]
	add r0, r4, #0
	mov r2, #0x4e
	mov r3, #6
	bl sub_02089F50
_0208A090:
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0x11]
	cmp r0, #2
	bne _0208A0B2
	mov r0, #0x7d
	lsl r0, r0, #4
	mov r1, #4
	ldr r0, [r4, r0]
	mov r2, #0x14
	add r3, r1, #0
	bl sub_020196E8
	add r0, r4, #0
	bl sub_0208B118
_0208A0B2:
	mov r0, #0xa
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	bne _0208A0D8
	ldr r0, _0208A0DC ; =0x000007BC
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0208A0CE
	add r0, r4, #0
	bl sub_0208A1A0
	pop {r3, r4, r5, pc}
_0208A0CE:
	cmp r0, #1
	bne _0208A0D8
	add r0, r4, #0
	bl sub_0208A0EC
_0208A0D8:
	pop {r3, r4, r5, pc}
	nop
_0208A0DC: .word 0x000007BC
_0208A0E0: .word _021039B8
_0208A0E4: .word _021039B8 + 8
_0208A0E8: .word _021039B8 + 4
	thumb_func_end sub_02089F98

	thumb_func_start sub_0208A0EC
sub_0208A0EC: ; 0x0208A0EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r1, #0x95
	add r6, r0, #0
	lsl r1, r1, #2
	ldrh r0, [r6, r1]
	add r1, r1, #2
	ldrh r1, [r6, r1]
	mov r2, #0x30
	bl CalculateHpBarColor
	cmp r0, #4
	bhi _0208A126
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0208A112: ; jump table
	.short _0208A11C - _0208A112 - 2 ; case 0
	.short _0208A124 - _0208A112 - 2 ; case 1
	.short _0208A120 - _0208A112 - 2 ; case 2
	.short _0208A11C - _0208A112 - 2 ; case 3
	.short _0208A11C - _0208A112 - 2 ; case 4
_0208A11C:
	ldr r7, _0208A194 ; =0x0000F097
	b _0208A126
_0208A120:
	ldr r7, _0208A198 ; =0x0000F0B7
	b _0208A126
_0208A124:
	ldr r7, _0208A19C ; =0x0000F0D7
_0208A126:
	mov r1, #0x95
	lsl r1, r1, #2
	ldrh r0, [r6, r1]
	add r1, r1, #2
	ldrh r1, [r6, r1]
	mov r2, #0x30
	bl CalculateHpBarPixelsLength
	add r4, r0, #0
	add r0, r7, #0
	add r0, #8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r5, #0
	str r0, [sp, #0x10]
_0208A144:
	cmp r4, #8
	blo _0208A14C
	ldr r2, [sp, #0x10]
	b _0208A152
_0208A14C:
	add r0, r7, r4
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
_0208A152:
	mov r0, #5
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r3, r5, #0
	str r0, [sp, #8]
	mov r0, #0x11
	add r3, #0xa
	str r0, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [r6]
	mov r1, #3
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	cmp r4, #8
	bhs _0208A178
	mov r4, #0
	b _0208A17E
_0208A178:
	sub r4, #8
	lsl r0, r4, #0x18
	lsr r4, r0, #0x18
_0208A17E:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _0208A144
	ldr r0, [r6]
	mov r1, #3
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0208A194: .word 0x0000F097
_0208A198: .word 0x0000F0B7
_0208A19C: .word 0x0000F0D7
	thumb_func_end sub_0208A0EC

	thumb_func_start sub_0208A1A0
sub_0208A1A0: ; 0x0208A1A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r2, _0208A228 ; =0x00000242
	add r6, r0, #0
	ldrb r0, [r6, r2]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	cmp r0, #0x64
	bhs _0208A1C8
	add r0, r2, #0
	add r1, r2, #0
	add r0, #0xa
	add r1, #0xe
	add r2, r2, #6
	ldr r0, [r6, r0]
	ldr r1, [r6, r1]
	ldr r2, [r6, r2]
	sub r1, r1, r0
	sub r0, r2, r0
	b _0208A1CC
_0208A1C8:
	mov r1, #0
	add r0, r1, #0
_0208A1CC:
	mov r2, #0x38
	bl CalculateHpBarPixelsLength
	add r4, r0, #0
	mov r5, #0
	mov r7, #0x13
_0208A1D8:
	cmp r4, #8
	blo _0208A1E0
	ldr r2, _0208A22C ; =0x0000E03F
	b _0208A1E8
_0208A1E0:
	ldr r0, _0208A230 ; =0x0000E037
	add r0, r4, r0
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
_0208A1E8:
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r3, r5, #0
	str r0, [sp, #8]
	mov r0, #0x11
	add r3, #9
	str r0, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [r6]
	mov r1, #6
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	cmp r4, #8
	bhs _0208A20C
	mov r4, #0
	b _0208A212
_0208A20C:
	sub r4, #8
	lsl r0, r4, #0x18
	lsr r4, r0, #0x18
_0208A212:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #7
	blo _0208A1D8
	ldr r0, [r6]
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0208A228: .word 0x00000242
_0208A22C: .word 0x0000E03F
_0208A230: .word 0x0000E037
	thumb_func_end sub_0208A1A0

