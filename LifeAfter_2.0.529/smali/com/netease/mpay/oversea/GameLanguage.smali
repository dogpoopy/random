.class public final enum Lcom/netease/mpay/oversea/GameLanguage;
.super Ljava/lang/Enum;
.source "GameLanguage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/mpay/oversea/GameLanguage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AR:Lcom/netease/mpay/oversea/GameLanguage;

.field public static final enum DE:Lcom/netease/mpay/oversea/GameLanguage;

.field public static final enum EN:Lcom/netease/mpay/oversea/GameLanguage;

.field public static final enum ES:Lcom/netease/mpay/oversea/GameLanguage;

.field public static final enum FR:Lcom/netease/mpay/oversea/GameLanguage;

.field public static final enum HI:Lcom/netease/mpay/oversea/GameLanguage;

.field public static final enum IN:Lcom/netease/mpay/oversea/GameLanguage;

.field public static final enum JA:Lcom/netease/mpay/oversea/GameLanguage;

.field public static final enum KO:Lcom/netease/mpay/oversea/GameLanguage;

.field public static final enum PT:Lcom/netease/mpay/oversea/GameLanguage;

.field public static final enum RU:Lcom/netease/mpay/oversea/GameLanguage;

.field public static final enum TH:Lcom/netease/mpay/oversea/GameLanguage;

.field public static final enum TR:Lcom/netease/mpay/oversea/GameLanguage;

.field public static final enum VI:Lcom/netease/mpay/oversea/GameLanguage;

.field public static final enum ZH_CN:Lcom/netease/mpay/oversea/GameLanguage;

.field public static final enum ZH_HK:Lcom/netease/mpay/oversea/GameLanguage;

.field public static final enum ZH_TW:Lcom/netease/mpay/oversea/GameLanguage;

