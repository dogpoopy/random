.class public Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;
.super Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;
.source "FilePathDataSource.java"


# static fields
.field private static final LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDescriptorSource:Lcom/netease/cc/videoedit/transcoder/source/FileDescriptorDataSource;

.field private final mPath:Ljava/lang/String;

.field private mStream:Ljava/io/FileInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-class v0, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;->mPath:Ljava/lang/String;

    return-void
.end method

.method private ensureDescriptorSource()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;->mDescriptorSource:Lcom/netease/cc/videoedit/transcoder/source/FileDescriptorDataSource;

    if-nez v0, :cond_0

    .line 39
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;->mStream:Ljava/io/FileInputStream;

    .line 40
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/source/FileDescriptorDataSource;

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;->mStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/source/FileDescriptorDataSource;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;->mDescriptorSource:Lcom/netease/cc/videoedit/transcoder/source/FileDescriptorDataSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {p0}, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;->release()V

    .line 43
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected applyExtractor(Landroid/media/MediaExtractor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;->ensureDescriptorSource()V

    .line 51
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;->mDescriptorSource:Lcom/netease/cc/videoedit/transcoder/source/FileDescriptorDataSource;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/source/FileDescriptorDataSource;->applyExtractor(Landroid/media/MediaExtractor;)V

    return-void
.end method

.method protected applyRetriever(Landroid/media/MediaMetadataRetriever;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;->ensureDescriptorSource()V

    .line 57
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;->mDescriptorSource:Lcom/netease/cc/videoedit/transcoder/source/FileDescriptorDataSource;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/source/FileDescriptorDataSource;->applyRetriever(Landroid/media/MediaMetadataRetriever;)V

    return-void
.end method

.method protected release()V
    .locals 3

    .line 62
    invoke-super {p0}, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->release()V

    .line 63
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;->mDescriptorSource:Lcom/netease/cc/videoedit/transcoder/source/FileDescriptorDataSource;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/netease/cc/videoedit/transcoder/source/FileDescriptorDataSource;->release()V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;->mStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_1

    .line 68
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    sget-object v1, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    const-string v2, "Can\'t close input stream: "

    invoke-virtual {v1, v2, v0}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public rewind()V
    .locals 1

    .line 77
    invoke-super {p0}, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->rewind()V

    .line 80
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;->mDescriptorSource:Lcom/netease/cc/videoedit/transcoder/source/FileDescriptorDataSource;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/netease/cc/videoedit/transcoder/source/FileDescriptorDataSource;->release()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;->mStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_1

    .line 85
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;->mDescriptorSource:Lcom/netease/cc/videoedit/transcoder/source/FileDescriptorDataSource;

    .line 89
    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;->mStream:Ljava/io/FileInputStream;

    return-void
.end method
