.class public abstract Lcom/bytedance/sdk/open/tiktok/TikTokConfig;
.super Ljava/lang/Object;
.source "TikTokConfig.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/open/tiktok/TikTokConfig$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/bytedance/sdk/open/tiktok/TikTokConfig$Builder;
    .locals 1

    .line 13
    new-instance v0, Lcom/bytedance/sdk/open/tiktok/AutoValue_TikTokConfig$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/open/tiktok/AutoValue_TikTokConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getClientKey()Ljava/lang/String;
.end method
