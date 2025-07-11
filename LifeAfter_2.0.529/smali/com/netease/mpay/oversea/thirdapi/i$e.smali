.class Lcom/netease/mpay/oversea/thirdapi/i$e;
.super Ljava/lang/Object;
.source "FacebookApi.java"

# interfaces
.implements Lcom/facebook/AccessToken$AccessTokenRefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/i;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

.field final synthetic e:Lcom/netease/mpay/oversea/thirdapi/i;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/i;Landroid/app/Activity;Lcom/netease/mpay/oversea/SyncApiAuthCallback;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i$e;->e:Lcom/netease/mpay/oversea/thirdapi/i;

    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/i$e;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/mpay/oversea/thirdapi/i$e;->b:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    iput-object p4, p0, Lcom/netease/mpay/oversea/thirdapi/i$e;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/oversea/thirdapi/i$e;->d:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i$e;->a:Landroid/app/Activity;

    sget-object v0, Lcom/netease/mpay/oversea/g6;->w:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/i$e;->b:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    invoke-direct {v1, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;-><init>(Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/oversea/ui/c;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;)V

    return-void
.end method

.method public OnTokenRefreshed(Lcom/facebook/AccessToken;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/netease/mpay/oversea/o4;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/o4;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/i$e;->a:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/thirdapi/i$e$a;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/thirdapi/i$e$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/i$e;)V

    new-instance v3, Lcom/netease/mpay/oversea/thirdapi/i$e$b;

    invoke-direct {v3, p0, p1}, Lcom/netease/mpay/oversea/thirdapi/i$e$b;-><init>(Lcom/netease/mpay/oversea/thirdapi/i$e;Lcom/facebook/AccessToken;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/o4;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g9$a;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 18
    :catch_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i$e;->b:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    const/16 v0, 0xcc

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    :goto_0
    return-void
.end method
