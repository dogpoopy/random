.class final enum Lcom/netease/mpay/oversea/na;
.super Ljava/lang/Enum;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/mpay/oversea/na;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netease/mpay/oversea/na;

.field public static final enum b:Lcom/netease/mpay/oversea/na;

.field public static final enum c:Lcom/netease/mpay/oversea/na;

.field public static final enum d:Lcom/netease/mpay/oversea/na;

.field public static final enum e:Lcom/netease/mpay/oversea/na;

.field private static final synthetic f:[Lcom/netease/mpay/oversea/na;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/na;

    const/4 v1, 0x0

    const-string v2, "None"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/na;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/oversea/na;->a:Lcom/netease/mpay/oversea/na;

    new-instance v2, Lcom/netease/mpay/oversea/na;

    const/4 v3, 0x1

    const-string v4, "Init"

    invoke-direct {v2, v4, v3}, Lcom/netease/mpay/oversea/na;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/netease/mpay/oversea/na;->b:Lcom/netease/mpay/oversea/na;

    new-instance v4, Lcom/netease/mpay/oversea/na;

    const/4 v5, 0x2

    const-string v6, "Start"

    invoke-direct {v4, v6, v5}, Lcom/netease/mpay/oversea/na;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/netease/mpay/oversea/na;->c:Lcom/netease/mpay/oversea/na;

    new-instance v6, Lcom/netease/mpay/oversea/na;

    const/4 v7, 0x3

    const-string v8, "Login"

    invoke-direct {v6, v8, v7}, Lcom/netease/mpay/oversea/na;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/netease/mpay/oversea/na;->d:Lcom/netease/mpay/oversea/na;

    new-instance v8, Lcom/netease/mpay/oversea/na;

    const/4 v9, 0x4

    const-string v10, "Finish"

    invoke-direct {v8, v10, v9}, Lcom/netease/mpay/oversea/na;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/netease/mpay/oversea/na;->e:Lcom/netease/mpay/oversea/na;

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/netease/mpay/oversea/na;

    aput-object v0, v10, v1

    aput-object v2, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    .line 2
    sput-object v10, Lcom/netease/mpay/oversea/na;->f:[Lcom/netease/mpay/oversea/na;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/oversea/na;
    .locals 1

    .line 1
    const-class v0, Lcom/netease/mpay/oversea/na;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/mpay/oversea/na;

    return-object p0
.end method

.method public static values()[Lcom/netease/mpay/oversea/na;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/na;->f:[Lcom/netease/mpay/oversea/na;

    invoke-virtual {v0}, [Lcom/netease/mpay/oversea/na;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/oversea/na;

    return-object v0
.end method
