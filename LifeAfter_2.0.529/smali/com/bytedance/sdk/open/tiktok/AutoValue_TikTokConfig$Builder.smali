.class final Lcom/bytedance/sdk/open/tiktok/AutoValue_TikTokConfig$Builder;
.super Lcom/bytedance/sdk/open/tiktok/TikTokConfig$Builder;
.source "AutoValue_TikTokConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/open/tiktok/AutoValue_TikTokConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private clientKey:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/bytedance/sdk/open/tiktok/TikTokConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/bytedance/sdk/open/tiktok/TikTokConfig;
    .locals 4

    const-string v0, ""

    .line 60
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/AutoValue_TikTokConfig$Builder;->clientKey:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " clientKey"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    new-instance v0, Lcom/bytedance/sdk/open/tiktok/AutoValue_TikTokConfig;

    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/AutoValue_TikTokConfig$Builder;->clientKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/open/tiktok/AutoValue_TikTokConfig;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/open/tiktok/AutoValue_TikTokConfig$1;)V

    return-object v0

    .line 64
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clientKey(Ljava/lang/String;)Lcom/bytedance/sdk/open/tiktok/TikTokConfig$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 54
    iput-object p1, p0, Lcom/bytedance/sdk/open/tiktok/AutoValue_TikTokConfig$Builder;->clientKey:Ljava/lang/String;

    return-object p0

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null clientKey"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
