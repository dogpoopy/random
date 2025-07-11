.class Lcom/netease/mpay/oversea/thirdapi/d$a;
.super Ljava/lang/Object;
.source "ApiManager.java"

# interfaces
.implements Lcom/netease/mpay/oversea/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/d;->b(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/SyncApiAuthCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/oversea/SyncApiAuthCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/d$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/d$a;->b:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/thirdapi/e;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/d$a;->b:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    const/16 v0, 0xc9

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
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
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/d$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/d$a;->b:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/d$a;->b:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    const/16 p2, 0xcb

    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    :goto_0
    return-void
.end method
