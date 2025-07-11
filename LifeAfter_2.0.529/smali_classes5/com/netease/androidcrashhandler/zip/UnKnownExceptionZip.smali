.class public Lcom/netease/androidcrashhandler/zip/UnKnownExceptionZip;
.super Lcom/netease/androidcrashhandler/zip/BaseZip;
.source "UnKnownExceptionZip.java"


# instance fields
.field mErrorType:Ljava/lang/String;

.field mExitModule:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;


# direct methods
.method public constructor <init>(Lcom/netease/androidcrashhandler/zip/ZipCore;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/netease/androidcrashhandler/zip/BaseZip;-><init>(Lcom/netease/androidcrashhandler/zip/ZipCore;Ljava/lang/String;)V

    const-string p1, ""

    .line 10
    iput-object p1, p0, Lcom/netease/androidcrashhandler/zip/UnKnownExceptionZip;->mErrorType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected actionTime()J
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/UnKnownExceptionZip;->mExitModule:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget-wide v0, v0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->lastTime:J

    return-wide v0
.end method

.method protected afterOperate()V
    .locals 3

    .line 46
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/UnKnownExceptionZip;->mTargetDir:Ljava/lang/String;

    const-string v2, "app_exit.temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 48
    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/UnKnownExceptionZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/UnKnownExceptionZip;->mTargetDir:Ljava/lang/String;

    const-string v2, "CheckNormalExit.exc"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 51
    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/UnKnownExceptionZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected checkEffective()Z
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/UnKnownExceptionZip;->mFileNameList:Ljava/util/ArrayList;

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

    const-string v3, "CheckNormalExit.exc"

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    invoke-static {}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->getInstance()Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/androidcrashhandler/zip/UnKnownExceptionZip;->mTargetDir:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->buildUndefinedException(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/androidcrashhandler/zip/UnKnownExceptionZip;->mExitModule:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    .line 22
    iget-object v1, v1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->errorType:Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/androidcrashhandler/zip/UnKnownExceptionZip;->mErrorType:Ljava/lang/String;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected connectFile()V
    .locals 5

    .line 36
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/UnKnownExceptionZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->getInstance()Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/UnKnownExceptionZip;->mTargetDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/androidcrashhandler/zip/UnKnownExceptionZip;->mErrorType:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/androidcrashhandler/zip/UnKnownExceptionZip;->mExitModule:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    invoke-virtual {v1, v2, v3, v4}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->buildMainFile(Ljava/lang/String;Ljava/lang/String;Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected getErrorType()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/UnKnownExceptionZip;->mErrorType:Ljava/lang/String;

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
