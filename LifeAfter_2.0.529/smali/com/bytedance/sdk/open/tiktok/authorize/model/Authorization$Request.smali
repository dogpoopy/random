.class public Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;
.super Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;
.source "Authorization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field public clientKey:Ljava/lang/String;

.field public optionalScope0:Ljava/lang/String;

.field public optionalScope1:Ljava/lang/String;

.field public redirectUri:Ljava/lang/String;

.field public scope:Ljava/lang/String;

.field public state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->fromBundle(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;->fromBundle(Landroid/os/Bundle;)V

    const-string v0, "_bytedance_params_state"

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->state:Ljava/lang/String;

    const-string v0, "_bytedance_params_client_key"

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->clientKey:Ljava/lang/String;

    const-string v0, "_bytedance_params_redirect_uri"

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->redirectUri:Ljava/lang/String;

    const-string v0, "_bytedance_params_scope"

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->scope:Ljava/lang/String;

    const-string v0, "_bytedance_params_optional_scope0"

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->optionalScope0:Ljava/lang/String;

    const-string v0, "_bytedance_params_optional_scope1"

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->optionalScope1:Ljava/lang/String;

    return-void
.end method

.method public getClientKey()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->clientKey:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;->toBundle(Landroid/os/Bundle;)V

    const-string v0, "_bytedance_params_state"

    .line 55
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->state:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_bytedance_params_client_key"

    .line 56
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->clientKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_bytedance_params_redirect_uri"

    .line 57
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->redirectUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_bytedance_params_scope"

    .line 58
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->scope:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_bytedance_params_optional_scope0"

    .line 59
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->optionalScope0:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_bytedance_params_optional_scope1"

    .line 60
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->optionalScope1:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
