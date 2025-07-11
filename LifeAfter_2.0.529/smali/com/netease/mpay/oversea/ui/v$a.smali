.class Lcom/netease/mpay/oversea/ui/v$a;
.super Ljava/lang/Object;
.source "UserCenterHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/k$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/v;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/v;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/v$a;->a:Lcom/netease/mpay/oversea/ui/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$a;->a:Lcom/netease/mpay/oversea/ui/v;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/v;->m()V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/j;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$a;->a:Lcom/netease/mpay/oversea/ui/v;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$a;->a:Lcom/netease/mpay/oversea/ui/v;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/v$a$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/ui/v$a$a;-><init>(Lcom/netease/mpay/oversea/ui/v$a;)V

    invoke-static {v0, p1, v1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$a;->a:Lcom/netease/mpay/oversea/ui/v;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    new-instance v3, Lcom/netease/mpay/oversea/j;

    const/16 v4, 0x3ec

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$a;->a:Lcom/netease/mpay/oversea/ui/v;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 4
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    .line 5
    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method
