.class Lcom/netease/mpay/oversea/MpayOverseaApi$m;
.super Ljava/lang/Object;
.source "MpayOverseaApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/MpayBindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/MpayOverseaApi;->bind(ILcom/netease/mpay/oversea/MpayBindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/MpayBindCallback;

.field final synthetic b:Lcom/netease/mpay/oversea/MpayOverseaApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/MpayBindCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$m;->b:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iput-object p2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$m;->a:Lcom/netease/mpay/oversea/MpayBindCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindSuccess(Lcom/netease/mpay/oversea/User;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$m;->b:Lcom/netease/mpay/oversea/MpayOverseaApi;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->f:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/s9;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$m;->a:Lcom/netease/mpay/oversea/MpayBindCallback;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/MpayBindCallback;->onBindSuccess(Lcom/netease/mpay/oversea/User;)V

    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$m;->a:Lcom/netease/mpay/oversea/MpayBindCallback;

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/oversea/MpayBindCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method public onUserLogout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$m;->a:Lcom/netease/mpay/oversea/MpayBindCallback;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/MpayBindCallback;->onUserLogout()V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/w3;->a()Lcom/netease/mpay/oversea/w3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/w3;->d()V

    return-void
.end method
