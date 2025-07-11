.class public final enum Lcom/netease/ntunisdk/base/constant/a;
.super Ljava/lang/Enum;
.source "CommonCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/base/constant/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netease/ntunisdk/base/constant/a;

.field public static final enum b:Lcom/netease/ntunisdk/base/constant/a;

.field public static final enum c:Lcom/netease/ntunisdk/base/constant/a;

.field private static final synthetic e:[Lcom/netease/ntunisdk/base/constant/a;

.field public static final enum f:Lcom/netease/ntunisdk/base/constant/a;

.field public static final enum g:Lcom/netease/ntunisdk/base/constant/a;


# instance fields
.field public d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 4
    new-instance v0, Lcom/netease/ntunisdk/base/constant/a;

    const-string v1, "Suc"

    const/4 v2, 0x0

    const-string v3, "suc"

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/ntunisdk/base/constant/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/base/constant/a;->a:Lcom/netease/ntunisdk/base/constant/a;

    .line 5
    new-instance v1, Lcom/netease/ntunisdk/base/constant/a;

    const-string v3, "Fail"

    const/4 v4, 0x1

    const-string v5, "fail"

    invoke-direct {v1, v3, v4, v5}, Lcom/netease/ntunisdk/base/constant/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netease/ntunisdk/base/constant/a;->b:Lcom/netease/ntunisdk/base/constant/a;

    .line 6
    new-instance v3, Lcom/netease/ntunisdk/base/constant/a;

    const-string v5, "Cancel"

    const/4 v6, 0x2

    const-string v7, "cancel"

    invoke-direct {v3, v5, v6, v7}, Lcom/netease/ntunisdk/base/constant/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/netease/ntunisdk/base/constant/a;->c:Lcom/netease/ntunisdk/base/constant/a;

    .line 7
    new-instance v5, Lcom/netease/ntunisdk/base/constant/a;

    const-string v7, "Checking"

    const/4 v8, 0x3

    const-string v9, "checking"

    invoke-direct {v5, v7, v8, v9}, Lcom/netease/ntunisdk/base/constant/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/netease/ntunisdk/base/constant/a;->f:Lcom/netease/ntunisdk/base/constant/a;

    .line 8
    new-instance v7, Lcom/netease/ntunisdk/base/constant/a;

    const-string v9, "NeedRelogin"

    const/4 v10, 0x4

    const-string v11, "needRelogin"

    invoke-direct {v7, v9, v10, v11}, Lcom/netease/ntunisdk/base/constant/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/netease/ntunisdk/base/constant/a;->g:Lcom/netease/ntunisdk/base/constant/a;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/netease/ntunisdk/base/constant/a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 3
    sput-object v9, Lcom/netease/ntunisdk/base/constant/a;->e:[Lcom/netease/ntunisdk/base/constant/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/netease/ntunisdk/base/constant/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/base/constant/a;
    .locals 1

    .line 3
    const-class v0, Lcom/netease/ntunisdk/base/constant/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/base/constant/a;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/base/constant/a;
    .locals 1

    .line 3
    sget-object v0, Lcom/netease/ntunisdk/base/constant/a;->e:[Lcom/netease/ntunisdk/base/constant/a;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/base/constant/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/base/constant/a;

    return-object v0
.end method
