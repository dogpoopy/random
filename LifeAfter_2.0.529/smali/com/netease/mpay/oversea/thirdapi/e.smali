.class public Lcom/netease/mpay/oversea/thirdapi/e;
.super Ljava/lang/Object;
.source "ApiResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/thirdapi/e$a;
    }
.end annotation


# instance fields
.field public a:Lcom/netease/mpay/oversea/thirdapi/e$a;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/thirdapi/e$a;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/thirdapi/e;-><init>(Lcom/netease/mpay/oversea/thirdapi/e$a;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/oversea/thirdapi/e$a;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/e;->a:Lcom/netease/mpay/oversea/thirdapi/e$a;

    .line 4
    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/e;->b:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/netease/mpay/oversea/thirdapi/e;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/e;->c:Ljava/lang/String;

    return-object p0
.end method
