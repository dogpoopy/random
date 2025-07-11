.class public final enum Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AR:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

.field public static final enum DE:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

.field public static final enum EN:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

.field public static final enum ES:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

.field public static final enum FR:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

.field public static final enum HI:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

.field public static final enum IN:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

.field public static final enum JA:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

.field public static final enum KO:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

.field public static final enum PT:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

.field public static final enum RU:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

.field public static final enum TH:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

.field public static final enum TR:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

.field public static final enum VI:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

.field public static final enum ZH_CN:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

.field public static final enum ZH_HK:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

.field public static final enum ZH_TW:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

.field private static final synthetic e:[Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 31

    new-instance v7, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    const-string v1, "ZH_CN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "zh"

    const-string v5, "CN"

    const-string v6, "zh-cn"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->ZH_CN:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    new-instance v0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    const-string v9, "ZH_HK"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-string v12, "zh"

    const-string v13, "HK"

    const-string v14, "zh-hk"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->ZH_HK:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    new-instance v1, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    const-string v16, "ZH_TW"

    const/16 v17, 0x2

    const/16 v18, 0x2

    const-string v19, "zh"

    const-string v20, "TW"

    const-string v21, "zh-tw"

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->ZH_TW:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    new-instance v2, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    const-string v9, "EN"

    const/4 v10, 0x3

    const/4 v11, 0x3

    const-string v12, "en"

    const-string v13, "US"

    const-string v14, "en-us"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->EN:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    new-instance v3, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    const-string v16, "JA"

    const/16 v17, 0x4

    const/16 v18, 0x4

    const-string v19, "ja"

    const-string v20, "JP"

    const-string v21, "ja-jp"

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->JA:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    new-instance v4, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    const-string v9, "KO"

    const/4 v10, 0x5

    const/4 v11, 0x5

    const-string v12, "ko"

    const-string v13, "KR"

    const-string v14, "ko-kr"

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->KO:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    new-instance v5, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    const-string v16, "PT"

    const/16 v17, 0x6

    const/16 v18, 0x6

    const-string v19, "pt"

    const-string v20, "BR"

    const-string v21, "pt-pt"

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->PT:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    new-instance v6, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    const-string v9, "RU"

    const/4 v10, 0x7

    const/4 v11, 0x7

    const-string v12, "ru"

    const-string v13, "RU"

    const-string v14, "ru-ru"

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->RU:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    new-instance v8, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    const-string v16, "DE"

    const/16 v17, 0x8

    const/16 v18, 0x8

    const-string v19, "de"

    const-string v20, "DE"

    const-string v21, "de-de"

    move-object v15, v8

    invoke-direct/range {v15 .. v21}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->DE:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    new-instance v16, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    const-string v10, "ES"

    const/16 v11, 0x9

    const/16 v12, 0x9

    const-string v13, "es"

    const-string v14, "ES"

    const-string v15, "es-es"

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v16, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->ES:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    new-instance v9, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    const-string v18, "TH"

    const/16 v19, 0xa

    const/16 v20, 0xa

    const-string v21, "th"

    const-string v22, "TH"

    const-string v23, "th-th"

    move-object/from16 v17, v9

    invoke-direct/range {v17 .. v23}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->TH:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    new-instance v10, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    const-string v25, "VI"

    const/16 v26, 0xb

    const/16 v27, 0xb

    const-string v28, "vi"

    const-string v29, "VN"

    const-string v30, "vi-vn"

    move-object/from16 v24, v10

    invoke-direct/range {v24 .. v30}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->VI:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    new-instance v11, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    const-string v18, "TR"

    const/16 v19, 0xc

    const/16 v20, 0xc

    const-string v21, "tr"

    const-string v22, "TR"

    const-string v23, "tr-tr"

    move-object/from16 v17, v11

    invoke-direct/range {v17 .. v23}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->TR:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    new-instance v12, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    const-string v25, "HI"

    const/16 v26, 0xd

    const/16 v27, 0xd

    const-string v28, "hi"

    const-string v29, "IN"

    const-string v30, "hi-in"

    move-object/from16 v24, v12

    invoke-direct/range {v24 .. v30}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->HI:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    new-instance v13, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    const-string v18, "IN"

    const/16 v19, 0xe

    const/16 v20, 0xe

    const-string v21, "in"

    const-string v22, "ID"

    const-string v23, "in-id"

    move-object/from16 v17, v13

    invoke-direct/range {v17 .. v23}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->IN:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    new-instance v14, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    const-string v25, "FR"

    const/16 v26, 0xf

    const/16 v27, 0xf

    const-string v28, "fr"

    const-string v29, "FR"

    const-string v30, "fr-fr"

    move-object/from16 v24, v14

    invoke-direct/range {v24 .. v30}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->FR:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    new-instance v15, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    const-string v18, "AR"

    const/16 v19, 0x10

    const/16 v20, 0x10

    const-string v21, "ar"

    const-string v22, "AE"

    const-string v23, "ar-ae"

    move-object/from16 v17, v15

    invoke-direct/range {v17 .. v23}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->AR:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    const/16 v15, 0x11

    new-array v15, v15, [Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    const/16 v18, 0x0

    aput-object v7, v15, v18

    const/4 v7, 0x1

    aput-object v0, v15, v7

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

    aput-object v6, v15, v0

    const/16 v0, 0x8

    aput-object v8, v15, v0

    const/16 v0, 0x9

    aput-object v16, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v13, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v17, v15, v0

    sput-object v15, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->e:[Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p5, p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->b:Ljava/lang/String;

    iput p3, p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->d:I

    iput-object p6, p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->c:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(I)Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->EN:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->AR:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->FR:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->IN:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->HI:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->TR:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->VI:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->TH:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->ES:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->DE:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->RU:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->PT:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->KO:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->JA:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->ZH_TW:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->ZH_HK:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->ZH_CN:Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
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
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;
    .locals 1

    const-class v0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;
    .locals 1

    sget-object v0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->e:[Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    return-object v0
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTextValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->c:Ljava/lang/String;

    return-object v0
.end method

.method public index()I
    .locals 1

    iget v0, p0, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->d:I

    return v0
.end method
