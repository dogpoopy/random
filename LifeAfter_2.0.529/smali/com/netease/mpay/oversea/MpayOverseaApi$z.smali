.class Lcom/netease/mpay/oversea/MpayOverseaApi$z;
.super Lcom/netease/mpay/oversea/r4;
.source "MpayOverseaApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/MpayOverseaApi;->migrateCodeLogin(Lcom/netease/mpay/oversea/MpayLoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/MpayLoginCallback;

.field final synthetic c:Lcom/netease/mpay/oversea/MpayOverseaApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/MpayLoginCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$z;->c:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iput-object p2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$z;->b:Lcom/netease/mpay/oversea/MpayLoginCallback;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/r4;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogFinish(Lcom/netease/mpay/oversea/User;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$z;->b:Lcom/netease/mpay/oversea/MpayLoginCallback;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onDialogFinish(Lcom/netease/mpay/oversea/User;)V

    return-void
.end method

.method public onFailure(ILjava/lang/String;I)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "fail"

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/cb;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$z;->b:Lcom/netease/mpay/oversea/MpayLoginCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/i9;->g()Lcom/netease/mpay/oversea/g6;

    move-result-object p2

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v0

    sget-object p3, Lcom/netease/mpay/oversea/s9;->p:Lcom/netease/mpay/oversea/s9;

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
    .locals 8

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
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->g()Lcom/netease/mpay/oversea/g6;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v1

    sget-object v7, Lcom/netease/mpay/oversea/s9;->p:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "unknown"

    :goto_0
    move-object v3, v0

    iget-object v4, p1, Lcom/netease/mpay/oversea/User;->uid:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceLoginDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$z;->c:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-static {v0, v7}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/s9;)V

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$z;->b:Lcom/netease/mpay/oversea/MpayLoginCallback;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onLoginSuccess(Lcom/netease/mpay/oversea/User;)V

    return-void
.end method

.method public onUserLogout()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$z;->b:Lcom/netease/mpay/oversea/MpayLoginCallback;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onUserLogout()V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/w3;->a()Lcom/netease/mpay/oversea/w3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/w3;->d()V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->g()Lcom/netease/mpay/oversea/g6;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v1

    sget-object v2, Lcom/netease/mpay/oversea/s9;->p:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 5
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

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceLoginDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
