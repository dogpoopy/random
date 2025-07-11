.class Lcom/netease/mpay/oversea/MpayOverseaApi$a;
.super Ljava/lang/Object;
.source "MpayOverseaApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/RefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/MpayOverseaApi;->refresh(Lcom/netease/mpay/oversea/RefreshCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/RefreshCallback;

.field final synthetic b:Lcom/netease/mpay/oversea/MpayOverseaApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/RefreshCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$a;->b:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iput-object p2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$a;->a:Lcom/netease/mpay/oversea/RefreshCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$a;->a:Lcom/netease/mpay/oversea/RefreshCallback;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/RefreshCallback;->onFailure()V

    return-void
.end method

.method public onLogout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$a;->a:Lcom/netease/mpay/oversea/RefreshCallback;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/RefreshCallback;->onLogout()V

    return-void
.end method

.method public onSuccess(Lcom/netease/mpay/oversea/User;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$a;->b:Lcom/netease/mpay/oversea/MpayOverseaApi;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->q:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/s9;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$a;->a:Lcom/netease/mpay/oversea/RefreshCallback;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/RefreshCallback;->onSuccess(Lcom/netease/mpay/oversea/User;)V

    return-void
.end method
