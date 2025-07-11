.class public Lcom/netease/cc/videoedit/transcoder/source/UriDataSource;
.super Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;
.source "UriDataSource.java"


# instance fields
.field private context:Landroid/content/Context;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/source/UriDataSource;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/netease/cc/videoedit/transcoder/source/UriDataSource;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected applyExtractor(Landroid/media/MediaExtractor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/UriDataSource;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/source/UriDataSource;->uri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method protected applyRetriever(Landroid/media/MediaMetadataRetriever;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/UriDataSource;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/source/UriDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
