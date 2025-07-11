.class public final enum Lcom/netease/ntunisdk/base/constant/b;
.super Ljava/lang/Enum;
.source "Features.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/base/constant/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netease/ntunisdk/base/constant/b;

.field public static final enum b:Lcom/netease/ntunisdk/base/constant/b;

.field public static final enum c:Lcom/netease/ntunisdk/base/constant/b;

.field public static final enum d:Lcom/netease/ntunisdk/base/constant/b;

.field private static final synthetic g:[Lcom/netease/ntunisdk/base/constant/b;


# instance fields
.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 6
    new-instance v0, Lcom/netease/ntunisdk/base/constant/b;

    const-string v1, "Logout"

    const/4 v2, 0x0

    const-string v3, "logout"

    const-string v4, "FEATURE_HAS_LOGOUT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/ntunisdk/base/constant/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/base/constant/b;->a:Lcom/netease/ntunisdk/base/constant/b;

    .line 7
    new-instance v1, Lcom/netease/ntunisdk/base/constant/b;

    const-string v3, "Manager"

    const/4 v4, 0x1

    const-string v5, "manager"

    const-string v6, "FEATURE_HAS_MANAGER"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/netease/ntunisdk/base/constant/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netease/ntunisdk/base/constant/b;->b:Lcom/netease/ntunisdk/base/constant/b;

    .line 8
    new-instance v3, Lcom/netease/ntunisdk/base/constant/b;

    const-string v5, "Exit"

    const/4 v6, 0x2

    const-string v7, "exit"

    const-string v8, "FEATURE_EXIT_VIEW"

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/netease/ntunisdk/base/constant/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/netease/ntunisdk/base/constant/b;->c:Lcom/netease/ntunisdk/base/constant/b;

    .line 9
    new-instance v5, Lcom/netease/ntunisdk/base/constant/b;

    const-string v7, "Share"

    const/4 v8, 0x3

    const-string v9, "share"

    const-string v10, "FEATURE_HAS_SHARE"

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/netease/ntunisdk/base/constant/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/netease/ntunisdk/base/constant/b;->d:Lcom/netease/ntunisdk/base/constant/b;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/netease/ntunisdk/base/constant/b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/netease/ntunisdk/base/constant/b;->g:[Lcom/netease/ntunisdk/base/constant/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/netease/ntunisdk/base/constant/b;->e:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/netease/ntunisdk/base/constant/b;->f:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/base/constant/b;
    .locals 1

    .line 5
    const-class v0, Lcom/netease/ntunisdk/base/constant/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/base/constant/b;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/base/constant/b;
    .locals 1

    .line 5
    sget-object v0, Lcom/netease/ntunisdk/base/constant/b;->g:[Lcom/netease/ntunisdk/base/constant/b;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/base/constant/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/base/constant/b;

    return-object v0
.end method
