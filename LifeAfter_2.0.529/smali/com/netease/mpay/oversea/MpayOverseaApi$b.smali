.class Lcom/netease/mpay/oversea/MpayOverseaApi$b;
.super Lcom/netease/mpay/oversea/r4;
.source "MpayOverseaApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/MpayOverseaApi;->a(ILcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/MpayLoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/netease/mpay/oversea/s9;

.field final synthetic d:Lcom/netease/mpay/oversea/MpayLoginCallback;

.field final synthetic e:Lcom/netease/mpay/oversea/g6;

.field final synthetic f:Lcom/netease/mpay/oversea/MpayOverseaApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/MpayOverseaApi;ILcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/MpayLoginCallback;Lcom/netease/mpay/oversea/g6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$b;->f:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iput p2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$b;->b:I

    iput-object p3, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$b;->c:Lcom/netease/mpay/oversea/s9;

    iput-object p4, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$b;->d:Lcom/netease/mpay/oversea/MpayLoginCallback;

    iput-object p5, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$b;->e:Lcom/netease/mpay/oversea/g6;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/r4;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;I)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$b;->f:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-static {p1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a(Lcom/netease/mpay/oversea/MpayOverseaApi;)Landroid/app/Activity;

    move-result-object p1

    iget p2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$b;->b:I

    new-instance p3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$b;->c:Lcom/netease/mpay/oversea/s9;

    invoke-direct {p3, v0, p0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    invoke-static {p1, p2, p3}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/y5;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/n;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$b;->f:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-static {v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a(Lcom/netease/mpay/oversea/MpayOverseaApi;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$b;->f:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-static {v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->b(Lcom/netease/mpay/oversea/MpayOverseaApi;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/netease/mpay/oversea/n;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/y5;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/User;)V
    .locals 6

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/mpay/oversea/User;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/cb;->b(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v0

    iget v1, p2, Lcom/netease/mpay/oversea/User;->loginType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/cb;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$b;->f:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-static {v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a(Lcom/netease/mpay/oversea/MpayOverseaApi;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$b;->d:Lcom/netease/mpay/oversea/MpayLoginCallback;

    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onLoginSuccess(Lcom/netease/mpay/oversea/User;)V

    .line 10
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->g()Lcom/netease/mpay/oversea/g6;

    move-result-object p1

    .line 11
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$b;->c:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g6;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g6;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string p1, "unknown"

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    move-object v2, p1

    iget-object v3, p2, Lcom/netease/mpay/oversea/User;->uid:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceLoginDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public onDialogFinish(Lcom/netease/mpay/oversea/User;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v0

    iget v1, p1, Lcom/netease/mpay/oversea/User;->loginType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/cb;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$b;->d:Lcom/netease/mpay/oversea/MpayLoginCallback;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onDialogFinish(Lcom/netease/mpay/oversea/User;)V

    return-void
.end method

.method public onFailure(ILjava/lang/String;I)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$b;->e:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fail"

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/cb;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$b;->d:Lcom/netease/mpay/oversea/MpayLoginCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/i9;->g()Lcom/netease/mpay/oversea/g6;

    move-result-object p2

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v0

    sget-object p3, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/g6;->j()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/g6;->d()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "unknown"

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    move-object v2, p2

    const/16 v4, 0xa

    const-string v3, ""

    move v5, p1

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceLoginDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public onLoginSuccess(Lcom/netease/mpay/oversea/User;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mpay/oversea/User;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/cb;->b(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v0

    iget v1, p1, Lcom/netease/mpay/oversea/User;->loginType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/cb;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$b;->f:Lcom/netease/mpay/oversea/MpayOverseaApi;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->r:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/s9;)V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$b;->d:Lcom/netease/mpay/oversea/MpayLoginCallback;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onLoginSuccess(Lcom/netease/mpay/oversea/User;)V

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->g()Lcom/netease/mpay/oversea/g6;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$b;->c:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "unknown"

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    move-object v3, v0

    iget-object v4, p1, Lcom/netease/mpay/oversea/User;->uid:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 8
    invoke-virtual/range {v1 .. v6}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceLoginDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public onUserLogout()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$b;->f:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-static {v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->c(Lcom/netease/mpay/oversea/MpayOverseaApi;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$b;->d:Lcom/netease/mpay/oversea/MpayLoginCallback;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onUserLogout()V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/w3;->a()Lcom/netease/mpay/oversea/w3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/w3;->d()V

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->g()Lcom/netease/mpay/oversea/g6;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$b;->c:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "unknown"

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    move-object v3, v0

    const/16 v5, 0xa

    const/16 v6, 0x64

    const-string v4, ""

    .line 7
    invoke-virtual/range {v1 .. v6}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceLoginDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
