.class public Lcom/bytedance/sdk/open/tiktok/TikTokOpenApiFactory;
.super Ljava/lang/Object;
.source "TikTokOpenApiFactory.java"


# static fields
.field private static sConfig:Lcom/bytedance/sdk/open/tiktok/TikTokOpenConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/app/Activity;)Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;
    .locals 3

    .line 30
    sget-object v0, Lcom/bytedance/sdk/open/tiktok/TikTokOpenApiFactory;->sConfig:Lcom/bytedance/sdk/open/tiktok/TikTokOpenConfig;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_0
    new-instance v1, Lcom/bytedance/sdk/open/tiktok/share/ShareImpl;

    iget-object v0, v0, Lcom/bytedance/sdk/open/tiktok/TikTokOpenConfig;->clientKey:Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/open/tiktok/share/ShareImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;

    sget-object v2, Lcom/bytedance/sdk/open/tiktok/TikTokOpenApiFactory;->sConfig:Lcom/bytedance/sdk/open/tiktok/TikTokOpenConfig;

    iget-object v2, v2, Lcom/bytedance/sdk/open/tiktok/TikTokOpenConfig;->clientKey:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 35
    new-instance v2, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;

    invoke-direct {v2, p0, v0, v1}, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;Lcom/bytedance/sdk/open/tiktok/share/ShareImpl;)V

    return-object v2
.end method

.method public static init(Lcom/bytedance/sdk/open/tiktok/TikTokOpenConfig;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/TikTokOpenConfig;->clientKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    sput-object p0, Lcom/bytedance/sdk/open/tiktok/TikTokOpenApiFactory;->sConfig:Lcom/bytedance/sdk/open/tiktok/TikTokOpenConfig;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
