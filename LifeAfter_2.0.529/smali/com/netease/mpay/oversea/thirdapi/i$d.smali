.class Lcom/netease/mpay/oversea/thirdapi/i$d;
.super Ljava/lang/Object;
.source "FacebookApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/SyncApiAuthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/i;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

.field final synthetic c:Lcom/netease/mpay/oversea/thirdapi/i;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/i;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i$d;->c:Lcom/netease/mpay/oversea/thirdapi/i;

    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/i$d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/oversea/thirdapi/i$d;->b:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i$d;->b:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p3

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i$d;->c:Lcom/netease/mpay/oversea/thirdapi/i;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/i$d;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, p3, v2, v1}, Lcom/netease/mpay/oversea/thirdapi/i;->a(Lcom/netease/mpay/oversea/thirdapi/i;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i$d;->b:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p3}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/thirdapi/i$d;->onFailure(I)V

    :cond_1
    :goto_0
    return-void
.end method