.field private static final synthetic e:[Lcom/netease/mpay/oversea/GameLanguage;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 1
    new-instance v6, Lcom/netease/mpay/oversea/GameLanguage;

    const-string v1, "ZH_CN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "zh"

    const-string v5, "CN"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/netease/mpay/oversea/GameLanguage;->ZH_CN:Lcom/netease/mpay/oversea/GameLanguage;

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/GameLanguage;

    const-string v8, "ZH_HK"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string v11, "zh"

    const-string v12, "HK"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/netease/mpay/oversea/GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/oversea/GameLanguage;->ZH_HK:Lcom/netease/mpay/oversea/GameLanguage;

    .line 5
    new-instance v1, Lcom/netease/mpay/oversea/GameLanguage;

    const-string v14, "ZH_TW"

    const/4 v15, 0x2

    const/16 v16, 0x2

    const-string v17, "zh"

    const-string v18, "TW"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/netease/mpay/oversea/GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/GameLanguage;->ZH_TW:Lcom/netease/mpay/oversea/GameLanguage;

    .line 7
    new-instance v2, Lcom/netease/mpay/oversea/GameLanguage;

    const-string v8, "EN"

    const/4 v9, 0x3

    const/4 v10, 0x3

    const-string v11, "en"

    const-string v12, "US"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/netease/mpay/oversea/GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/netease/mpay/oversea/GameLanguage;->EN:Lcom/netease/mpay/oversea/GameLanguage;

    .line 9
    new-instance v3, Lcom/netease/mpay/oversea/GameLanguage;

    const-string v14, "JA"

    const/4 v15, 0x4

    const/16 v16, 0x4

    const-string v17, "ja"

    const-string v18, "JP"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/netease/mpay/oversea/GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/netease/mpay/oversea/GameLanguage;->JA:Lcom/netease/mpay/oversea/GameLanguage;

    .line 11
    new-instance v4, Lcom/netease/mpay/oversea/GameLanguage;

    const-string v8, "KO"

    const/4 v9, 0x5

    const/4 v10, 0x5

    const-string v11, "ko"

    const-string v12, "KR"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/netease/mpay/oversea/GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/netease/mpay/oversea/GameLanguage;->KO:Lcom/netease/mpay/oversea/GameLanguage;

    .line 13
    new-instance v5, Lcom/netease/mpay/oversea/GameLanguage;

    const-string v14, "PT"

    const/4 v15, 0x6

    const/16 v16, 0x6

    const-string v17, "pt"

    const-string v18, "BR"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/netease/mpay/oversea/GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/netease/mpay/oversea/GameLanguage;->PT:Lcom/netease/mpay/oversea/GameLanguage;

    .line 15
    new-instance v13, Lcom/netease/mpay/oversea/GameLanguage;

    const-string v8, "RU"

    const/4 v9, 0x7

    const/4 v10, 0x7

    const-string v11, "ru"

    const-string v12, "RU"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/netease/mpay/oversea/GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcom/netease/mpay/oversea/GameLanguage;->RU:Lcom/netease/mpay/oversea/GameLanguage;

    .line 17
    new-instance v7, Lcom/netease/mpay/oversea/GameLanguage;

    const-string v15, "DE"

    const/16 v16, 0x8

    const/16 v17, 0x8

    const-string v18, "de"

    const-string v19, "DE"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/netease/mpay/oversea/GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/netease/mpay/oversea/GameLanguage;->DE:Lcom/netease/mpay/oversea/GameLanguage;

    .line 19
    new-instance v8, Lcom/netease/mpay/oversea/GameLanguage;

    const-string v21, "ES"

    const/16 v22, 0x9

    const/16 v23, 0x9

    const-string v24, "es"

    const-string v25, "ES"

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcom/netease/mpay/oversea/GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/netease/mpay/oversea/GameLanguage;->ES:Lcom/netease/mpay/oversea/GameLanguage;

    .line 21
    new-instance v9, Lcom/netease/mpay/oversea/GameLanguage;

    const-string v15, "TH"

    const/16 v16, 0xa

    const/16 v17, 0xa

    const-string v18, "th"

    const-string v19, "TH"

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcom/netease/mpay/oversea/GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/netease/mpay/oversea/GameLanguage;->TH:Lcom/netease/mpay/oversea/GameLanguage;

    .line 23
    new-instance v10, Lcom/netease/mpay/oversea/GameLanguage;

    const-string v21, "VI"

    const/16 v22, 0xb

    const/16 v23, 0xb

    const-string v24, "vi"

    const-string v25, "VN"

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lcom/netease/mpay/oversea/GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/netease/mpay/oversea/GameLanguage;->VI:Lcom/netease/mpay/oversea/GameLanguage;

    .line 25
    new-instance v11, Lcom/netease/mpay/oversea/GameLanguage;

    const-string v15, "TR"

    const/16 v16, 0xc

    const/16 v17, 0xc

    const-string v18, "tr"

    const-string v19, "TR"

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lcom/netease/mpay/oversea/GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/netease/mpay/oversea/GameLanguage;->TR:Lcom/netease/mpay/oversea/GameLanguage;

    .line 27
    new-instance v12, Lcom/netease/mpay/oversea/GameLanguage;

    const-string v21, "HI"

    const/16 v22, 0xd

    const/16 v23, 0xd

    const-string v24, "hi"

    const-string v25, "IN"

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lcom/netease/mpay/oversea/GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/netease/mpay/oversea/GameLanguage;->HI:Lcom/netease/mpay/oversea/GameLanguage;

    .line 29
    new-instance v20, Lcom/netease/mpay/oversea/GameLanguage;

    const-string v15, "IN"

    const/16 v16, 0xe

    const/16 v17, 0xe

    const-string v18, "in"

    const-string v19, "ID"

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lcom/netease/mpay/oversea/GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v20, Lcom/netease/mpay/oversea/GameLanguage;->IN:Lcom/netease/mpay/oversea/GameLanguage;

    .line 31
    new-instance v14, Lcom/netease/mpay/oversea/GameLanguage;

    const-string v22, "FR"

    const/16 v23, 0xf

    const/16 v24, 0xf

    const-string v25, "fr"

    const-string v26, "FR"

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lcom/netease/mpay/oversea/GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lcom/netease/mpay/oversea/GameLanguage;->FR:Lcom/netease/mpay/oversea/GameLanguage;

    .line 33
    new-instance v15, Lcom/netease/mpay/oversea/GameLanguage;

    const-string v28, "AR"

    const/16 v29, 0x10

    const/16 v30, 0x10

    const-string v31, "ar"

    const-string v32, "AE"

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Lcom/netease/mpay/oversea/GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lcom/netease/mpay/oversea/GameLanguage;->AR:Lcom/netease/mpay/oversea/GameLanguage;

    move-object/from16 v16, v15

    const/16 v15, 0x11

    new-array v15, v15, [Lcom/netease/mpay/oversea/GameLanguage;

    const/16 v17, 0x0

    aput-object v6, v15, v17

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v16, v15, v0

    .line 34
    sput-object v15, Lcom/netease/mpay/oversea/GameLanguage;->e:[Lcom/netease/mpay/oversea/GameLanguage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p5, p0, Lcom/netease/mpay/oversea/GameLanguage;->a:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/netease/mpay/oversea/GameLanguage;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/netease/mpay/oversea/GameLanguage;->c:I

    return-void
.end method

.method public static getInstance(I)Lcom/netease/mpay/oversea/GameLanguage;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 1
    sget-object p0, Lcom/netease/mpay/oversea/GameLanguage;->EN:Lcom/netease/mpay/oversea/GameLanguage;

    return-object p0

    .line 2
    :pswitch_0
    sget-object p0, Lcom/netease/mpay/oversea/GameLanguage;->AR:Lcom/netease/mpay/oversea/GameLanguage;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/netease/mpay/oversea/GameLanguage;->FR:Lcom/netease/mpay/oversea/GameLanguage;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/netease/mpay/oversea/GameLanguage;->IN:Lcom/netease/mpay/oversea/GameLanguage;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Lcom/netease/mpay/oversea/GameLanguage;->HI:Lcom/netease/mpay/oversea/GameLanguage;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Lcom/netease/mpay/oversea/GameLanguage;->TR:Lcom/netease/mpay/oversea/GameLanguage;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, Lcom/netease/mpay/oversea/GameLanguage;->VI:Lcom/netease/mpay/oversea/GameLanguage;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, Lcom/netease/mpay/oversea/GameLanguage;->TH:Lcom/netease/mpay/oversea/GameLanguage;

    return-object p0

    .line 9
    :pswitch_7
    sget-object p0, Lcom/netease/mpay/oversea/GameLanguage;->ES:Lcom/netease/mpay/oversea/GameLanguage;

    return-object p0

    .line 10
    :pswitch_8
    sget-object p0, Lcom/netease/mpay/oversea/GameLanguage;->DE:Lcom/netease/mpay/oversea/GameLanguage;

    return-object p0

    .line 11
    :pswitch_9
    sget-object p0, Lcom/netease/mpay/oversea/GameLanguage;->RU:Lcom/netease/mpay/oversea/GameLanguage;

    return-object p0

    .line 12
    :pswitch_a
    sget-object p0, Lcom/netease/mpay/oversea/GameLanguage;->PT:Lcom/netease/mpay/oversea/GameLanguage;

    return-object p0

    .line 13
    :pswitch_b
    sget-object p0, Lcom/netease/mpay/oversea/GameLanguage;->KO:Lcom/netease/mpay/oversea/GameLanguage;

    return-object p0

    .line 14
    :pswitch_c
    sget-object p0, Lcom/netease/mpay/oversea/GameLanguage;->JA:Lcom/netease/mpay/oversea/GameLanguage;

    return-object p0

    .line 15
    :pswitch_d
    sget-object p0, Lcom/netease/mpay/oversea/GameLanguage;->EN:Lcom/netease/mpay/oversea/GameLanguage;

    return-object p0

    .line 16
    :pswitch_e
    sget-object p0, Lcom/netease/mpay/oversea/GameLanguage;->ZH_TW:Lcom/netease/mpay/oversea/GameLanguage;

    return-object p0

    .line 17
    :pswitch_f
    sget-object p0, Lcom/netease/mpay/oversea/GameLanguage;->ZH_HK:Lcom/netease/mpay/oversea/GameLanguage;

    return-object p0

    .line 18
    :pswitch_10
    sget-object p0, Lcom/netease/mpay/oversea/GameLanguage;->ZH_CN:Lcom/netease/mpay/oversea/GameLanguage;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/oversea/GameLanguage;
    .locals 1

    .line 1
    const-class v0, Lcom/netease/mpay/oversea/GameLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/mpay/oversea/GameLanguage;

    return-object p0
.end method

.method public static values()[Lcom/netease/mpay/oversea/GameLanguage;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/GameLanguage;->e:[Lcom/netease/mpay/oversea/GameLanguage;

    invoke-virtual {v0}, [Lcom/netease/mpay/oversea/GameLanguage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/oversea/GameLanguage;

    return-object v0
.end method


# virtual methods
.method public getFont()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/GameLanguage;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/GameLanguage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageRegion()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/GameLanguage;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/GameLanguage;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/GameLanguage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public index()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/GameLanguage;->c:I

    return v0
.end method

.method public setFontPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/GameLanguage;->d:Ljava/lang/String;

    return-void
.end method
