.class Lcom/netease/mpay/oversea/thirdapi/i$e$b;
.super Ljava/lang/Object;
.source "FacebookApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/i$e;->OnTokenRefreshed(Lcom/facebook/AccessToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/AccessToken;

.field final synthetic b:Lcom/netease/mpay/oversea/thirdapi/i$e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/i$e;Lcom/facebook/AccessToken;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i$e$b;->b:Lcom/netease/mpay/oversea/thirdapi/i$e;

    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/i$e$b;->a:Lcom/facebook/AccessToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i$e$b;->b:Lcom/netease/mpay/oversea/thirdapi/i$e;

    iget-object v1, v0, Lcom/netease/mpay/oversea/thirdapi/i$e;->e:Lcom/netease/mpay/oversea/thirdapi/i;

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/i$e$b;->a:Lcom/facebook/AccessToken;

    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/i$e;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/netease/mpay/oversea/thirdapi/i;->a(Lcom/netease/mpay/oversea/thirdapi/i;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i$e$b;->b:Lcom/netease/mpay/oversea/thirdapi/i$e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/i$e;->d:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/i$e$b;->a:Lcom/facebook/AccessToken;

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/i$e$b;->a:Lcom/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/thirdapi/i$e$b;->a:Lcom/facebook/AccessToken;

    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i$e$b;->b:Lcom/netease/mpay/oversea/thirdapi/i$e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/i$e;->a:Landroid/app/Activity;

    sget-object v1, Lcom/netease/mpay/oversea/g6;->w:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v1

    new-instance v2, Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;

    iget-object v3, p0, Lcom/netease/mpay/oversea/thirdapi/i$e$b;->b:Lcom/netease/mpay/oversea/thirdapi/i$e;

    iget-object v3, v3, Lcom/netease/mpay/oversea/thirdapi/i$e;->b:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    invoke-direct {v2, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;-><init>(Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/c;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;)V

    :goto_0
    return-void
.end method
