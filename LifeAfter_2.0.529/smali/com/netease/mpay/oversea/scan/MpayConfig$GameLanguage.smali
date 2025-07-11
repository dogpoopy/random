.class public final enum Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;
.super Ljava/lang/Enum;
.source "MpayConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/scan/MpayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GameLanguage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

.field public static final enum DE:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

.field public static final enum EN:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

.field public static final enum ES:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

.field public static final enum HI:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

.field public static final enum IN:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

.field public static final enum JA:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

.field public static final enum KO:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

.field public static final enum PT:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

.field public static final enum RU:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

.field public static final enum TH:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

.field public static final enum TR:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

.field public static final enum VI:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

.field public static final enum ZH_CN:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

.field public static final enum ZH_HK:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

.field public static final enum ZH_TW:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;


# instance fields
.field private index:I

.field private language:Ljava/lang/String;

.field private region:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 11
    new-instance v6, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const-string v1, "ZH_CN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "zh"

    const-string v5, "CN"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->ZH_CN:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    .line 13
    new-instance v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const-string v8, "ZH_HK"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string v11, "zh"

    const-string v12, "HK"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->ZH_HK:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    .line 15
    new-instance v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const-string v2, "ZH_TW"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-string v5, "zh"

    const-string v6, "TW"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->ZH_TW:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    .line 17
    new-instance v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const-string v8, "EN"

    const/4 v9, 0x3

    const/4 v10, 0x3

    const-string v11, "en"

    const-string v12, "US"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->EN:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    .line 19
    new-instance v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const-string v2, "JA"

    const/4 v3, 0x4

    const/4 v4, 0x4

    const-string v5, "ja"

    const-string v6, "JP"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->JA:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    .line 21
    new-instance v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const-string v8, "KO"

    const/4 v9, 0x5

    const/4 v10, 0x5

    const-string v11, "ko"

    const-string v12, "KR"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->KO:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    .line 23
    new-instance v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const-string v2, "PT"

    const/4 v3, 0x6

    const/4 v4, 0x6

    const-string v5, "pt"

    const-string v6, "PT"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->PT:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    .line 25
    new-instance v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const-string v8, "RU"

    const/4 v9, 0x7

    const/4 v10, 0x7

    const-string v11, "ru"

    const-string v12, "RU"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->RU:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    .line 27
    new-instance v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const-string v2, "DE"

    const/16 v3, 0x8

    const/16 v4, 0x8

    const-string v5, "de"

    const-string v6, "DE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->DE:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    .line 29
    new-instance v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const-string v8, "ES"

    const/16 v9, 0x9

    const/16 v10, 0x9

    const-string v11, "es"

    const-string v12, "ES"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->ES:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    .line 31
    new-instance v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const-string v2, "TH"

    const/16 v3, 0xa

    const/16 v4, 0xa

    const-string v5, "th"

    const-string v6, "TH"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->TH:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    .line 33
    new-instance v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const-string v8, "VI"

    const/16 v9, 0xb

    const/16 v10, 0xb

    const-string v11, "vi"

    const-string v12, "VN"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->VI:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    .line 35
    new-instance v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const-string v2, "TR"

    const/16 v3, 0xc

    const/16 v4, 0xc

    const-string v5, "tr"

    const-string v6, "TR"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->TR:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    .line 37
    new-instance v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const-string v8, "HI"

    const/16 v9, 0xd

    const/16 v10, 0xd

    const-string v11, "hi"

    const-string v12, "IN"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->HI:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    .line 39
    new-instance v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const-string v2, "IN"

    const/16 v3, 0xe

    const/16 v4, 0xe

    const-string v5, "in"

    const-string v6, "ID"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->IN:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    .line 9
    sget-object v1, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->ZH_CN:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->ZH_HK:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->ZH_TW:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->EN:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->JA:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->KO:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->PT:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->RU:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->DE:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->ES:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->TH:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->VI:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->TR:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->HI:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->IN:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->$VALUES:[Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

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

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p5, p0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->region:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->language:Ljava/lang/String;

    .line 48
    iput p3, p0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;
    .locals 1

    .line 9
    const-class v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    return-object p0
.end method

.method public static values()[Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;
    .locals 1

    .line 9
    sget-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->$VALUES:[Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    invoke-virtual {v0}, [Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    return-object v0
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageRegion()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->language:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->region:Ljava/lang/String;

    return-object v0
.end method

.method public index()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->index:I

    return v0
.end method
