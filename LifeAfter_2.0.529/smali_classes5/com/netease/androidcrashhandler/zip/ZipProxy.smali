.class public Lcom/netease/androidcrashhandler/zip/ZipProxy;
.super Ljava/lang/Object;
.source "ZipProxy.java"


# static fields
.field private static final mLock:[B

.field private static sReTryUploadTime:I = 0x5

.field private static sSleepTime:I = 0x927c0

.field private static sZipProxy:Lcom/netease/androidcrashhandler/zip/ZipProxy;


# instance fields
.field private mNotUploadZip:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadIngMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 30
    sput-object v0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mLock:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mUploadIngMap:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mNotUploadZip:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .line 26
    sget-object v0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mLock:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/netease/androidcrashhandler/zip/ZipProxy;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mNotUploadZip:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/androidcrashhandler/zip/ZipProxy;Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->submitUploadRequest(Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/netease/androidcrashhandler/zip/ZipProxy;ZLjava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->changeZipUploadStatus(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/androidcrashhandler/zip/ZipProxy;Lorg/json/JSONObject;ILjava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->callBack(Lorg/json/JSONObject;ILjava/lang/String;)V

    return-void
.end method

.method private callBack(Lorg/json/JSONObject;ILjava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "error_type"

    .line 204
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "transid"

    .line 205
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-static {p2, p3, p1, v0}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->createCallbackJson(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x7

    .line 208
    invoke-static {p2, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->callbackToUser(ILorg/json/JSONObject;)V

    .line 209
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;->getInstence()Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;->sendClientLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 211
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private changeZipUploadStatus(ZLjava/lang/String;)V
    .locals 5

    const-string v0, "trace"

    const-string v1, "ZipProxy [changeZipUploadStatus] start"

    .line 232
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "trace"

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZipProxy [changeZipUploadStatus] zipFileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mUploadIngMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mUploadIngMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 239
    :goto_0
    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mUploadIngMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mUploadIngMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "trace"

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZipProxy [removeUploadingTag] mUploadIngMap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mUploadIngMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mUploadIngMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-direct {p0, p1, v1, p2}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->retryUpload(ZILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 243
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private checkFileValid(Ljava/lang/String;)Z
    .locals 2

    .line 61
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {v0}, Lcom/netease/androidcrashhandler/zip/ZipUtil;->checkFileTimeValid(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/netease/androidcrashhandler/zip/ZipUtil;->checkFileSizeValid(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 64
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string p1, "trace"

    const-string v0, "ZipProxy [zipAndUploadOtherFilesSync] zip not pass"

    .line 65
    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private static createCallbackJson(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 216
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "code"

    .line 219
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "zipPath"

    .line 220
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "transid"

    .line 221
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "errorType"

    .line 222
    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 225
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/zip/ZipProxy;
    .locals 1

    .line 37
    sget-object v0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->sZipProxy:Lcom/netease/androidcrashhandler/zip/ZipProxy;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/netease/androidcrashhandler/zip/ZipProxy;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/zip/ZipProxy;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->sZipProxy:Lcom/netease/androidcrashhandler/zip/ZipProxy;

    .line 41
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->sZipProxy:Lcom/netease/androidcrashhandler/zip/ZipProxy;

    return-object v0
.end method

.method private retryUpload(ZILjava/lang/String;)V
    .locals 3

    const-string v0, "trace"

    if-nez p1, :cond_0

    .line 249
    sget p1, Lcom/netease/androidcrashhandler/zip/ZipProxy;->sReTryUploadTime:I

    if-ge p2, p1, :cond_0

    const-string p1, "ZipProxy [retryUpload] reTry"

    .line 250
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-static {p3}, Lcom/netease/androidcrashhandler/zip/ZipUtil;->getCfgFileContent(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 253
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZipProxy [retryUpload] reTry time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZipProxy [retryUpload] sleep :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/netease/androidcrashhandler/zip/ZipProxy;->sSleepTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/netease/androidcrashhandler/processCenter/RetryHandler;->getInstance()Lcom/netease/androidcrashhandler/processCenter/RetryHandler;

    move-result-object v0

    new-instance v1, Lcom/netease/androidcrashhandler/zip/ZipProxy$3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/netease/androidcrashhandler/zip/ZipProxy$3;-><init>(Lcom/netease/androidcrashhandler/zip/ZipProxy;Ljava/lang/String;Lorg/json/JSONObject;I)V

    sget p1, Lcom/netease/androidcrashhandler/zip/ZipProxy;->sSleepTime:I

    int-to-long p1, p1

    invoke-virtual {v0, v1, p1, p2}, Lcom/netease/androidcrashhandler/processCenter/RetryHandler;->sendRetryTaskDelay(Lcom/netease/androidcrashhandler/processCenter/RetryHandler$RetryTask;J)V

    goto :goto_0

    :cond_0
    const-string p1, "ZipProxy [retryUpload] cancel reTry"

    .line 267
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private submitUploadRequest(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 4

    .line 180
    new-instance v0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;

    invoke-direct {v0, p1, p2}, Lcom/netease/androidcrashhandler/net/UploadZipRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 181
    new-instance v1, Lcom/netease/androidcrashhandler/zip/ZipProxy$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/androidcrashhandler/zip/ZipProxy$2;-><init>(Lcom/netease/androidcrashhandler/zip/ZipProxy;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->registerRequestCallback(Lcom/netease/androidcrashhandler/net/RequestCallback;)V

    .line 189
    iget-object p2, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mUploadIngMap:Ljava/util/HashMap;

    monitor-enter p2

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mUploadIngMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trace"

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZipProxy [submitUploadRequest] zipfileName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", \u8be5zip\u5305\u8fd8\u6ca1\u4e0a\u4f20\uff0c\u8fdb\u5165\u4e0a\u4f20\u73af\u8282"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->getInstances()Lcom/netease/androidcrashhandler/processCenter/TaskProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->put(Ljava/util/concurrent/Callable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mUploadIngMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p3, "trace"

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZipProxy [submitUploadRequest] zipfileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", \u8be5zip\u6b63\u5728\u4e0a\u4f20\u4e2d\uff0c\u65e0\u6cd5\u540c\u4e00\u65f6\u523b\u91cd\u590d\u4e0a\u4f20"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_1
    :goto_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private upload(Ljava/lang/String;)V
    .locals 1

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p0, v0}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->sendZipToUpload(Ljava/util/List;)V

    return-void
.end method

.method private zipOtherFilesSync(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 51
    new-instance v0, Lcom/netease/androidcrashhandler/zip/ZipCore;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/zip/ZipCore;-><init>()V

    .line 52
    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/zip/ZipCore;->setErrorType(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 53
    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/zip/ZipCore;->setIsAppLaunch(Z)V

    .line 54
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->getInstance()Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->getResult()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/zip/ZipCore;->setExtensionInfos(Lorg/json/JSONObject;)V

    .line 55
    invoke-virtual {v0, p2}, Lcom/netease/androidcrashhandler/zip/ZipCore;->setPackagePath(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, p2}, Lcom/netease/androidcrashhandler/zip/ZipCore;->zipOtherTask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public declared-synchronized dispatch()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "trace"

    const-string v1, "ZipProxy [dispatch] start"

    .line 141
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->getInstances()Lcom/netease/androidcrashhandler/processCenter/TaskProxy;

    move-result-object v0

    new-instance v1, Lcom/netease/androidcrashhandler/zip/ZipProxy$1;

    invoke-direct {v1, p0}, Lcom/netease/androidcrashhandler/zip/ZipProxy$1;-><init>(Lcom/netease/androidcrashhandler/zip/ZipProxy;)V

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->put(Ljava/util/concurrent/Callable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public lunchZipAsync()V
    .locals 2

    const-string v0, "trace"

    const-string v1, "ZipProxy [lunchZipAndDispatch] start"

    .line 98
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/netease/androidcrashhandler/zip/ZipCore;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/zip/ZipCore;-><init>()V

    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/zip/ZipCore;->setErrorType(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 101
    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/zip/ZipCore;->setIsAppLaunch(Z)V

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/zip/ZipCore;->setAutoUpload(Z)V

    .line 103
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->getInstance()Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->getResult()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/zip/ZipCore;->setExtensionInfos(Lorg/json/JSONObject;)V

    .line 104
    invoke-static {}, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->getInstances()Lcom/netease/androidcrashhandler/processCenter/TaskProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->put(Ljava/util/concurrent/Callable;)Z

    return-void
.end method

.method public sendZipToUpload(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/netease/androidcrashhandler/zip/ZipUtil;->checkNetAndAgreement()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    sget-object v0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mLock:[B

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mNotUploadZip:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mNotUploadZip:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mNotUploadZip:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 116
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/androidcrashhandler/zip/ZipUtil;->getCfgFileContent(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->submitUploadRequest(Ljava/lang/String;Lorg/json/JSONObject;I)V

    goto :goto_1

    :cond_2
    const-string v0, "trace"

    const-string v2, "ZipProxy [dispatch] param\u6587\u4ef6\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u751f\u6210config\u6587\u4ef6\uff0c\u76f4\u63a5\u5220\u9664\u8be5zip\u5305"

    .line 125
    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 116
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 130
    :cond_3
    sget-object v0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mLock:[B

    monitor-enter v0

    .line 131
    :try_start_2
    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mNotUploadZip:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    monitor-exit v0

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public zipAndUploadOtherFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "trace"

    const-string v1, "ZipProxy [zipAndUploadOtherFilesSync] start"

    .line 83
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->zipOtherFilesSync(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 88
    invoke-direct {p0, p1}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->checkFileValid(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 89
    invoke-direct {p0, p1}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->upload(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
