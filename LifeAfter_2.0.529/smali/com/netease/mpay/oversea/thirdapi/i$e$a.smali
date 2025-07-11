.class Lcom/netease/mpay/oversea/thirdapi/i$e$a;
.super Ljava/lang/Object;
.source "FacebookApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/g9$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/i$e;->OnTokenRefreshed(Lcom/facebook/AccessToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/thirdapi/i$e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/i$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i$e$a;->a:Lcom/netease/mpay/oversea/thirdapi/i$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i$e$a;->a:Lcom/netease/mpay/oversea/thirdapi/i$e;

    iget-object p1, p1, Lcom/netease/mpay/oversea/thirdapi/i$e;->b:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    const/16 p2, 0xcc

    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    return-void
.end method
