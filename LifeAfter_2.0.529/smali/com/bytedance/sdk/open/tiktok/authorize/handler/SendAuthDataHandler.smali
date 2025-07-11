.class public Lcom/bytedance/sdk/open/tiktok/authorize/handler/SendAuthDataHandler;
.super Ljava/lang/Object;
.source "SendAuthDataHandler.java"

# interfaces
.implements Lcom/bytedance/sdk/open/tiktok/common/handler/IDataHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(ILandroid/os/Bundle;Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 21
    new-instance p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;-><init>(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p1}, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->checkArgs()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 24
    iget-object p2, p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->scope:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 25
    iget-object p2, p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->scope:Ljava/lang/String;

    const-string v0, " "

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->scope:Ljava/lang/String;

    .line 27
    :cond_1
    iget-object p2, p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->optionalScope1:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 28
    iget-object p2, p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->optionalScope1:Ljava/lang/String;

    const-string v0, " "

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->optionalScope1:Ljava/lang/String;

    .line 30
    :cond_2
    iget-object p2, p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->optionalScope0:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 31
    iget-object p2, p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->optionalScope0:Ljava/lang/String;

    const-string v0, " "

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->optionalScope0:Ljava/lang/String;

    .line 33
    :cond_3
    invoke-interface {p3, p1}, Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;->onReq(Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;)V

    return v1

    :cond_4
    return v0

    :cond_5
    const/4 v2, 0x2

    if-ne p1, v2, :cond_7

    .line 39
    new-instance p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;-><init>(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p1}, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;->checkArgs()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 41
    invoke-interface {p3, p1}, Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;->onResp(Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;)V

    return v1

    :cond_6
    return v0

    :cond_7
    return v0

    :cond_8
    :goto_0
    return v0
.end method
