.class public final enum Lcom/netease/mpay/oversea/thirdapi/e$a;
.super Ljava/lang/Enum;
.source "ApiResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/thirdapi/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/mpay/oversea/thirdapi/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netease/mpay/oversea/thirdapi/e$a;

.field public static final enum b:Lcom/netease/mpay/oversea/thirdapi/e$a;

.field private static final synthetic c:[Lcom/netease/mpay/oversea/thirdapi/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/e$a;

    const/4 v1, 0x0

    const-string v2, "LOGIN_FAILED"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/thirdapi/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/oversea/thirdapi/e$a;->a:Lcom/netease/mpay/oversea/thirdapi/e$a;

    .line 2
    new-instance v2, Lcom/netease/mpay/oversea/thirdapi/e$a;

    const/4 v3, 0x1

    const-string v4, "LOGIN_CANCEL"

    invoke-direct {v2, v4, v3}, Lcom/netease/mpay/oversea/thirdapi/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/netease/mpay/oversea/thirdapi/e$a;->b:Lcom/netease/mpay/oversea/thirdapi/e$a;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/netease/mpay/oversea/thirdapi/e$a;

    aput-object v0, v4, v1

    aput-object v2, v4, v3

    .line 3
    sput-object v4, Lcom/netease/mpay/oversea/thirdapi/e$a;->c:[Lcom/netease/mpay/oversea/thirdapi/e$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/oversea/thirdapi/e$a;
    .locals 1

    .line 1
    const-class v0, Lcom/netease/mpay/oversea/thirdapi/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/mpay/oversea/thirdapi/e$a;

    return-object p0
.end method

.method public static values()[Lcom/netease/mpay/oversea/thirdapi/e$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/e$a;->c:[Lcom/netease/mpay/oversea/thirdapi/e$a;

    invoke-virtual {v0}, [Lcom/netease/mpay/oversea/thirdapi/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/oversea/thirdapi/e$a;

    return-object v0
.end method
