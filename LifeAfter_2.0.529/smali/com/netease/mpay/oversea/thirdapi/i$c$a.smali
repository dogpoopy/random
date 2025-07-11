.class Lcom/netease/mpay/oversea/thirdapi/i$c$a;
.super Ljava/lang/Object;
.source "FacebookApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/g9$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/i$c;->OnTokenRefreshed(Lcom/facebook/AccessToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/thirdapi/i$c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/i$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i$c$a;->a:Lcom/netease/mpay/oversea/thirdapi/i$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i$c$a;->a:Lcom/netease/mpay/oversea/thirdapi/i$c;

    iget-object p1, p1, Lcom/netease/mpay/oversea/thirdapi/i$c;->b:Lcom/netease/mpay/oversea/CheckApiAuthCallback;

    if-eqz p1, :cond_0

    const/16 p2, 0x12f

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, p2, v0}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    :cond_0
    return-void
.end method
