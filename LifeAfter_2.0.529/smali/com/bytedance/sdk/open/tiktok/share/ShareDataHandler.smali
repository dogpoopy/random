.class public Lcom/bytedance/sdk/open/tiktok/share/ShareDataHandler;
.super Ljava/lang/Object;
.source "ShareDataHandler.java"

# interfaces
.implements Lcom/bytedance/sdk/open/tiktok/common/handler/IDataHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(ILandroid/os/Bundle;Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    .line 19
    new-instance p1, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;-><init>(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p1}, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->checkArgs()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 21
    invoke-interface {p3, p1}, Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;->onReq(Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;)V

    return v2

    :cond_1
    return v0

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 27
    new-instance p1, Lcom/bytedance/sdk/open/tiktok/share/Share$Response;

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/open/tiktok/share/Share$Response;-><init>(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p1}, Lcom/bytedance/sdk/open/tiktok/share/Share$Response;->checkArgs()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 29
    invoke-interface {p3, p1}, Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;->onResp(Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;)V

    return v2

    :cond_3
    return v0

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v0
.end method
