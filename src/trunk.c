#include "global.h"
#include "card.h"

struct UnkStruct_2020E10
{
    s16 unk0; //current card position in trunk?
    u8 unk2;
    u8 unk3;            //show: nothing, atk/def, attribute(summon), cost,
    u8 unk4;
    u8 filler5[7];
    u16 unkC[TRUNK_SIZE - 1]; //trunk_layout?
};

struct UnkStruct_2021AB4
{
    u16 unk0;
    u16 unk2;
};

struct UnkStruct_2022EB0
{
    u16* unk0;
    u8 filler_4[4];
    u16 unk8;
    u8 unkA;
};

void sub_8008220(void);
u16 sub_800901C(u8);
void sub_80090E8(void);
void sub_8009110(void);
void sub_8009140(void);
void sub_800916C(void);
void sub_800919C(void);
void sub_80091C0(void);
void sub_80091EC(u8);
void sub_08009224(void);
void sub_800B3E4(u16);

u32 GetDuelistLevel(void);
void SetCardInfo(u16 id);
u8 GetDeckSize(void);
bool8 sub_801D878(u16 id);
void sub_801D960(u16 id);
void sub_801D9B8(u16);
void sub_801DB64(u16);
u8 GetDeckCardQty(u16);


bool8 sub_801F098(u16 id);

void sub_8034A38(void);
void PlayMusic(u16);


extern u16 gKeyState; //0x02020DF8
extern struct UnkStruct_2020E10 gUnkStruct_2020E10; //2020E10
extern u8 gTotalCardQty[];
extern u8 gTrunkCardQty[]; //2021790
extern struct UnkStruct_2021AB4 gUnk2021AB4;
extern struct CardInfo gCardInfo; //2021AD0
extern struct UnkStruct_2022EB0 gUnk2022EB0;

extern const u8 gStarterTrunk[];

extern u8 gUnk_8DFA6A8[];  //change these to struct?
extern u8 gUnk_8DFA6B4[];
extern u8 gUnk_8DFAB54[];
extern u8 gUnk_8DFAFF4[];


void InitTrunkCards(void)
{
    u32 id;

    for (id = 0; id < TRUNK_SIZE; id++)
        gTrunkCardQty[id] = gStarterTrunk[id];
}

void AddCardToTrunk(u16 id, u8 qty)
{
    if (qty > TRUNK_CARD_LIMIT - gTrunkCardQty[id])
        gTrunkCardQty[id] = TRUNK_CARD_LIMIT;
    else
        gTrunkCardQty[id] += qty;
}

void RemoveCardFromTrunk(u16 id, u8 qty)
{
    if (qty > gTrunkCardQty[id])
        gTrunkCardQty[id] = 0;
    else
        gTrunkCardQty[id] -= qty;
}

bool8 ExceedsTrunkCardLimit(u16 id, u8 qty)
{
    if (qty > TRUNK_CARD_LIMIT - gTrunkCardQty[id])
        return FALSE;
    return TRUE;
}

bool8 sub_8008D48(u16 id, u8 qty)
{
    if (qty > gTrunkCardQty[id])
        return FALSE;
    return TRUE;
}

void SetTrunkCardQty(u16 id, u8 qty)
{
    gTrunkCardQty[id] = qty;
}

u8 GetTrunkCardQty(u16 id)
{
    return gTrunkCardQty[id];
}

/*
void sub_8008D88(u16 id)
{
    if (!gTrunkCardQty[id])
    {
        if (GetDeckCardQty(id))
            sub_801D9B8(id);
    }
    else if (gTrunkCardQty[id] >= 1)
        gTrunkCardQty[id]--;
    else
        gTrunkCardQty[id] = 0;
}*/
NAKED
void sub_8008D88(u16 id)
{
    asm_unified("\n\
    push {r4, lr}\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	adds r4, r0, #0\n\
	ldr r0, _08008DA8\n\
	adds r1, r4, r0\n\
	ldrb r0, [r1]\n\
	adds r2, r0, #0\n\
	cmp r2, #0\n\
	beq _08008DB2\n\
	cmp r2, #1\n\
	bhs _08008DAC\n\
	movs r0, #0\n\
	strb r0, [r1]\n\
	b _08008DC4\n\
	.align 2, 0\n\
_08008DA8: .4byte gTrunkCardQty\n\
_08008DAC:\n\
	subs r0, #1\n\
	strb r0, [r1]\n\
	b _08008DC4\n\
_08008DB2:\n\
	adds r0, r4, #0\n\
	bl GetDeckCardQty\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	beq _08008DC4\n\
	adds r0, r4, #0\n\
	bl sub_801D9B8\n\
_08008DC4:\n\
	pop {r4}\n\
	pop {r0}\n\
	bx r0\n\
	");
}

void sub_8008DCC(u16 id)
{
    gTrunkCardQty[id] = 0;
    sub_801D960(id);
}

//leftover debug function
void SetTrunkCardsTo50(void)
{
    u32 id;

    gTrunkCardQty[0] = 0;
    for (id = 1; id < TRUNK_SIZE; id++)
        gTrunkCardQty[id] = 50;
}

