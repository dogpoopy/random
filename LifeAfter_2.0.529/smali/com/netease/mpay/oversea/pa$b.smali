.class final enum Lcom/netease/mpay/oversea/pa$b;
.super Ljava/lang/Enum;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/pa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/mpay/oversea/pa$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netease/mpay/oversea/pa$b;

.field public static final enum b:Lcom/netease/mpay/oversea/pa$b;

.field public static final enum c:Lcom/netease/mpay/oversea/pa$b;

.field public static final enum d:Lcom/netease/mpay/oversea/pa$b;

.field public static final enum e:Lcom/netease/mpay/oversea/pa$b;

.field public static final enum f:Lcom/netease/mpay/oversea/pa$b;

.field public static final enum g:Lcom/netease/mpay/oversea/pa$b;

.field private static final synthetic h:[Lcom/netease/mpay/oversea/pa$b;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/pa$b;

    const/4 v1, 0x0

    const-string v2, "DEVICE"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/pa$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/oversea/pa$b;->a:Lcom/netease/mpay/oversea/pa$b;

    new-instance v2, Lcom/netease/mpay/oversea/pa$b;

    const/4 v3, 0x1

    const-string v4, "LOGIN"

    invoke-direct {v2, v4, v3}, Lcom/netease/mpay/oversea/pa$b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/netease/mpay/oversea/pa$b;->b:Lcom/netease/mpay/oversea/pa$b;

    new-instance v4, Lcom/netease/mpay/oversea/pa$b;

    const/4 v5, 0x2

    const-string v6, "QUICK_LOGIN"

    invoke-direct {v4, v6, v5}, Lcom/netease/mpay/oversea/pa$b;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/netease/mpay/oversea/pa$b;->c:Lcom/netease/mpay/oversea/pa$b;

    new-instance v6, Lcom/netease/mpay/oversea/pa$b;

    const/4 v7, 0x3

    const-string v8, "ROLE"

    invoke-direct {v6, v8, v7}, Lcom/netease/mpay/oversea/pa$b;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/netease/mpay/oversea/pa$b;->d:Lcom/netease/mpay/oversea/pa$b;

    new-instance v8, Lcom/netease/mpay/oversea/pa$b;

    const/4 v9, 0x4

    const-string v10, "RECEIPT"

    invoke-direct {v8, v10, v9}, Lcom/netease/mpay/oversea/pa$b;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/netease/mpay/oversea/pa$b;->e:Lcom/netease/mpay/oversea/pa$b;

    new-instance v10, Lcom/netease/mpay/oversea/pa$b;

    const/4 v11, 0x5

    const-string v12, "HOST"

    invoke-direct {v10, v12, v11}, Lcom/netease/mpay/oversea/pa$b;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/netease/mpay/oversea/pa$b;->f:Lcom/netease/mpay/oversea/pa$b;

    new-instance v12, Lcom/netease/mpay/oversea/pa$b;

    const/4 v13, 0x6

    const-string v14, "SDK_CONFIG"

    invoke-direct {v12, v14, v13}, Lcom/netease/mpay/oversea/pa$b;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/netease/mpay/oversea/pa$b;->g:Lcom/netease/mpay/oversea/pa$b;

    const/4 v14, 0x7

    new-array v14, v14, [Lcom/netease/mpay/oversea/pa$b;

    aput-object v0, v14, v1

    aput-object v2, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v7

    aput-object v8, v14, v9

    aput-object v10, v14, v11

    aput-object v12, v14, v13

    .line 2
    sput-object v14, Lcom/netease/mpay/oversea/pa$b;->h:[Lcom/netease/mpay/oversea/pa$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/oversea/pa$b;
    .locals 1

    .line 1
    const-class v0, Lcom/netease/mpay/oversea/pa$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/mpay/oversea/pa$b;

    return-object p0
.end method

.method public static values()[Lcom/netease/mpay/oversea/pa$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/pa$b;->h:[Lcom/netease/mpay/oversea/pa$b;

    invoke-virtual {v0}, [Lcom/netease/mpay/oversea/pa$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/oversea/pa$b;

    return-object v0
.end method
