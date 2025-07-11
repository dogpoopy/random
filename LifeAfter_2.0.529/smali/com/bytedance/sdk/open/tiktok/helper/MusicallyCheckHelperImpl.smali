.class public Lcom/bytedance/sdk/open/tiktok/helper/MusicallyCheckHelperImpl;
.super Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;
.source "MusicallyCheckHelperImpl.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/open/tiktok/base/BaseCheckHelperImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getAuthRequestApi()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.zhiliaoapp.musically"

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "194326e82c84a639a52e5c023116f12a"

    return-object v0
.end method

.method public isShareSupportFileProvider()Z
    .locals 3

    .line 25
    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/helper/MusicallyCheckHelperImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/helper/MusicallyCheckHelperImpl;->getRemoteAuthEntryActivity()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/open/tiktok/helper/MusicallyCheckHelperImpl;->isAppSupportAPI(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