void sub_8008E0C(void)
{
    bool32 r5 = 0;
    u16 id = sub_800901C(2);

    if (gTrunkCardQty[id] && GetDeckSize() < DECK_SIZE && sub_801F098(id) == TRUE)
    {
        SetCardInfo(id);
        if (GetDuelistLevel() < gCardInfo.cost)
            r5 = 1;
    }
    else
        r5 = 1;

    if (r5 == 1)
    {
        PlayMusic(57);
        while (gKeyState & 0x10 /*right*/)
            sub_8008220();
    }
    else
    {
        gTrunkCardQty[id]--;
        sub_801DB64(id);
        PlayMusic(55);
    }
}

void sub_8008EA8(void)
{
    u32 r5 = 0;
    u16 id = sub_800901C(2);

    if (!GetDeckCardQty(id) || sub_801D878(id) != 1)
        r5 = 1;

    if (r5 == 1)
    {
        PlayMusic(57);
        while (gKeyState & 0x20 /*left*/)
            sub_8008220();
    }
    else
    {
        if (gTrunkCardQty[id] < 250)
            gTrunkCardQty[id]++;
        else
            gTrunkCardQty[id] = 250;
        PlayMusic(55);
    }
}

void sub_8008F24(void)
{
    u16 id;
    gUnkStruct_2020E10.unk0 = 0;
    gUnkStruct_2020E10.unk3 = 1;
    gUnkStruct_2020E10.unk2 = 0;

    for (id = 0; id < TRUNK_SIZE; id++)
        gTotalCardQty[id] = gTrunkCardQty[id] + GetDeckCardQty(id);

    for (id = 0; id < TRUNK_SIZE - 1; id++)
        gUnkStruct_2020E10.unkC[id] = id + 1;
}

void sub_8008F88(u8 val)
{
    switch (val)
    {
    case 0:
        InitTrunkCards();
        break;
    case 1:
        sub_8008F24();
        break;
    case 3:
        sub_80090E8();
        break;
    case 2:
        sub_8009110();
        break;
    case 4:
        sub_800916C();
        break;
    case 5:
        sub_8009140();
        break;
    case 6:
        sub_800919C();
        break;
    case 7:
        sub_8008E0C();
        break;
    case 8:
        sub_8008EA8();
        break;
    case 10:
        sub_80091C0();
        break;
    case 9:
        sub_08009224();
        break;
    }
}

u8 sub_8009010(void)
{
    return gUnkStruct_2020E10.unk3;
}

u16 sub_800901C(u8 val)
{
    s16 r2 = gUnkStruct_2020E10.unk0 + val - 2;

    if (r2 > 799)
        r2 -= 800;
    else if (r2 < 0)
        r2 += 800;

    return gUnkStruct_2020E10.unkC[r2];
}

u8 sub_8009060(u16 id)
{
    return gTrunkCardQty[id];
}

u8 sub_8009070(void)
{
    return gUnkStruct_2020E10.unk2;
}

void sub_800907C(void)
{
    gUnk2021AB4.unk0 = gUnkStruct_2020E10.unk0;
    gUnk2021AB4.unk2 = TRUNK_SIZE - 2;
}

void sub_8009098(u16 id)
{
    if (gTrunkCardQty[id] < 250)
        gTrunkCardQty[id]++;
    else
        gTrunkCardQty[id] = 250;
}

void sub_80090B8(void)
{
    gUnk2022EB0.unk0 = gUnkStruct_2020E10.unkC;
    gUnk2022EB0.unk8 = TRUNK_SIZE - 1;
    gUnk2022EB0.unkA = gUnk_8DFA6A8[gUnkStruct_2020E10.unk2];
    sub_8034A38();
}

void sub_80090E8(void)
{
    if (--gUnkStruct_2020E10.unk0 < 0)
        gUnkStruct_2020E10.unk0 += TRUNK_SIZE - 1;
    PlayMusic(54);
}

void sub_8009110(void)
{
    if (++gUnkStruct_2020E10.unk0 > TRUNK_SIZE - 2)
        gUnkStruct_2020E10.unk0 -= TRUNK_SIZE - 1;
    PlayMusic(54);
}

void sub_8009140(void)
{
    gUnkStruct_2020E10.unk0 -= 50;
    if (gUnkStruct_2020E10.unk0 < 0)
        gUnkStruct_2020E10.unk0 += TRUNK_SIZE - 1;
    PlayMusic(54);
}

void sub_800916C(void)
{
    gUnkStruct_2020E10.unk0 += 50;
    if (gUnkStruct_2020E10.unk0 > TRUNK_SIZE - 2)
        gUnkStruct_2020E10.unk0 -= TRUNK_SIZE - 1;
    PlayMusic(54);
}

void sub_800919C(void)
{
    if (++gUnkStruct_2020E10.unk3 > 3)
        gUnkStruct_2020E10.unk3 = 0;
    PlayMusic(54);
}

void sub_80091C0(void)
{
    if (++gUnkStruct_2020E10.unk2 > 9)
        gUnkStruct_2020E10.unk2 = 0;
    sub_80091EC(gUnkStruct_2020E10.unk2);
    PlayMusic(54);
}

void sub_80091EC(u8 val)
{
    gUnk2022EB0.unk0 = gUnkStruct_2020E10.unkC;
    gUnk2022EB0.unk8 = TRUNK_SIZE - 1;
    gUnk2022EB0.unkA = gUnk_8DFA6A8[val];
    sub_8034A38();
    gUnkStruct_2020E10.unk0 = 0;
}

void sub_08009224(void){}

