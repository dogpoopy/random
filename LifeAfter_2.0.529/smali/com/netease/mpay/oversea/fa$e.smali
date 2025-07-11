.class final enum Lcom/netease/mpay/oversea/fa$e;
.super Ljava/lang/Enum;
.source "ServerApiTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/fa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/mpay/oversea/fa$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netease/mpay/oversea/fa$e;

.field public static final enum b:Lcom/netease/mpay/oversea/fa$e;

.field public static final enum c:Lcom/netease/mpay/oversea/fa$e;

.field public static final enum d:Lcom/netease/mpay/oversea/fa$e;

.field private static final synthetic e:[Lcom/netease/mpay/oversea/fa$e;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/fa$e;

    const/4 v1, 0x0

    const-string v2, "LOGOUT_USER"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/fa$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/oversea/fa$e;->a:Lcom/netease/mpay/oversea/fa$e;

    .line 2
    new-instance v2, Lcom/netease/mpay/oversea/fa$e;

    const/4 v3, 0x1

    const-string v4, "LOGOUT_ACCOUNT_NOT_EXIST"

    invoke-direct {v2, v4, v3}, Lcom/netease/mpay/oversea/fa$e;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/netease/mpay/oversea/fa$e;->b:Lcom/netease/mpay/oversea/fa$e;

    .line 3
    new-instance v4, Lcom/netease/mpay/oversea/fa$e;

    const/4 v5, 0x2

    const-string v6, "LOGOUT_DEVICE"

    invoke-direct {v4, v6, v5}, Lcom/netease/mpay/oversea/fa$e;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/netease/mpay/oversea/fa$e;->c:Lcom/netease/mpay/oversea/fa$e;

    .line 4
    new-instance v6, Lcom/netease/mpay/oversea/fa$e;

    const/4 v7, 0x3

    const-string v8, "GUEST_HAS_BOUND"

    invoke-direct {v6, v8, v7}, Lcom/netease/mpay/oversea/fa$e;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/netease/mpay/oversea/fa$e;->d:Lcom/netease/mpay/oversea/fa$e;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/netease/mpay/oversea/fa$e;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    .line 5
    sput-object v8, Lcom/netease/mpay/oversea/fa$e;->e:[Lcom/netease/mpay/oversea/fa$e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/oversea/fa$e;
    .locals 1

    .line 1
    const-class v0, Lcom/netease/mpay/oversea/fa$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/mpay/oversea/fa$e;

    return-object p0
.end method

.method public static values()[Lcom/netease/mpay/oversea/fa$e;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/fa$e;->e:[Lcom/netease/mpay/oversea/fa$e;

    invoke-virtual {v0}, [Lcom/netease/mpay/oversea/fa$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/oversea/fa$e;

    return-object v0
.end method
