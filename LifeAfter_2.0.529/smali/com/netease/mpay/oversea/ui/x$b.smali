.class Lcom/netease/mpay/oversea/ui/x$b;
.super Ljava/lang/Object;
.source "WebVerifyHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/y$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/x;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/x;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/x$b;->a:Lcom/netease/mpay/oversea/ui/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/x$b;->a:Lcom/netease/mpay/oversea/ui/x;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/x;->b(Lcom/netease/mpay/oversea/ui/x;)V

    return-void
.end method

.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/x$b;->a:Lcom/netease/mpay/oversea/ui/x;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/ui/x;->a(Lcom/netease/mpay/oversea/ui/x;Lcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/mpay/oversea/i9;->a(Lcom/netease/mpay/oversea/e6;)V

    .line 4
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/x$b;->a:Lcom/netease/mpay/oversea/ui/x;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/ui/x;->a(Lcom/netease/mpay/oversea/ui/x;Ljava/lang/String;)V

    return-void
.end method

.method public onPNLogin(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSetSpwd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onVerify(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/x$b;->a:Lcom/netease/mpay/oversea/ui/x;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/ui/x;->a(Lcom/netease/mpay/oversea/ui/x;Ljava/lang/String;)V

    return-void
.end method

.method public postMsgToNative(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
