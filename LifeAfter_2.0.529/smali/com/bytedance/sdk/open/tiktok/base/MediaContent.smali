.class public Lcom/bytedance/sdk/open/tiktok/base/MediaContent;
.super Ljava/lang/Object;
.source "MediaContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/open/tiktok/base/MediaContent$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AWEME.SDK.MediaContent"


# instance fields
.field public mMediaObject:Lcom/bytedance/sdk/open/tiktok/base/IMediaObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/open/tiktok/base/IMediaObject;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bytedance/sdk/open/tiktok/base/MediaContent;->mMediaObject:Lcom/bytedance/sdk/open/tiktok/base/IMediaObject;

    return-void
.end method


# virtual methods
.method public final checkArgs()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/base/MediaContent;->mMediaObject:Lcom/bytedance/sdk/open/tiktok/base/IMediaObject;

    invoke-interface {v0}, Lcom/bytedance/sdk/open/tiktok/base/IMediaObject;->checkArgs()Z

    move-result v0

    return v0
.end method

.method public final getType()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/base/MediaContent;->mMediaObject:Lcom/bytedance/sdk/open/tiktok/base/IMediaObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/open/tiktok/base/IMediaObject;->type()I

    move-result v0

    :goto_0
    return v0
.end method
