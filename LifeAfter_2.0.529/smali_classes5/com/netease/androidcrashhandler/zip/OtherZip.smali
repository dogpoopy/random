.class public Lcom/netease/androidcrashhandler/zip/OtherZip;
.super Lcom/netease/androidcrashhandler/zip/BaseZip;
.source "OtherZip.java"


# instance fields
.field private mCrashTime:J

.field private mMainFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/androidcrashhandler/zip/ZipCore;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/netease/androidcrashhandler/zip/BaseZip;-><init>(Lcom/netease/androidcrashhandler/zip/ZipCore;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected actionTime()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/zip/OtherZip;->mCrashTime:J

    return-wide v0
.end method

.method protected afterOperate()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/OtherZip;->mCore:Lcom/netease/androidcrashhandler/zip/ZipCore;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/zip/ZipCore;->getErrorType()Ljava/lang/String;

    return-void
.end method

.method protected checkEffective()Z
    .locals 5

    .line 19
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/OtherZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "NTMAIN_"

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/netease/androidcrashhandler/zip/OtherZip;->mTargetDir:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/netease/androidcrashhandler/zip/OtherZip;->mCrashTime:J

    const/4 v1, 0x1

    .line 23
    iput-object v2, p0, Lcom/netease/androidcrashhandler/zip/OtherZip;->mMainFileName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected connectFile()V
    .locals 0

    return-void
.end method

.method protected getErrorType()Ljava/lang/String;
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/OtherZip;->mCore:Lcom/netease/androidcrashhandler/zip/ZipCore;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/zip/ZipCore;->getErrorType()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "OTHER"

    if-eqz v1, :cond_3

    .line 62
    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/OtherZip;->mMainFileName:Ljava/lang/String;

    const-string v3, ".other"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, v2

    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/OtherZip;->mMainFileName:Ljava/lang/String;

    const-string v3, ".script"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "SCRIPT_ERROR"

    goto :goto_0

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/OtherZip;->mMainFileName:Ljava/lang/String;

    const-string v3, ".u3d"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "U3D_ERROR"

    :cond_3
    :goto_0
    return-object v0
.end method

.method protected needExternalFile(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "UniTrace.log"

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected preOprate()V
    .locals 0

    return-void
.end method
