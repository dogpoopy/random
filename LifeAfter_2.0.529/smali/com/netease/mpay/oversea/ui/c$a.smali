.class Lcom/netease/mpay/oversea/ui/c$a;
.super Ljava/lang/Object;
.source "ApiHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/c;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/c$a;->a:Lcom/netease/mpay/oversea/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/thirdapi/e;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/c$a;->a:Lcom/netease/mpay/oversea/ui/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/c;->a(Lcom/netease/mpay/oversea/ui/c;)Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/c$a;->a:Lcom/netease/mpay/oversea/ui/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/c;->a(Lcom/netease/mpay/oversea/ui/c;)Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    move-result-object p1

    const/16 v0, 0xcc

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/c$a;->a:Lcom/netease/mpay/oversea/ui/c;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/i;->a()V

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
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/c$a;->a:Lcom/netease/mpay/oversea/ui/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/c;->a(Lcom/netease/mpay/oversea/ui/c;)Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/c$a;->a:Lcom/netease/mpay/oversea/ui/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/c;->a(Lcom/netease/mpay/oversea/ui/c;)Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/c$a;->a:Lcom/netease/mpay/oversea/ui/c;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/i;->a()V

    return-void
.end method
