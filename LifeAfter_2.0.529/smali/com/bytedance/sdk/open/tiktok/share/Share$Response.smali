.class public Lcom/bytedance/sdk/open/tiktok/share/Share$Response;
.super Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;
.source "Share.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/open/tiktok/share/Share;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public state:Ljava/lang/String;

.field public subErrorCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;-><init>()V

    .line 120
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/open/tiktok/share/Share$Response;->fromBundle(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public fromBundle(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    const-string v0, "_aweme_open_sdk_params_error_code"

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Response;->errorCode:I

    const-string v0, "_aweme_open_sdk_params_error_msg"

    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Response;->errorMsg:Ljava/lang/String;

    const-string v0, "_bytedance_params_extra"

    .line 133
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Response;->extras:Landroid/os/Bundle;

    const-string v0, "_aweme_open_sdk_params_state"

    .line 134
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Response;->state:Ljava/lang/String;

    const-string v0, "_aweme_open_sdk_params_sub_error_code"

    const/16 v1, -0x3e8

    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Response;->subErrorCode:I

    return-void
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    const-string v0, "_aweme_open_sdk_params_error_code"

    .line 142
    iget v1, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Response;->errorCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "_aweme_open_sdk_params_error_msg"

    .line 143
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Response;->errorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_aweme_open_sdk_params_type"

    .line 144
    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/share/Share$Response;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "_bytedance_params_extra"

    .line 145
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Response;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "_aweme_open_sdk_params_state"

    .line 146
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Response;->state:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_aweme_open_sdk_params_sub_error_code"

    .line 147
    iget v1, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Response;->subErrorCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
