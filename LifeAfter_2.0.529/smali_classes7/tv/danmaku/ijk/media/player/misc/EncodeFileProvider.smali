.class public Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider;
.super Ljava/lang/Object;
.source "EncodeFileProvider.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider$EncodeFileCallback;
    }
.end annotation


# instance fields
.field private callback:Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider$EncodeFileCallback;

.field private mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider$EncodeFileCallback;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider;->mFile:Ljava/io/File;

    .line 12
    iput-object p2, p0, Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider;->callback:Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider$EncodeFileCallback;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider;->callback:Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider$EncodeFileCallback;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider$EncodeFileCallback;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider;->mFile:Ljava/io/File;

    return-void
.end method

.method public getSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider;->callback:Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider$EncodeFileCallback;

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider;->mFile:Ljava/io/File;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider$EncodeFileCallback;->getSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 6

    .line 17
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider;->callback:Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider$EncodeFileCallback;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ltv/danmaku/ijk/media/player/misc/EncodeFileProvider$EncodeFileCallback;->read(J[BII)I

    move-result p1

    return p1
.end method
