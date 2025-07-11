.class Lcom/netease/mpay/oversea/MpayOverseaApi$a0;
.super Lcom/netease/mpay/oversea/r4;
.source "MpayOverseaApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/MpayOverseaApi;->generateMigrateCode(Lcom/netease/mpay/oversea/MpayLoginCallback;)V
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
    iput-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$a0;->c:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iput-object p2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$a0;->b:Lcom/netease/mpay/oversea/MpayLoginCallback;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/r4;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogFinish(Lcom/netease/mpay/oversea/User;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$a0;->b:Lcom/netease/mpay/oversea/MpayLoginCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onDialogFinish(Lcom/netease/mpay/oversea/User;)V

    return-void
.end method

.method public onFailure(ILjava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$a0;->b:Lcom/netease/mpay/oversea/MpayLoginCallback;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onDialogFinish(Lcom/netease/mpay/oversea/User;)V

    return-void
.end method

.method public onLoginSuccess(Lcom/netease/mpay/oversea/User;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mpay/oversea/User;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/cb;->b(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v0

    iget p1, p1, Lcom/netease/mpay/oversea/User;->loginType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "success"

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/oversea/cb;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$a0;->c:Lcom/netease/mpay/oversea/MpayOverseaApi;

    sget-object v0, Lcom/netease/mpay/oversea/s9;->p:Lcom/netease/mpay/oversea/s9;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/s9;)V

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$a0;->b:Lcom/netease/mpay/oversea/MpayLoginCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onDialogFinish(Lcom/netease/mpay/oversea/User;)V

    return-void
.end method

.method public onUserLogout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$a0;->b:Lcom/netease/mpay/oversea/MpayLoginCallback;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onUserLogout()V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/w3;->a()Lcom/netease/mpay/oversea/w3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/w3;->d()V

    return-void
.end method
