.class public Lcom/netease/mpay/oversea/thirdapi/WeChatEntryActivity;
.super Landroid/app/Activity;
.source "WeChatEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# instance fields
.field private a:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h9;->b()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h9;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :catchall_0
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/ec;->c(Landroid/view/Window;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :catchall_1
    :try_start_2
    invoke-static {}, Lcom/netease/mpay/oversea/thirdapi/v$d;->b()Lcom/netease/mpay/oversea/thirdapi/v$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/thirdapi/v$d;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/WeChatEntryActivity;->a:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 17
    invoke-static {}, Lcom/netease/mpay/oversea/thirdapi/v$d;->b()Lcom/netease/mpay/oversea/thirdapi/v$d;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/thirdapi/v$d;->a(I)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 21
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 0

    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 3

    const-string v0, "onResp"

    .line 1
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 4
    :try_start_0
    check-cast p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;

    .line 5
    iget-object v1, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->state:Ljava/lang/String;

    .line 6
    new-instance v2, Lcom/netease/mpay/oversea/thirdapi/v$c;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/thirdapi/v$c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/thirdapi/v$c;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-static {}, Lcom/netease/mpay/oversea/thirdapi/v$d;->b()Lcom/netease/mpay/oversea/thirdapi/v$d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/thirdapi/v$d;->a(I)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    :cond_0
    iget v1, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->errCode:I

    if-nez v1, :cond_1

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 14
    invoke-static {}, Lcom/netease/mpay/oversea/thirdapi/v$d;->b()Lcom/netease/mpay/oversea/thirdapi/v$d;

    move-result-object v1

    iget-object p1, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/netease/mpay/oversea/thirdapi/v$d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 17
    invoke-static {}, Lcom/netease/mpay/oversea/thirdapi/v$d;->b()Lcom/netease/mpay/oversea/thirdapi/v$d;

    move-result-object v1

    iget p1, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->errCode:I

    invoke-virtual {v1, p1}, Lcom/netease/mpay/oversea/thirdapi/v$d;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    invoke-static {}, Lcom/netease/mpay/oversea/thirdapi/v$d;->b()Lcom/netease/mpay/oversea/thirdapi/v$d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/thirdapi/v$d;->a(I)V

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
