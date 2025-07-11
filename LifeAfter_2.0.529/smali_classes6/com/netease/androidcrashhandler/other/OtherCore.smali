.class public Lcom/netease/androidcrashhandler/other/OtherCore;
.super Ljava/lang/Object;
.source "OtherCore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/other/OtherCore$StorageListener;,
        Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAIN_FILE:Ljava/lang/String; = "NTMAIN_"

.field private static final MINOR_FILE:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "OtherCore"


# instance fields
.field private mErrorType:Ljava/lang/String;

.field private mFileFeature:Ljava/lang/String;

.field private mMainFilePathMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMainInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMinorFilePathMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMinorInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageDir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mErrorType:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mFileFeature:Ljava/lang/String;

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mPackageDir:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mMainInfoMap:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mMainFilePathMap:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mMinorInfoMap:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mMinorFilePathMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/androidcrashhandler/other/OtherCore;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mPackageDir:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/netease/androidcrashhandler/other/OtherCore;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mPackageDir:Ljava/lang/String;

    return-object p1
.end method

.method private checkAndCutInfoToFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "trace"

    const-string v1, "OtherCore [checkAndCutInfoToFile] start"

    .line 95
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 102
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v1, v1

    .line 103
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getmFileLimit()I

    move-result v3

    mul-int/lit16 v3, v3, 0x400

    int-to-long v3, v3

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OtherCore [checkAndCutInfoToFile] fileByteLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", fileLimitSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    const-wide/16 v5, 0x6

    .line 109
    :try_start_0
    div-long v5, v3, v5

    sub-long v7, v3, v5

    sub-long/2addr v1, v7

    long-to-int v4, v3

    .line 112
    new-array v3, v4, [B

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    long-to-int v6, v5

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    long-to-int v2, v1

    long-to-int v1, v7

    invoke-static {v4, v2, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OtherCore [getSuitableFileInfo] Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object p1
.end method

.method private copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "trace"

    const-string v1, "OtherCore [copy] start"

    .line 74
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/androidcrashhandler/util/CUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "OtherCore [copy] result = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private storageAllRelatedFileToUploadFileDir(Lcom/netease/androidcrashhandler/other/OtherCore$StorageListener;)V
    .locals 6

    const-string v0, "trace"

    const-string v1, "OtherCore [storageAllRelatedFileToUploadFileDir] start"

    .line 210
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTHER_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 216
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 217
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/androidcrashhandler/other/OtherCore$1;

    invoke-direct {v5, p0, v2, v3}, Lcom/netease/androidcrashhandler/other/OtherCore$1;-><init>(Lcom/netease/androidcrashhandler/other/OtherCore;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    invoke-virtual {p0, v4, v5}, Lcom/netease/androidcrashhandler/other/OtherCore;->stroageMainFile(Ljava/lang/String;Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;)Z

    .line 230
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/androidcrashhandler/other/OtherCore$2;

    invoke-direct {v5, p0, v2, v3}, Lcom/netease/androidcrashhandler/other/OtherCore$2;-><init>(Lcom/netease/androidcrashhandler/other/OtherCore;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    invoke-virtual {p0, v4, v5}, Lcom/netease/androidcrashhandler/other/OtherCore;->stroageAssistFile(Ljava/lang/String;Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;)Z

    const-string v4, "attach_main_module_info"

    .line 241
    iget-object v5, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mFileFeature:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/androidcrashhandler/util/CUtil;->checkAndCopyUUIDFile(Ljava/lang/String;)Z

    .line 243
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/init/InitProxy;->isIsHardened()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 244
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->dumpUnisecDecodeFile(Ljava/lang/String;)V

    .line 248
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "copySuccessFilePath"

    .line 249
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "copyFailFilePath"

    .line 250
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x3

    .line 251
    invoke-static {v2, v4}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->callbackToUser(ILorg/json/JSONObject;)V

    .line 252
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/netease/androidcrashhandler/other/OtherCore$StorageListener;->onFinish(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 255
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OtherCore [storageFileOrFileInfoToUploadFileDir] Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private str2file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "trace"

    const-string v1, "OtherCore [str2file] start"

    .line 64
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p1, p2, p3}, Lcom/netease/androidcrashhandler/util/CUtil;->str2File(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "OtherCore [str2file] result = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method


# virtual methods
.method public addInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "trace"

    const-string v1, "OtherCore [addInfo] start"

    .line 275
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OtherCore [addInfo] minor file name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mMinorInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public addMainFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "trace"

    const-string v1, "OtherCore [addMainFile] start"

    .line 288
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NTMAIN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OtherCore [addMainFile] main file name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mMainFilePathMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public addMainInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "trace"

    const-string v1, "OtherCore [addMainInfo] start"

    .line 261
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NTMAIN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OtherCore [addMainInfo] main file name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mMainInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public addMinorFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "trace"

    const-string v1, "OtherCore [addMinorFile] start"

    .line 301
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OtherCore [addMinorFile] start srcFilePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mMinorFilePathMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public call()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 325
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 327
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->getInstance()Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->updateDiTimeToLocalFile()V

    .line 328
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->getInstance()Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->clean()V

    .line 329
    new-instance v0, Lcom/netease/androidcrashhandler/other/OtherCore$3;

    invoke-direct {v0, p0}, Lcom/netease/androidcrashhandler/other/OtherCore$3;-><init>(Lcom/netease/androidcrashhandler/other/OtherCore;)V

    invoke-direct {p0, v0}, Lcom/netease/androidcrashhandler/other/OtherCore;->storageAllRelatedFileToUploadFileDir(Lcom/netease/androidcrashhandler/other/OtherCore$StorageListener;)V

    .line 339
    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mMainInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mMainFilePathMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mPackageDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->getInstance()Lcom/netease/androidcrashhandler/zip/ZipProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mErrorType:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mPackageDir:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->zipAndUploadOtherFiles(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/other/OtherCore;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public copyFileFromMapToUploadFileDir(Ljava/lang/String;Ljava/util/HashMap;Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 131
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OtherCore [copyFileFromMapToUploadFileDir] mFilePathMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 135
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    invoke-direct {p0, v1, p1, v0}, Lcom/netease/androidcrashhandler/other/OtherCore;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 141
    invoke-interface {p3, v0, v1}, Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;->onFinish(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 144
    invoke-interface {p3, v0, v1}, Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;->onFinish(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public copyFileInfoFromMapToUploadFileDir(Ljava/lang/String;Ljava/util/HashMap;Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 151
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OtherCore [copyFileInfoFromMapToUploadFileDir] fileInfoMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 154
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 156
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    invoke-direct {p0, v1}, Lcom/netease/androidcrashhandler/other/OtherCore;->checkAndCutInfoToFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 162
    :try_start_0
    invoke-direct {p0, v1, p1, v0}, Lcom/netease/androidcrashhandler/other/OtherCore;->str2file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    invoke-interface {p3, v2, v0}, Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;->onFinish(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 166
    invoke-interface {p3, v1, v0}, Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;->onFinish(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 169
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    invoke-interface {p3, v2, v0}, Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;->onFinish(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setErrorType(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mErrorType:Ljava/lang/String;

    return-void
.end method

.method public setFileFeature(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mFileFeature:Ljava/lang/String;

    return-void
.end method

.method public stroageAssistFile(Ljava/lang/String;Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;)Z
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mMinorInfoMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mMinorFilePathMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/netease/androidcrashhandler/other/OtherCore;->stroageFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;)Z

    move-result p1

    return p1
.end method

.method public stroageFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;",
            ")Z"
        }
    .end annotation

    .line 180
    :try_start_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/netease/androidcrashhandler/other/OtherCore;->copyFileInfoFromMapToUploadFileDir(Ljava/lang/String;Ljava/util/HashMap;Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;)V

    .line 181
    invoke-virtual {p0, p1, p3, p4}, Lcom/netease/androidcrashhandler/other/OtherCore;->copyFileFromMapToUploadFileDir(Ljava/lang/String;Ljava/util/HashMap;Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 184
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public stroageMainFile(Ljava/lang/String;Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;)Z
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mMainInfoMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/other/OtherCore;->mMainFilePathMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/netease/androidcrashhandler/other/OtherCore;->stroageFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;)Z

    move-result p1

    return p1
.end method
