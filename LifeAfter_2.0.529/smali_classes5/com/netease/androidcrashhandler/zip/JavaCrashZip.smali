.class public Lcom/netease/androidcrashhandler/zip/JavaCrashZip;
.super Lcom/netease/androidcrashhandler/zip/BaseZip;
.source "JavaCrashZip.java"


# instance fields
.field private mCrashTime:J


# direct methods
.method public constructor <init>(Lcom/netease/androidcrashhandler/zip/ZipCore;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/netease/androidcrashhandler/zip/BaseZip;-><init>(Lcom/netease/androidcrashhandler/zip/ZipCore;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected actionTime()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/zip/JavaCrashZip;->mCrashTime:J

    return-wide v0
.end method

.method protected afterOperate()V
    .locals 0

    return-void
.end method

.method protected checkEffective()Z
    .locals 4

    .line 16
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/JavaCrashZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ".aci"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 19
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/netease/androidcrashhandler/zip/JavaCrashZip;->mTargetDir:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/netease/androidcrashhandler/zip/JavaCrashZip;->mCrashTime:J

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected connectFile()V
    .locals 0

    return-void
.end method

.method protected getErrorType()Ljava/lang/String;
    .locals 1

    const-string v0, "ANDROID_JAVA_EXCEPTION"

    return-object v0
.end method

.method protected needExternalFile(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected preOprate()V
    .locals 0

    return-void
.end method
