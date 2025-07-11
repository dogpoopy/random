.class public Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;
.super Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;
.source "Authorization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public authCode:Ljava/lang/String;

.field public grantedPermissions:Ljava/lang/String;

.field public state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;-><init>()V

    .line 74
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;->fromBundle(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;->fromBundle(Landroid/os/Bundle;)V

    const-string v0, "_bytedance_params_authcode"

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;->authCode:Ljava/lang/String;

    const-string v0, "_bytedance_params_state"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;->state:Ljava/lang/String;

    const-string v0, "_bytedance_params_granted_permission"

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;->grantedPermissions:Ljava/lang/String;

    return-void
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;->toBundle(Landroid/os/Bundle;)V

    const-string v0, "_bytedance_params_authcode"

    .line 94
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;->authCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_bytedance_params_state"

    .line 95
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;->state:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_bytedance_params_granted_permission"

    .line 96
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;->grantedPermissions:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
