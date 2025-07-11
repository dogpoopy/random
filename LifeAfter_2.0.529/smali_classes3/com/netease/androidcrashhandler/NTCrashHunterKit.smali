.class public Lcom/netease/androidcrashhandler/NTCrashHunterKit;
.super Ljava/lang/Object;
.source "NTCrashHunterKit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CrashHunterProxy"

.field private static mIsStart:Z = false

.field public static mIsThroughUserAgreement:Z = true

.field private static sProxy:Lcom/netease/androidcrashhandler/NTCrashHunterKit;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

.field private mHasStartCrashhunterBottomHalf:Z

.field private mIPrePostCallBack:Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;

.field private mIsInit:Z

.field private mJavaCrashCallBack:Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;

.field private mLastTimeParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

.field private mNTEventOccurCallBack:Lcom/netease/androidcrashhandler/callback/NTEventOccurCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mContext:Landroid/content/Context;

    .line 48
    iput-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mLastTimeParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    .line 50
    iput-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mIsInit:Z

    .line 59
    iput-boolean v1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mHasStartCrashhunterBottomHalf:Z

    .line 65
    iput-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mIPrePostCallBack:Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;

    .line 67
    iput-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mJavaCrashCallBack:Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;

    .line 69
    iput-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mNTEventOccurCallBack:Lcom/netease/androidcrashhandler/callback/NTEventOccurCallBack;

    return-void
.end method

