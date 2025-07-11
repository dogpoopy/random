.class public Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;
.super Ljava/lang/Object;
.source "AuthImpl.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mClientKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mActivity:Landroid/app/Activity;

    .line 19
    iput-object p2, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mClientKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public authorizeNative(Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 56
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->checkArgs()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 61
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->toBundle(Landroid/os/Bundle;)V

    const-string v2, "_bytedance_params_client_key"

    .line 63
    iget-object v3, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mClientKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_bytedance_params_type_caller_package"

    .line 64
    iget-object v3, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p1, p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->callerLocalEntry:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "_bytedance_params_from_entry"

    .line 66
    iget-object v2, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p4}, Lcom/bytedance/sdk/open/tiktok/utils/AppUtil;->buildComponentClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "_aweme_params_caller_open_sdk_name"

    .line 69
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_aweme_params_caller_open_sdk_version"

    .line 70
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 72
    new-instance p4, Landroid/content/ComponentName;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/open/tiktok/utils/AppUtil;->buildComponentClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p4, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 77
    :try_start_0
    iget-object p2, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mActivity:Landroid/app/Activity;

    const/16 p3, 0x64

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method public authorizeWeb(Ljava/lang/Class;Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 24
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->checkArgs()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 29
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 30
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->toBundle(Landroid/os/Bundle;)V

    const-string p2, "_bytedance_params_client_key"

    .line 31
    iget-object v2, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mClientKey:Ljava/lang/String;

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "_bytedance_params_type_caller_package"

    .line 32
    iget-object v2, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance p2, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {p2, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    invoke-virtual {p2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 37
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0

    :cond_2
    :goto_0
    return v0
.end method
