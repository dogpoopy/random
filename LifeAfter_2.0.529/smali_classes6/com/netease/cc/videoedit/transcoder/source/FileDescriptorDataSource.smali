.class public Lcom/netease/cc/videoedit/transcoder/source/FileDescriptorDataSource;
.super Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;
.source "FileDescriptorDataSource.java"


# instance fields
.field private descriptor:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/source/FileDescriptorDataSource;->descriptor:Ljava/io/FileDescriptor;

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

    .line 25
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/FileDescriptorDataSource;->descriptor:Ljava/io/FileDescriptor;

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method protected applyRetriever(Landroid/media/MediaMetadataRetriever;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/FileDescriptorDataSource;->descriptor:Ljava/io/FileDescriptor;

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method
