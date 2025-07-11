.class Lcom/netease/mpay/oversea/MpayOverseaApi$t;
.super Lcom/netease/mpay/oversea/q4;
.source "MpayOverseaApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/MpayOverseaApi;->a(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/OnCPTCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/OnCPTCallback;

.field final synthetic c:Lcom/netease/mpay/oversea/s9;

.field final synthetic d:Lcom/netease/mpay/oversea/MpayOverseaApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/OnCPTCallback;Lcom/netease/mpay/oversea/s9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$t;->d:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iput-object p2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$t;->b:Lcom/netease/mpay/oversea/OnCPTCallback;

    iput-object p3, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$t;->c:Lcom/netease/mpay/oversea/s9;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/q4;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$t;->b:Lcom/netease/mpay/oversea/OnCPTCallback;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/OnCPTCallback;->onSuccess(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/qb;)V
    .locals 2

    const-string v0, "openCPT"

    const-string v1, "success!"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$t;->b:Lcom/netease/mpay/oversea/OnCPTCallback;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/qb;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-interface {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/OnCPTCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/netease/mpay/oversea/s9;->G:Lcom/netease/mpay/oversea/s9;

    iget-object p2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$t;->c:Lcom/netease/mpay/oversea/s9;

    if-ne p1, p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$t;->b:Lcom/netease/mpay/oversea/OnCPTCallback;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/OnCPTCallback;->onSuccess(I)V

    :cond_1
    return-void
.end method

.method public onFailure(ILjava/lang/String;I)V
    .locals 1

    const-string p3, "openCPT"

    const-string v0, "failed"

    .line 1
    invoke-static {p3, v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p3, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$t;->b:Lcom/netease/mpay/oversea/OnCPTCallback;

    invoke-interface {p3, p1, p2}, Lcom/netease/mpay/oversea/OnCPTCallback;->onFailed(ILjava/lang/String;)V

    return-void
.end method
