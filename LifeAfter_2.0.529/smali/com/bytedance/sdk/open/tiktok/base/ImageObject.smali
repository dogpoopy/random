.class public Lcom/bytedance/sdk/open/tiktok/base/ImageObject;
.super Ljava/lang/Object;
.source "ImageObject.java"

# interfaces
.implements Lcom/bytedance/sdk/open/tiktok/base/IMediaObject;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageObject"


# instance fields
.field public mImagePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/base/ImageObject;->mImagePaths:Ljava/util/ArrayList;

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/base/ImageObject;->mImagePaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "AWEME_EXTRA_IMAGE_MESSAGE_PATH"

    .line 25
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/base/ImageObject;->mImagePaths:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "AWEME_EXTRA_IMAGE_MESSAGE_PATH"

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/open/tiktok/base/ImageObject;->mImagePaths:Ljava/util/ArrayList;

    return-void
.end method
