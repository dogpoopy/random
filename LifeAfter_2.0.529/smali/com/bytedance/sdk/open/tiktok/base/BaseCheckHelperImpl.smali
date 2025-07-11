.class public abstract Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;
.super Ljava/lang/Object;
.source "BaseCheckHelperImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isAppSupportAuthApi()Z
    .locals 3

    .line 65
    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->getRemoteAuthEntryActivity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->getAuthRequestApi()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->isAppSupportAPI(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isAppSupportShareApi(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 93
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->isAppSupportAPI(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected abstract getAuthRequestApi()I
.end method

.method public getPlatformSDKVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/open/tiktok/utils/AppUtil;->buildComponentClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 p2, 0x80

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 76
    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p2, :cond_1

    .line 77
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string p2, "BD_PLATFORM_SDK_VERSION"

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public getRemoteAuthEntryActivity()Ljava/lang/String;
    .locals 1

    const-string v0, "openauthorize.AwemeAuthorizedActivity"

    return-object v0
.end method

.method public abstract getSignature()Ljava/lang/String;
.end method

.method public isAppInstalled()Z
    .locals 3

    .line 104
    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->getRemoteAuthEntryActivity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->getAuthRequestApi()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->isAppSupportAPI(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isAppSupportAPI(I)Z
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->getRemoteAuthEntryActivity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->isAppSupportAPI(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isAppSupportAPI(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    new-instance v2, Landroid/content/ComponentName;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/open/tiktok/utils/AppUtil;->buildComponentClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 55
    iget-object v2, p0, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->getPlatformSDKVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_1

    .line 57
    iget-boolean p2, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz p2, :cond_1

    if-lt p1, p3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public isAppSupportAuthorization()Z
    .locals 3

    .line 27
    invoke-direct {p0}, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->isAppSupportAuthApi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/open/tiktok/utils/SignatureUtils;->validateSign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAppSupportShare()Z
    .locals 3

    .line 33
    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->getRemoteAuthEntryActivity()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;->isAppSupportShareApi(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
