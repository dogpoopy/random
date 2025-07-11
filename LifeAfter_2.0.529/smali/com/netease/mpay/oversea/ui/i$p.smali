.class public final enum Lcom/netease/mpay/oversea/ui/i$p;
.super Ljava/lang/Enum;
.source "FinishActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/mpay/oversea/ui/i$p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netease/mpay/oversea/ui/i$p;

.field public static final enum b:Lcom/netease/mpay/oversea/ui/i$p;

.field public static final enum c:Lcom/netease/mpay/oversea/ui/i$p;

.field public static final enum d:Lcom/netease/mpay/oversea/ui/i$p;

.field public static final enum e:Lcom/netease/mpay/oversea/ui/i$p;

.field public static final enum f:Lcom/netease/mpay/oversea/ui/i$p;

.field public static final enum g:Lcom/netease/mpay/oversea/ui/i$p;

.field private static final synthetic h:[Lcom/netease/mpay/oversea/ui/i$p;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/ui/i$p;

    const/4 v1, 0x0

    const-string v2, "CANCEL"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/ui/i$p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/oversea/ui/i$p;->a:Lcom/netease/mpay/oversea/ui/i$p;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$p;

    const/4 v3, 0x1

    const-string v4, "LOGIN_SUCCESS"

    invoke-direct {v2, v4, v3}, Lcom/netease/mpay/oversea/ui/i$p;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/netease/mpay/oversea/ui/i$p;->b:Lcom/netease/mpay/oversea/ui/i$p;

    new-instance v4, Lcom/netease/mpay/oversea/ui/i$p;

    const/4 v5, 0x2

    const-string v6, "LOGOUT"

    invoke-direct {v4, v6, v5}, Lcom/netease/mpay/oversea/ui/i$p;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/netease/mpay/oversea/ui/i$p;->c:Lcom/netease/mpay/oversea/ui/i$p;

    new-instance v6, Lcom/netease/mpay/oversea/ui/i$p;

    const/4 v7, 0x3

    const-string v8, "CLOSE_VIEW"

    invoke-direct {v6, v8, v7}, Lcom/netease/mpay/oversea/ui/i$p;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/netease/mpay/oversea/ui/i$p;->d:Lcom/netease/mpay/oversea/ui/i$p;

    new-instance v8, Lcom/netease/mpay/oversea/ui/i$p;

    const/4 v9, 0x4

    const-string v10, "RESTORE_FAILED"

    invoke-direct {v8, v10, v9}, Lcom/netease/mpay/oversea/ui/i$p;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/netease/mpay/oversea/ui/i$p;->e:Lcom/netease/mpay/oversea/ui/i$p;

    new-instance v10, Lcom/netease/mpay/oversea/ui/i$p;

    const/4 v11, 0x5

    const-string v12, "RESTORE_SUCCESS"

    invoke-direct {v10, v12, v11}, Lcom/netease/mpay/oversea/ui/i$p;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/netease/mpay/oversea/ui/i$p;->f:Lcom/netease/mpay/oversea/ui/i$p;

    new-instance v12, Lcom/netease/mpay/oversea/ui/i$p;

    const/4 v13, 0x6

    const-string v14, "EVENT_RESULT"

    invoke-direct {v12, v14, v13}, Lcom/netease/mpay/oversea/ui/i$p;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/netease/mpay/oversea/ui/i$p;->g:Lcom/netease/mpay/oversea/ui/i$p;

    const/4 v14, 0x7

    new-array v14, v14, [Lcom/netease/mpay/oversea/ui/i$p;

    aput-object v0, v14, v1

    aput-object v2, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v7

    aput-object v8, v14, v9

    aput-object v10, v14, v11

    aput-object v12, v14, v13

    .line 2
    sput-object v14, Lcom/netease/mpay/oversea/ui/i$p;->h:[Lcom/netease/mpay/oversea/ui/i$p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/oversea/ui/i$p;
    .locals 1

    .line 1
    const-class v0, Lcom/netease/mpay/oversea/ui/i$p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/mpay/oversea/ui/i$p;

    return-object p0
.end method

.method public static values()[Lcom/netease/mpay/oversea/ui/i$p;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/ui/i$p;->h:[Lcom/netease/mpay/oversea/ui/i$p;

    invoke-virtual {v0}, [Lcom/netease/mpay/oversea/ui/i$p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/oversea/ui/i$p;

    return-object v0
.end method
