.class public final enum Lcom/netease/pharos/network/NetworkType;
.super Ljava/lang/Enum;
.source "NetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/pharos/network/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/pharos/network/NetworkType;

.field public static final enum INIT:Lcom/netease/pharos/network/NetworkType;

.field public static final enum MOBILE:Lcom/netease/pharos/network/NetworkType;

.field public static final enum NONE:Lcom/netease/pharos/network/NetworkType;

.field public static final enum WIFI:Lcom/netease/pharos/network/NetworkType;


# instance fields
.field private flag:I

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 9
    new-instance v0, Lcom/netease/pharos/network/NetworkType;

    const-string v1, "INIT"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "init"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/pharos/network/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/pharos/network/NetworkType;->INIT:Lcom/netease/pharos/network/NetworkType;

    .line 10
    new-instance v1, Lcom/netease/pharos/network/NetworkType;

    const-string v3, "NONE"

    const/4 v4, 0x1

    const-string v5, "none"

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/netease/pharos/network/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/netease/pharos/network/NetworkType;->NONE:Lcom/netease/pharos/network/NetworkType;

    .line 11
    new-instance v3, Lcom/netease/pharos/network/NetworkType;

    const-string v5, "WIFI"

    const/4 v6, 0x2

    const-string v7, "wifi"

    invoke-direct {v3, v5, v6, v4, v7}, Lcom/netease/pharos/network/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/netease/pharos/network/NetworkType;->WIFI:Lcom/netease/pharos/network/NetworkType;

    .line 12
    new-instance v5, Lcom/netease/pharos/network/NetworkType;

    const-string v7, "MOBILE"

    const/4 v8, 0x3

    const-string v9, "mobile"

    invoke-direct {v5, v7, v8, v6, v9}, Lcom/netease/pharos/network/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/netease/pharos/network/NetworkType;->MOBILE:Lcom/netease/pharos/network/NetworkType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/netease/pharos/network/NetworkType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 8
    sput-object v7, Lcom/netease/pharos/network/NetworkType;->$VALUES:[Lcom/netease/pharos/network/NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/netease/pharos/network/NetworkType;->flag:I

    .line 18
    iput-object p4, p0, Lcom/netease/pharos/network/NetworkType;->value:Ljava/lang/String;

    return-void
.end method

.method public static getNetwork(I)Lcom/netease/pharos/network/NetworkType;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 52
    sget-object p0, Lcom/netease/pharos/network/NetworkType;->NONE:Lcom/netease/pharos/network/NetworkType;

    return-object p0

    .line 50
    :cond_0
    sget-object p0, Lcom/netease/pharos/network/NetworkType;->MOBILE:Lcom/netease/pharos/network/NetworkType;

    return-object p0

    .line 48
    :cond_1
    sget-object p0, Lcom/netease/pharos/network/NetworkType;->WIFI:Lcom/netease/pharos/network/NetworkType;

    return-object p0

    .line 46
    :cond_2
    sget-object p0, Lcom/netease/pharos/network/NetworkType;->INIT:Lcom/netease/pharos/network/NetworkType;

    return-object p0
.end method

.method public static getNetwork(Ljava/lang/String;)Lcom/netease/pharos/network/NetworkType;
    .locals 1

    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object p0, Lcom/netease/pharos/network/NetworkType;->NONE:Lcom/netease/pharos/network/NetworkType;

    return-object p0

    :cond_0
    const-string v0, "init"

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    sget-object p0, Lcom/netease/pharos/network/NetworkType;->INIT:Lcom/netease/pharos/network/NetworkType;

    return-object p0

    :cond_1
    const-string v0, "mobile"

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    sget-object p0, Lcom/netease/pharos/network/NetworkType;->MOBILE:Lcom/netease/pharos/network/NetworkType;

    return-object p0

    :cond_2
    const-string v0, "wifi"

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 37
    sget-object p0, Lcom/netease/pharos/network/NetworkType;->WIFI:Lcom/netease/pharos/network/NetworkType;

    return-object p0

    .line 39
    :cond_3
    sget-object p0, Lcom/netease/pharos/network/NetworkType;->NONE:Lcom/netease/pharos/network/NetworkType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/pharos/network/NetworkType;
    .locals 1

    .line 8
    const-class v0, Lcom/netease/pharos/network/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/pharos/network/NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/netease/pharos/network/NetworkType;
    .locals 1

    .line 8
    sget-object v0, Lcom/netease/pharos/network/NetworkType;->$VALUES:[Lcom/netease/pharos/network/NetworkType;

    invoke-virtual {v0}, [Lcom/netease/pharos/network/NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/pharos/network/NetworkType;

    return-object v0
.end method


# virtual methods
.method public flag()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/netease/pharos/network/NetworkType;->flag:I

    return v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/netease/pharos/network/NetworkType;->value:Ljava/lang/String;

    return-object v0
.end method
