.class public abstract Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;
.super Ljava/lang/Object;
.source "BaseReq.java"


# instance fields
.field public callerLocalEntry:Ljava/lang/String;

.field public callerPackage:Ljava/lang/String;

.field public callerVersion:Ljava/lang/String;

.field public extras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_bytedance_params_type_caller_package"

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;->callerPackage:Ljava/lang/String;

    const-string v0, "__bytedance_base_caller_version"

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;->callerVersion:Ljava/lang/String;

    const-string v0, "_bytedance_params_extra"

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;->extras:Landroid/os/Bundle;

    const-string v0, "_bytedance_params_from_entry"

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;->callerLocalEntry:Ljava/lang/String;

    return-void
.end method

.method public getCallerLocalEntry()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;->callerLocalEntry:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerPackage()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;->callerPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerVersion()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;->callerVersion:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "_bytedance_params_type"

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "_bytedance_params_extra"

    .line 62
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "_bytedance_params_from_entry"

    .line 63
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;->callerLocalEntry:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_aweme_params_caller_open_sdk_common_name"

    const-string v1, "opensdk-oversea-external"

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_aweme_params_caller_open_sdk_common_version"

    const-string v1, "0.2.0.2"

    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
