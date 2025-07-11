.class public abstract Lcom/netease/androidcrashhandler/zip/BaseZip;
.super Ljava/lang/Object;
.source "BaseZip.java"


# instance fields
.field protected mCore:Lcom/netease/androidcrashhandler/zip/ZipCore;

.field protected mDiFileName:Ljava/lang/String;

.field protected mFileNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsLaunchMode:Z

.field protected mParamJson:Lorg/json/JSONObject;

.field protected mTargetDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/androidcrashhandler/zip/ZipCore;Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mFileNameList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mDiFileName:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mParamJson:Lorg/json/JSONObject;

    .line 21
    iput-object v0, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mCore:Lcom/netease/androidcrashhandler/zip/ZipCore;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mIsLaunchMode:Z

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mTargetDir:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mCore:Lcom/netease/androidcrashhandler/zip/ZipCore;

    .line 28
    iput-object p2, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mTargetDir:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/zip/ZipCore;->isIsAppLaunch()Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mIsLaunchMode:Z

    return-void
.end method

.method private checkAndRebuildDiFile()V
    .locals 6

    const-string v0, "trace"

    const-string v1, "ZipCore [checkAndRebuildDiFile] start"

    .line 220
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 221
    :goto_0
    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 222
    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ".di"

    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    iput-object v2, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mDiFileName:Ljava/lang/String;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mDiFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 231
    iget-boolean v1, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mIsLaunchMode:Z

    if-eqz v1, :cond_2

    .line 232
    sget-object v1, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->sPreFileName:Ljava/lang/String;

    goto :goto_1

    .line 234
    :cond_2
    sget-object v1, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->sCurFileName:Ljava/lang/String;

    .line 236
    :goto_1
    sget-object v2, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mCore:Lcom/netease/androidcrashhandler/zip/ZipCore;

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/zip/ZipCore;->getExtensionInfos()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "filter_pipe"

    invoke-static {v2, v1, v4, v3}, Lcom/netease/androidcrashhandler/util/CUtil;->addInfoToDiFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mTargetDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/CUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZipCore [checkAndRebuildDiFile] back up di file :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iput-object v1, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mDiFileName:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private cleanRelatedFile()V
    .locals 2

    const-string v0, "trace"

    const-string v1, "ZipCore [cleanRelatedFile] start"

    .line 174
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/netease/androidcrashhandler/init/InitProxy;->sOldUploadFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mTargetDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mFileNameList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/zip/ZipUtil;->deleteOldFileUploadPathFile(Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mTargetDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/util/CUtil;->deleteDir(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private connectTime()V
    .locals 5

    .line 143
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/zip/BaseZip;->actionTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/zip/BaseZip;->actionTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/netease/androidcrashhandler/zip/BaseZip;->updateCrashTimeToParamJson(J)V

    .line 145
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/zip/BaseZip;->actionTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mTargetDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mDiFileName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/androidcrashhandler/zip/ZipUtil;->updateCrashTimeToDi(JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private createUploadParamFile(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p2, :cond_4

    const-string v0, "signal"

    .line 185
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 190
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/zip/BaseZip;->getErrorType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_type"

    .line 191
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "UE_FATAL"

    .line 192
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const-string v3, "zip_upload_url"

    if-nez v1, :cond_2

    :try_start_1
    const-string v1, "ANDROID_NATIVE_ERROR"

    .line 193
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ANDROID_ANR"

    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 201
    :cond_1
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/androidcrashhandler/init/InitProxy;->getUploadUrl(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 195
    :cond_2
    :goto_0
    invoke-static {p2}, Lcom/netease/androidcrashhandler/util/CUtil;->checkConfigUnisecHardened(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/init/InitProxy;->getUploadUrl(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 198
    :cond_3
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/androidcrashhandler/init/InitProxy;->getUploadUrl(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    const-string v0, ".cfg"

    if-eqz p2, :cond_5

    .line 209
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 210
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netease/androidcrashhandler/util/CUtil;->str2File(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 213
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZipCore [createUploadParamFile] paramJson: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "trace"

    invoke-static {v1, p2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZipCore [createUploadParamFile] cfg file="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ZipCore [createUploadParamFile] finish"

    .line 216
    invoke-static {v1, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private preZip()Z
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mParamJson:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/zip/BaseZip;->checkAndRebuildDiFile()V

    .line 122
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/zip/BaseZip;->preOprate()V

    .line 124
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/zip/BaseZip;->checkEffective()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/zip/BaseZip;->connectFile()V

    .line 126
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/zip/BaseZip;->connectTime()V

    .line 128
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/zip/BaseZip;->afterOperate()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v0, "trace"

    const-string v2, "ZipCore [preZip] not match"

    .line 132
    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/zip/BaseZip;->cleanRelatedFile()V

    return v1
.end method


# virtual methods
.method protected abstract actionTime()J
.end method

.method public addDirFile(Ljava/lang/String;)V
    .locals 3

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 38
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/netease/androidcrashhandler/zip/BaseZip;->addFile(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addFile(Ljava/lang/String;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFileList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    invoke-virtual {p0, v0}, Lcom/netease/androidcrashhandler/zip/BaseZip;->addFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract afterOperate()V
.end method

.method public checkAndRebuildDiFile(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mDiFileName:Ljava/lang/String;

    return-void
.end method

.method protected abstract checkEffective()Z
.end method

.method protected abstract connectFile()V
.end method

.method public copyExternalFile(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netease/androidcrashhandler/zip/BaseZip;->needExternalFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mTargetDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZipCore [copyExternalFile] file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "trace"

    invoke-static {v3, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/CUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/androidcrashhandler/zip/BaseZip;->addFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected abstract getErrorType()Ljava/lang/String;
.end method

.method public getFileNameList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mFileNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getParamJson()Lorg/json/JSONObject;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mParamJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method protected abstract needExternalFile(Ljava/lang/String;)Z
.end method

.method protected abstract preOprate()V
.end method

.method public setParamJson(Lorg/json/JSONObject;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mParamJson:Lorg/json/JSONObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseZip mFileNameList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCrashTimeToParamJson(J)V
    .locals 3

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mParamJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "crash_time"

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ZipCore [updateCrashTimeToParamJson] Exception ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "trace"

    invoke-static {p2, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public zipFile()Ljava/lang/String;
    .locals 6

    const-string v0, "trace"

    const-string v1, ""

    .line 153
    :try_start_0
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/zip/BaseZip;->preZip()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    iget-object v3, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mTargetDir:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mFileNameList:Ljava/util/ArrayList;

    sget-object v5, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-static {v3, v4, v5, v2}, Lcom/netease/androidcrashhandler/zip/ZipUtil;->zip(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 159
    iget-object v3, p0, Lcom/netease/androidcrashhandler/zip/BaseZip;->mParamJson:Lorg/json/JSONObject;

    invoke-direct {p0, v2, v3}, Lcom/netease/androidcrashhandler/zip/BaseZip;->createUploadParamFile(Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object v1, v2

    :cond_0
    const-string v2, "ZipCore [zipFile] finish"

    .line 162
    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/zip/BaseZip;->cleanRelatedFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZipCore [zipFile] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v1
.end method
