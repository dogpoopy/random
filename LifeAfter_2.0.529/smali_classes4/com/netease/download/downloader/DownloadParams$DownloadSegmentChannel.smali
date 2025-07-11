.class Lcom/netease/download/downloader/DownloadParams$DownloadSegmentChannel;
.super Ljava/lang/Object;
.source "DownloadParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/download/downloader/DownloadParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadSegmentChannel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/downloader/DownloadParams;

.field url:Ljava/lang/String;

.field weight:I


# direct methods
.method constructor <init>(Lcom/netease/download/downloader/DownloadParams;Ljava/lang/String;I)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams$DownloadSegmentChannel;->this$0:Lcom/netease/download/downloader/DownloadParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p2, p0, Lcom/netease/download/downloader/DownloadParams$DownloadSegmentChannel;->url:Ljava/lang/String;

    .line 185
    iput p3, p0, Lcom/netease/download/downloader/DownloadParams$DownloadSegmentChannel;->weight:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadSegmentChannel{, url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams$DownloadSegmentChannel;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/download/downloader/DownloadParams$DownloadSegmentChannel;->weight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