.method private checkLastTimeEventByType(I)Z
    .locals 19

    move/from16 v0, p1

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrashHunterProxy [checkLastTimeEventByType] start type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trace"

    invoke-static {v2, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    const-string v3, "CheckNormalExit.temp"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v7, :cond_2

    if-eq v0, v5, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    new-array v8, v7, [Ljava/lang/String;

    aput-object v3, v8, v6

    goto :goto_0

    :cond_1
    new-array v8, v7, [Ljava/lang/String;

    const-string v9, ".trace"

    aput-object v9, v8, v6

    goto :goto_0

    :cond_2
    new-array v8, v7, [Ljava/lang/String;

    const-string v9, ".dmp"

    aput-object v9, v8, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v11, p0

    goto/16 :goto_8

    :cond_3
    :try_start_1
    new-array v8, v7, [Ljava/lang/String;

    const-string v9, ".aci"

    aput-object v9, v8, v6

    :goto_0
    const-string v9, "CrashHunterProxy [checkLastTimeEventByType]  path check"

    .line 692
    invoke-static {v2, v9}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    new-instance v10, Lcom/netease/androidcrashhandler/NTCrashHunterKit$3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 v11, p0

    :try_start_2
    invoke-direct {v10, v11, v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit$3;-><init>(Lcom/netease/androidcrashhandler/NTCrashHunterKit;I)V

    invoke-virtual {v9, v10}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const-string v10, ".anr"

    const-string v12, "3"

    const-string v13, "signal"

    if-eqz v9, :cond_c

    .line 710
    :try_start_3
    array-length v14, v9

    if-lez v14, :cond_c

    .line 711
    array-length v14, v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_1
    if-ge v15, v14, :cond_d

    :try_start_4
    aget-object v17, v9, v15

    .line 712
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/netease/androidcrashhandler/util/CUtil;->isContainSpecialFile([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 713
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CrashHunterProxy [isContainSpecialFile]  ret: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " path:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_9

    if-eqz v0, :cond_8

    if-eq v0, v7, :cond_7

    if-eq v0, v5, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    move-object/from16 v18, v3

    goto/16 :goto_4

    .line 726
    :cond_4
    invoke-static {}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->getInstance()Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->buildUndefinedException(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    move-result-object v4

    .line 727
    invoke-static {}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->getInstance()Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->checkUndefinedException(Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 729
    new-instance v1, Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v3

    const-string v3, "CheckNormalExit.exc"

    invoke-direct {v7, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-virtual {v1, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 732
    invoke-static {}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->getInstance()Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->setLastTimeDir(Ljava/lang/String;)V

    .line 733
    invoke-static {}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->getInstance()Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;

    move-result-object v1

    iget-object v3, v4, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->errorType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->setLastTimeErrorType(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object/from16 v18, v3

    :goto_2
    move v4, v6

    goto :goto_4

    :cond_6
    move-object/from16 v18, v3

    .line 723
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;->getInstance()Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;->setAnrLastTimeFileName(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    move-object/from16 v18, v3

    .line 720
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setLastTimeCrashDir(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move-object/from16 v18, v3

    .line 717
    invoke-static {}, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->getInstance()Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->setLastTimeCrashDir(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    move-object/from16 v18, v3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 739
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getmLastTimeParamsInfo()Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 740
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;->getmParamsJson()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_b

    .line 741
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v3, v1

    .line 742
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/androidcrashhandler/util/CUtil;->isContainSpecialFile([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    :cond_b
    :goto_4
    or-int v16, v16, v4

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v18

    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_c
    const/16 v16, 0x0

    :cond_d
    const-string v1, "CrashHunterProxy [checkLastTimeEventByType] old path check"

    .line 749
    invoke-static {v2, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    sget-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sOldUploadFilePath:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/netease/androidcrashhandler/util/CUtil;->isContainSpecialFile([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_f

    if-nez v1, :cond_f

    .line 752
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getmLastTimeParamsInfo()Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 753
    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;->getmParamsJson()Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_5

    :cond_e
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_f

    .line 754
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v0, v1

    .line 755
    sget-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sOldUploadFilePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/CUtil;->isContainSpecialFile([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_f
    or-int v0, v16, v1

    goto :goto_9

    :catchall_2
    move-exception v0

    move/from16 v6, v16

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v11, p0

    :goto_6
    const/4 v1, 0x0

    :goto_7
    const/4 v6, 0x0

    .line 760
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CrashHunterProxy [checkLastTimeEventByType] err:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 763
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CrashHunterProxy [checkLastTimeEventByType] finish ret:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private createCurrentParamsInfo()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    :cond_0
    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [createCurrentParamsInfo] [\u7528\u6237\u534f\u8bae\u524d] \u6784\u5efa\u5f53\u6b21\u542f\u52a8\u53c2\u6570\u6587\u4ef6"

    .line 133
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;->writeToLocalFile()V

    return-void
.end method

.method private createOtherCore(Lcom/netease/androidcrashhandler/other/NTAssociatedFile;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/netease/androidcrashhandler/other/OtherCore;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/androidcrashhandler/other/NTAssociatedFile;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/androidcrashhandler/other/NTAssociatedFile;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/netease/androidcrashhandler/other/OtherCore;"
        }
    .end annotation

    .line 478
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->getSrcFilePath()Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->getSrcContent()Ljava/lang/String;

    move-result-object v1

    .line 480
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->getDesFileName()Ljava/lang/String;

    move-result-object v2

    .line 481
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->getFileFeature()Ljava/lang/String;

    .line 482
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CrashHunterProxy [postFile] mainFileSrcPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mainFileDesName ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mainFileSrcContent isEmpty ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "trace"

    invoke-static {v4, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 486
    :cond_1
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "copySuccessFilePath"

    .line 487
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 488
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 489
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 490
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "null"

    .line 491
    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 493
    :cond_2
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 496
    :cond_3
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_0
    const-string p3, "copyFailFilePath"

    .line 498
    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p2, 0x3

    .line 499
    invoke-static {p2, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->callbackToUser(ILorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 p1, 0x0

    return-object p1

    .line 505
    :cond_4
    new-instance v3, Lcom/netease/androidcrashhandler/other/OtherCore;

    invoke-direct {v3}, Lcom/netease/androidcrashhandler/other/OtherCore;-><init>()V

    .line 506
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 507
    invoke-virtual {v3, v0, v2}, Lcom/netease/androidcrashhandler/other/OtherCore;->addMainFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 509
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 510
    invoke-virtual {v3, v1, v2}, Lcom/netease/androidcrashhandler/other/OtherCore;->addMainInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    if-eqz p2, :cond_b

    .line 513
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 514
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;

    .line 515
    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->getSrcFilePath()Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->getSrcContent()Ljava/lang/String;

    move-result-object v2

    .line 517
    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->getDesFileName()Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_2

    .line 523
    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 524
    invoke-virtual {v3, v1, v0}, Lcom/netease/androidcrashhandler/other/OtherCore;->addMinorFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 526
    :cond_a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 527
    invoke-virtual {v3, v2, v0}, Lcom/netease/androidcrashhandler/other/OtherCore;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 532
    :cond_b
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 533
    invoke-virtual {v3, p3}, Lcom/netease/androidcrashhandler/other/OtherCore;->setErrorType(Ljava/lang/String;)V

    .line 536
    :cond_c
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->getFileFeature()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_d

    .line 537
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->getFileFeature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/netease/androidcrashhandler/other/OtherCore;->setFileFeature(Ljava/lang/String;)V

    :cond_d
    return-object v3
.end method

.method public static handleException(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [handleException] start"

    .line 882
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-static {}, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->getInstance()Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->handleException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private sendLastTimeExceptionEvent()V
    .locals 3

    .line 895
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->isLastTimeCrash()Z

    move-result v0

    const-string v1, "file_path"

    if-eqz v0, :cond_0

    .line 897
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 898
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getLastTimeCrashDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v1, 0xa

    .line 899
    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->callbackToUser(ILorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 901
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 904
    :cond_0
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->isLastTimeUndefinedException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 906
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 907
    invoke-static {}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->getInstance()Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->getLastTimeDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "category"

    .line 908
    invoke-static {}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->getInstance()Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->getLastTimeErrorType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v1, 0xc

    .line 909
    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->callbackToUser(ILorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 911
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;
    .locals 1

    .line 78
    sget-object v0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sProxy:Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sProxy:Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    .line 82
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sProxy:Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    return-object v0
.end method

.method private startAllMonitor()V
    .locals 3

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [startAllMonitor] ANR\u76d1\u63a7\u673a\u5236\u542f\u52a8"

    .line 141
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;->getInstance()Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;->start()V

    const-string v1, "CrashHunterProxy [startAllMonitor] Java\u5d29\u6e83\u6355\u6349\u673a\u5236\u542f\u52a8"

    .line 148
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->getInstance()Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mJavaCrashCallBack:Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->setJavaCrashCallBack(Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;)V

    .line 155
    invoke-static {}, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->getInstance()Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->start()V

    const-string v1, "CrashHunterProxy [startAllMonitor] Native\u5d29\u6e83\u6355\u6349\u673a\u5236\u542f\u52a8"

    .line 161
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    sget-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setLogFilePath(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->start(Landroid/content/Context;)V

    return-void
.end method

.method private storageLastTimeParamsInfo()V
    .locals 2

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [storageLastTimeParamsInfo] [\u7528\u6237\u534f\u8bae\u524d] \u5c06\u4e0a\u6b21\u542f\u52a8\u7684\u53c2\u6570\u6587\u4ef6\u8bfb\u53d6\u5230mLastTimeParamsInfo"

    .line 114
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mLastTimeParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    if-nez v1, :cond_0

    .line 116
    new-instance v1, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-direct {v1}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;-><init>()V

    iput-object v1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mLastTimeParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    .line 117
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;->getParamFromLoaclFile()V

    const-string v1, "CrashHunterProxy [storageLastTimeParamsInfo] [\u7528\u6237\u534f\u8bae\u524d] \u5220\u9664\u4e0a\u6b21\u542f\u52a8\u7684\u53c2\u6570\u6587\u4ef6"

    .line 120
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mLastTimeParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;->deleteParamFile()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addExtensionInfo(Lorg/json/JSONObject;)V
    .locals 1

    .line 655
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->getInstance()Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->addExtensionInfo(Lorg/json/JSONObject;)V

    return-void
.end method

.method public addFiles(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/androidcrashhandler/other/NTAssociatedFile;",
            ">;)V"
        }
    .end annotation

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [addFiles] start"

    .line 584
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    const-string v1, "copyFailFilePath"

    const-string v2, "copySuccessFilePath"

    if-eqz p1, :cond_7

    .line 585
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 596
    :cond_0
    new-instance v3, Lcom/netease/androidcrashhandler/other/OtherCore;

    invoke-direct {v3}, Lcom/netease/androidcrashhandler/other/OtherCore;-><init>()V

    .line 598
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;

    .line 599
    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->getSrcFilePath()Ljava/lang/String;

    move-result-object v5

    .line 600
    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->getSrcContent()Ljava/lang/String;

    move-result-object v6

    .line 601
    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->getDesFileName()Ljava/lang/String;

    move-result-object v4

    .line 603
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 607
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 608
    invoke-virtual {v3, v5, v4}, Lcom/netease/androidcrashhandler/other/OtherCore;->addMinorFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 610
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 611
    invoke-virtual {v3, v6, v4}, Lcom/netease/androidcrashhandler/other/OtherCore;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 615
    :cond_5
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 616
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 617
    sget-object v5, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    .line 619
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 621
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 622
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 623
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 624
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->callbackToUser(ILorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    .line 630
    :cond_6
    new-instance v6, Lcom/netease/androidcrashhandler/NTCrashHunterKit$2;

    invoke-direct {v6, p0, p1, v4}, Lcom/netease/androidcrashhandler/NTCrashHunterKit$2;-><init>(Lcom/netease/androidcrashhandler/NTCrashHunterKit;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    invoke-virtual {v3, v5, v6}, Lcom/netease/androidcrashhandler/other/OtherCore;->stroageAssistFile(Ljava/lang/String;Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;)Z

    .line 642
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 643
    invoke-virtual {v3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 645
    invoke-static {v0, v3}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->callbackToUser(ILorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void

    .line 587
    :cond_7
    :goto_1
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 588
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 589
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 590
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->callbackToUser(ILorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getNTEventOccurCallBack()Lcom/netease/androidcrashhandler/callback/NTEventOccurCallBack;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mNTEventOccurCallBack:Lcom/netease/androidcrashhandler/callback/NTEventOccurCallBack;

    return-object v0
.end method

.method public getSoBuildId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [getSoBuildId] start"

    .line 859
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrashHunterProxy [getSoBuildId] soPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getSoBuildId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUploadFileDir()Ljava/lang/String;
    .locals 2

    .line 664
    sget-object v0, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    .line 666
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getmCurrentParamsInfo()Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    return-object v0
.end method

.method public getmLastTimeParamsInfo()Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mLastTimeParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [init] start"

    .line 87
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->checkContainLogFile(Landroid/content/Context;)Z

    .line 90
    iget-boolean v1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mIsInit:Z

    if-eqz v1, :cond_0

    const-string p1, "CrashHunterProxy [init] \u5df2\u7ecf\u521d\u59cb\u5316\uff0c\u65e0\u9700\u91cd\u65b0\u521d\u59cb\u5316"

    .line 91
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 95
    iput-boolean v1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mIsInit:Z

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {}, Lcom/netease/androidcrashhandler/util/LogUtils;->checkDebug()V

    .line 99
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/init/InitProxy;->init(Landroid/content/Context;)V

    .line 100
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->storageLastTimeParamsInfo()V

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrashHunterProxy [handleParamsInfo] [\u7528\u6237\u534f\u8bae\u524d] mLastTimeParamsInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mLastTimeParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p1}, Lcom/netease/androidcrashhandler/thirdparty/deviceInfoModule/DeviceInfoProxy;->initDeviceInfoModule(Landroid/content/Context;)V

    .line 103
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->getInstence()Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->initLifecycle(Landroid/content/Context;)V

    .line 104
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;->getInstence()Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;->addModuleCallback()V

    .line 105
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;->getInstence()Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;

    move-result-object p1

    const-string v1, "call method: [init]"

    invoke-virtual {p1, v1}, Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;->sendClientLog(Ljava/lang/String;)V

    const-string p1, "CrashHunterProxy [init] finish"

    .line 107
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initWithFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/other/NTAssociatedFile;
    .locals 2

    .line 454
    new-instance v0, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;

    const-string v1, ""

    invoke-direct {v0, p3, p2, p1, v1}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public initWithFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/other/NTAssociatedFile;
    .locals 1

    .line 468
    new-instance v0, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;

    invoke-direct {v0, p3, p2, p1, p4}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "obfu"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 471
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->getInstance()Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->addObfuFileName(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public isInit()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mIsInit:Z

    return v0
.end method

.method public isLastTimeAnr()Z
    .locals 5

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [isLastTimeAnr] start"

    .line 801
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/init/InitProxy;->getIsLastTimeAnr()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 806
    invoke-direct {p0, v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->checkLastTimeEventByType(I)Z

    move-result v1

    .line 807
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CrashHunterProxy [isLastTimeAnr] result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 810
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/androidcrashhandler/init/InitProxy;->setIsLastTimeAnr(I)V

    goto :goto_0

    .line 813
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/netease/androidcrashhandler/init/InitProxy;->setIsLastTimeAnr(I)V

    :goto_0
    move v2, v1

    goto :goto_1

    .line 817
    :cond_1
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/init/InitProxy;->getIsLastTimeAnr()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 820
    :cond_2
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/init/InitProxy;->getIsLastTimeAnr()I

    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public isLastTimeCrash()Z
    .locals 5

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [isLastTimeCrash] start"

    .line 771
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/init/InitProxy;->getIsLastTimeCrash()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 776
    invoke-direct {p0, v2}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->checkLastTimeEventByType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v3}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->checkLastTimeEventByType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 777
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CrashHunterProxy [isLastTimeCrash] result="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 780
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netease/androidcrashhandler/init/InitProxy;->setIsLastTimeCrash(I)V

    goto :goto_0

    .line 783
    :cond_2
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/init/InitProxy;->setIsLastTimeCrash(I)V

    goto :goto_0

    .line 786
    :cond_3
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/init/InitProxy;->getIsLastTimeCrash()I

    move-result v0

    if-ne v0, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    .line 789
    :cond_4
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/init/InitProxy;->getIsLastTimeCrash()I

    :goto_0
    return v2
.end method

.method public isLastTimeUndefinedException()Z
    .locals 5

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [isLastTimeUnknownException] start"

    .line 828
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/init/InitProxy;->getIsLastTimeUnKnownException()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    .line 833
    invoke-direct {p0, v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->checkLastTimeEventByType(I)Z

    move-result v1

    .line 834
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CrashHunterProxy [isLastTimeUnknownException] result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 837
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/androidcrashhandler/init/InitProxy;->setIsLastTimeUnKnownException(I)V

    goto :goto_0

    .line 840
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/netease/androidcrashhandler/init/InitProxy;->setIsLastTimeUnKnownException(I)V

    :goto_0
    move v2, v1

    goto :goto_1

    .line 844
    :cond_1
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/init/InitProxy;->getIsLastTimeUnKnownException()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 847
    :cond_2
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/init/InitProxy;->getIsLastTimeUnKnownException()I

    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public isOpenBreakpad(Z)V
    .locals 1

    .line 855
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/init/InitProxy;->setmIsOpenBreakpad(Z)V

    return-void
.end method

.method public postFile(Lcom/netease/androidcrashhandler/other/NTAssociatedFile;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/androidcrashhandler/other/NTAssociatedFile;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/androidcrashhandler/other/NTAssociatedFile;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [postFile] start"

    .line 553
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    const-string v1, "copyFailFilePath"

    const-string v2, "copySuccessFilePath"

    if-eqz p1, :cond_2

    .line 554
    iget-object v3, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    goto :goto_0

    .line 565
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->createOtherCore(Lcom/netease/androidcrashhandler/other/NTAssociatedFile;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/netease/androidcrashhandler/other/OtherCore;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 568
    invoke-static {}, Lcom/netease/androidcrashhandler/other/OtherProxy;->getInstance()Lcom/netease/androidcrashhandler/other/OtherProxy;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/netease/androidcrashhandler/other/OtherProxy;->put(Lcom/netease/androidcrashhandler/other/OtherCore;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 571
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 572
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    .line 573
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->getDesFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 574
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 575
    invoke-virtual {p2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 576
    invoke-static {v0, p2}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->callbackToUser(ILorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void

    .line 556
    :cond_2
    :goto_0
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 557
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 558
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->callbackToUser(ILorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method public registerMemoryAdvice(Landroid/app/Activity;)V
    .locals 1

    .line 891
    invoke-static {}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->getInstance()Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->initMemoryAdvice(Landroid/content/Context;)V

    return-void
.end method

.method public safelyBindCondition(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTCrashHunterKit [safelyBindCondition] key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;->addTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public safelyUnbindCondition(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTCrashHunterKit [safelyUnbindCondition] key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;->removeTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setBranch(Ljava/lang/String;)V
    .locals 2

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTCrashHunterKit [setBranch] branch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    const-string v1, "branch"

    invoke-virtual {v0, v1, p1}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;->addTag(Ljava/lang/String;Ljava/lang/String;)Z

    .line 368
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/init/InitProxy;->setmBranch(Ljava/lang/String;)V

    return-void
.end method

.method public setDiFreshTimeInterval(IZ)V
    .locals 1

    .line 878
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->getInstance()Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->setDiFreshTimeInterval(IZ)V

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 3

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [setHost] start"

    .line 436
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrashHunterProxy [setHost] host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "CrashHunterProxy [setHost] param error"

    .line 440
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 443
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/init/InitProxy;->setHost(Ljava/lang/String;)V

    return-void
.end method

.method public setIPrePostCallBack(Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mIPrePostCallBack:Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;

    return-void
.end method

.method public setJavaCrashCallBack(Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mJavaCrashCallBack:Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;

    return-void
.end method

.method public setNTEventOccurCallBack(Lcom/netease/androidcrashhandler/callback/NTEventOccurCallBack;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mNTEventOccurCallBack:Lcom/netease/androidcrashhandler/callback/NTEventOccurCallBack;

    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 309
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    .line 313
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "client_v"

    .line 315
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "engine_version"

    const-string v2, "res_version"

    if-eqz v0, :cond_1

    .line 316
    invoke-static {p2}, Lcom/netease/androidcrashhandler/util/CUtil;->checkAndReset(Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/init/InitProxy;->getResVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/init/InitProxy;->getEngineVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 320
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/androidcrashhandler/init/InitProxy;->setResVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/androidcrashhandler/init/InitProxy;->setEngineVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "procotol_state"

    .line 326
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 327
    iget-object p1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mContext:Landroid/content/Context;

    const-string v1, "crashhunter"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 328
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "2"

    .line 329
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v1, :cond_4

    .line 330
    sput-boolean v3, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mIsThroughUserAgreement:Z

    :cond_4
    const-string v1, "1"

    .line 332
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 333
    sput-boolean v2, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mIsThroughUserAgreement:Z

    .line 334
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    return-void

    :cond_6
    const-string v0, "target_thread"

    .line 337
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 338
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    if-le v0, v2, :cond_7

    .line 341
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->enableNativeStackTrace()V

    goto :goto_0

    .line 343
    :cond_7
    new-instance v0, Lcom/netease/androidcrashhandler/NTCrashHunterKit$1;

    invoke-direct {v0, p0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit$1;-><init>(Lcom/netease/androidcrashhandler/NTCrashHunterKit;)V

    invoke-static {v0}, Lcom/netease/androidcrashhandler/util/CUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 351
    :cond_8
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->disableNativeStackTrace()V

    goto :goto_0

    :cond_9
    const-string v0, "eb"

    .line 353
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 354
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/androidcrashhandler/init/InitProxy;->setEB(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const-string v0, "project"

    .line 355
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 356
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/androidcrashhandler/init/InitProxy;->setProject(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const-string v0, "signal_block"

    .line 357
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 358
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setDetectSignal(Z)V

    .line 362
    :cond_c
    :goto_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSoParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CrashHunterProxy [setSoParam] key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "callback_so_path"

    .line 398
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/netease/androidcrashhandler/init/InitProxy;->setCallbackSoPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "callback_method_name"

    .line 401
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 402
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/netease/androidcrashhandler/init/InitProxy;->setCallbackMethodName(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p1, "CrashHunterProxy [setSoParam] param error"

    .line 394
    invoke-static {v1, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    const-string p1, "trace"

    const-string v0, "CrashHunterProxy [setUrl] Deprecated"

    .line 432
    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startHuntingCrash()V
    .locals 5

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [startHuntingCrash] [\u7528\u6237\u534f\u8bae\u524d] start"

    .line 168
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;->getInstence()Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;

    move-result-object v1

    const-string v2, "call method: [startHuntingCrash]"

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;->sendClientLog(Ljava/lang/String;)V

    .line 172
    sget-boolean v1, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mIsStart:Z

    if-eqz v1, :cond_0

    const-string v1, "CrashHunterProxy [startHuntingCrash] [\u7528\u6237\u534f\u8bae\u524d] \u5df2\u7ecf\u542f\u52a8\uff0c\u65e0\u9700\u91cd\u65b0\u542f\u52a8"

    .line 173
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 177
    sput-boolean v1, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mIsStart:Z

    .line 179
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/config/ConfigCore;->readLocalConfig()V

    .line 181
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->getInstance()Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->init(Landroid/content/Context;)V

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrashHunterProxy [startHuntingCrash] [\u7528\u6237\u534f\u8bae\u524d] ismEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/config/ConfigCore;->ismEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/config/ConfigCore;->ismEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 190
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->createCurrentParamsInfo()V

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrashHunterProxy [handleParamsInfo] [\u7528\u6237\u534f\u8bae\u524d] mCurrentParamsInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mCurrentParamsInfo:Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->getInstances()Lcom/netease/androidcrashhandler/processCenter/TaskProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->start()V

    .line 195
    invoke-static {}, Lcom/netease/androidcrashhandler/other/OtherProxy;->getInstance()Lcom/netease/androidcrashhandler/other/OtherProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/other/OtherProxy;->start()V

    .line 201
    iget-object v1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mIPrePostCallBack:Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;

    if-eqz v1, :cond_1

    const-string v1, "CrashHunterProxy [start_t] [\u7528\u6237\u534f\u8bae\u524d] \u542f\u52a8\u540e\uff0c\u5728\u538b\u7f29\u4e0a\u4f20\u524d\uff0c\u56de\u8c03\u7528\u6237\u65b9\u6cd5"

    .line 202
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mIPrePostCallBack:Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;

    invoke-interface {v1}, Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;->prePostHandle()V

    :cond_1
    const-string v1, "CrashHunterProxy [start_t] [\u7528\u6237\u534f\u8bae\u524d] \u5c06\u6563\u6587\u4ef6\u5c01\u88c5\u6210zip\u5165\u961f\u5217"

    .line 207
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    const-string v3, "UniTrace.log_temp"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    const-string v4, "UniTrace.log"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 218
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sendLastTimeExceptionEvent()V

    .line 222
    invoke-static {}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->getInstance()Lcom/netease/androidcrashhandler/zip/ZipProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->lunchZipAsync()V

    .line 227
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->getInstance()Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->freshPreUserAgreement()V

    .line 233
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->startAllMonitor()V

    .line 237
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getUnisecVersion()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "harden_version"

    .line 239
    invoke-virtual {p0, v2, v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getUnisecRandomOpen()Z

    move-result v1

    .line 241
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netease/androidcrashhandler/init/InitProxy;->setIsHardened(Z)V

    .line 242
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_hardened"

    invoke-virtual {p0, v2, v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hardened_by"

    const-string v2, "unisec"

    .line 243
    invoke-virtual {p0, v1, v2}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_2
    sget-boolean v1, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mIsThroughUserAgreement:Z

    if-eqz v1, :cond_3

    .line 247
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->throughUserAgreement()V

    :cond_3
    const-string v1, "CrashHunterProxy [startHuntingCrash] [\u7528\u6237\u534f\u8bae\u524d] finish"

    .line 251
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized throughUserAgreement()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [throughUserAgreement] start"

    .line 261
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mHasStartCrashhunterBottomHalf:Z

    if-nez v0, :cond_0

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [throughUserAgreement] \u5df2\u540c\u610f\u7528\u6237\u534f\u8bae\uff0c\u542f\u52a8crashhunter\u540e\u534a\u90e8"

    .line 264
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mHasStartCrashhunterBottomHalf:Z

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [throughUserAgreement] start"

    .line 267
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;->getInstence()Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;

    move-result-object v0

    const-string v1, "pass user agreement"

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;->sendClientLog(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/androidcrashhandler/thirdparty/deviceInfoModule/DeviceInfoProxy;->getUniqueData(Landroid/content/Context;)V

    .line 276
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/init/InitProxy;->initAfterThroughUserAgreement(Landroid/content/Context;)V

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [throughUserAgreement] \u914d\u7f6e\u6587\u4ef6\u6a21\u5757\u542f\u52a8"

    .line 280
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/config/ConfigCore;->fresh()V

    const-string v0, "trace"

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrashHunterProxy [throughUserAgreement] start, enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/config/ConfigCore;->ismEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->getInstance()Lcom/netease/androidcrashhandler/zip/ZipProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->dispatch()V

    .line 293
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/config/ConfigCore;->ismEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [throughUserAgreement] di\u6587\u4ef6\u6a21\u5757\u542f\u52a8"

    .line 294
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->getInstance()Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->start()V

    goto :goto_0

    :cond_0
    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [throughUserAgreement] \u5df2\u542f\u52a8crashhunter\u540e\u534a\u90e8\uff0c\u65e0\u9700\u91cd\u590d\u542f\u52a8"

    .line 300
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unseal(Landroid/content/Context;)I
    .locals 1

    const-string p1, "trace"

    const-string v0, "CrashHunterProxy [unseal] not support"

    .line 865
    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method
