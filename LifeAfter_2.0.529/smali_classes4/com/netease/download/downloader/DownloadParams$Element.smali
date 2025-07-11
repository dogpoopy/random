.class public Lcom/netease/download/downloader/DownloadParams$Element;
.super Ljava/lang/Object;
.source "DownloadParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/download/downloader/DownloadParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Element"
.end annotation


# instance fields
.field public mElementFilePath:Ljava/lang/String;

.field public mElementLast:J

.field public mElementMd5:Ljava/lang/String;

.field public mElementStart:J

.field final synthetic this$0:Lcom/netease/download/downloader/DownloadParams;


# direct methods
.method public constructor <init>(Lcom/netease/download/downloader/DownloadParams;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 2

    .line 739
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams$Element;->this$0:Lcom/netease/download/downloader/DownloadParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 734
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams$Element;->mElementFilePath:Ljava/lang/String;

    const-wide/16 v0, -0x64

    .line 735
    iput-wide v0, p0, Lcom/netease/download/downloader/DownloadParams$Element;->mElementStart:J

    .line 736
    iput-wide v0, p0, Lcom/netease/download/downloader/DownloadParams$Element;->mElementLast:J

    .line 737
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams$Element;->mElementMd5:Ljava/lang/String;

    .line 740
    iput-object p2, p0, Lcom/netease/download/downloader/DownloadParams$Element;->mElementFilePath:Ljava/lang/String;

    .line 741
    iput-wide p3, p0, Lcom/netease/download/downloader/DownloadParams$Element;->mElementStart:J

    .line 742
    iput-wide p5, p0, Lcom/netease/download/downloader/DownloadParams$Element;->mElementLast:J

    .line 743
    iput-object p7, p0, Lcom/netease/download/downloader/DownloadParams$Element;->mElementMd5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getmElementFilePath()Ljava/lang/String;
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams$Element;->mElementFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getmElementLast()J
    .locals 2

    .line 763
    iget-wide v0, p0, Lcom/netease/download/downloader/DownloadParams$Element;->mElementLast:J

    return-wide v0
.end method

.method public getmElementMd5()Ljava/lang/String;
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams$Element;->mElementMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getmElementStart()J
    .locals 2

    .line 755
    iget-wide v0, p0, Lcom/netease/download/downloader/DownloadParams$Element;->mElementStart:J

    return-wide v0
.end method

.method public setmElementFilePath(Ljava/lang/String;)V
    .locals 0

    .line 751
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams$Element;->mElementFilePath:Ljava/lang/String;

    return-void
.end method

.method public setmElementLast(J)V
    .locals 0

    .line 767
    iput-wide p1, p0, Lcom/netease/download/downloader/DownloadParams$Element;->mElementLast:J

    return-void
.end method

.method public setmElementMd5(Ljava/lang/String;)V
    .locals 0

    .line 775
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams$Element;->mElementMd5:Ljava/lang/String;

    return-void
.end method

.method public setmElementStart(J)V
    .locals 0

    .line 759
    iput-wide p1, p0, Lcom/netease/download/downloader/DownloadParams$Element;->mElementStart:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mElementFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams$Element;->mElementFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mElementStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/download/downloader/DownloadParams$Element;->mElementStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mElementLast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/download/downloader/DownloadParams$Element;->mElementLast:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mElementMd5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams$Element;->mElementMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
