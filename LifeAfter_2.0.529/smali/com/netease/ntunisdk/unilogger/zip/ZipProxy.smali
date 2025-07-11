.class public Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;
.super Ljava/lang/Object;
.source "ZipProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$ZipResult;
    }
.end annotation


# static fields
.field private static zipProxy:Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;


# instance fields
.field private expire:I

.field private fileLimit:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 24
    iput v0, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;->expire:I

    const-wide/32 v0, 0xa00000

    .line 25
    iput-wide v0, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;->fileLimit:J

    return-void
.end method

.method private fileMatch(Ljava/io/File;)Z
    .locals 3

    .line 263
    iget v0, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;->expire:I

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->fileDateMatch(Ljava/io/File;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;->fileLimit:J

    invoke-static {p1, v0, v1}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->fileSizeMatch(Ljava/io/File;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 267
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadProxy [fileMatch] result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    return v0
.end method

.method public static getInstance()Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;
    .locals 1

    .line 38
    sget-object v0, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;->zipProxy:Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;

    invoke-direct {v0}, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;->zipProxy:Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;

    .line 42
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;->zipProxy:Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;

    return-object v0
.end method

.method private getNeedZipFileList(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    .line 233
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 237
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ".zip"

    .line 238
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 242
    :cond_2
    invoke-static {v1}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->getFileCreatorByFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZipProxy [getNeedZipFileList] creator="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 245
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 247
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v3}, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;->fileMatch(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 248
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZipProxy [getNeedZipFileList] delete filepath="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method


# virtual methods
.method public declared-synchronized init(IJ)V
    .locals 2

    monitor-enter p0

    .line 46
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/unilogger/zip/ZipCore;->getInstance()Lcom/netease/ntunisdk/unilogger/zip/ZipCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/unilogger/zip/ZipCore;->start()V

    .line 47
    iput p1, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;->expire:I

    const-wide/16 v0, 0x400

    mul-long p2, p2, v0

    .line 48
    iput-wide p2, p0, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;->fileLimit:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized zipFileListInOtherThread(Ljava/util/ArrayList;ZZLjava/lang/String;Lcom/netease/ntunisdk/unilogger/zip/ZipCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/unilogger/zip/ZipCallBack;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 164
    :try_start_0
    new-instance v0, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;

    invoke-direct {v0, p1, p2, p3}, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;-><init>(Ljava/util/ArrayList;ZZ)V

    .line 165
    invoke-virtual {v0, p5}, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;->setZipCallBack(Lcom/netease/ntunisdk/unilogger/zip/ZipCallBack;)V

    .line 166
    invoke-virtual {v0, p4}, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;->setZipDirPath(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/netease/ntunisdk/unilogger/zip/ZipCore;->getInstance()Lcom/netease/ntunisdk/unilogger/zip/ZipCore;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/unilogger/zip/ZipCore;->addZipUnitToQueue(Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public zipFileListInSameList(Ljava/util/ArrayList;ZZLjava/lang/String;)Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$ZipResult;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;ZZ",
            "Ljava/lang/String;",
            ")",
            "Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$ZipResult;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 53
    new-instance v3, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$ZipResult;

    invoke-direct {v3, v1}, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$ZipResult;-><init>(Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;)V

    const/4 v4, 0x0

    if-eqz v2, :cond_10

    .line 57
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_e

    :cond_0
    const/16 v0, 0x2000

    new-array v0, v0, [B

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 70
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object v10, v5

    move-object v11, v10

    :goto_0
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    if-eqz v12, :cond_a

    .line 71
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v13

    cmp-long v15, v6, v13

    if-ltz v15, :cond_1

    goto/16 :goto_8

    :cond_1
    if-eqz p2, :cond_2

    .line 75
    iget v13, v1, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;->expire:I

    invoke-static {v12, v13}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->fileDateMatch(Ljava/io/File;I)Z

    move-result v13

    if-nez v13, :cond_2

    goto/16 :goto_8

    :cond_2
    if-eqz p3, :cond_3

    .line 80
    iget-wide v13, v1, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;->fileLimit:J

    invoke-static {v12, v13, v14}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->fileSizeMatch(Ljava/io/File;J)Z

    move-result v13

    if-nez v13, :cond_3

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    :goto_1
    if-nez v5, :cond_5

    .line 85
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    move-object/from16 v5, p4

    .line 90
    :cond_4
    new-instance v10, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ".zip"

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 91
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 92
    new-instance v8, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v8, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v11, v10

    move-object v10, v5

    move-object v5, v8

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v5, v10

    goto/16 :goto_a

    :cond_5
    move-object/from16 v16, v9

    .line 95
    :goto_2
    :try_start_3
    new-instance v8, Ljava/util/zip/ZipEntry;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x8

    .line 96
    invoke-virtual {v8, v9}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 97
    invoke-virtual {v5, v8}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 99
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v13, :cond_7

    .line 102
    :goto_3
    :try_start_4
    invoke-virtual {v8, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_6

    .line 103
    invoke-virtual {v5, v0, v4, v9}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :cond_6
    move-object v15, v5

    move-object/from16 v17, v10

    move-object/from16 v21, v11

    goto/16 :goto_6

    .line 107
    :cond_7
    :try_start_5
    iget-wide v13, v1, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;->fileLimit:J

    const-wide/16 v17, 0x6

    div-long v6, v13, v17

    sub-long/2addr v13, v6

    move-object/from16 v17, v5

    .line 110
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 112
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ZipProxy [zipFileList] startSize="

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", endSize="

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", fileSize="

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    const-wide/16 v19, 0x0

    .line 114
    :goto_4
    invoke-virtual {v8, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-lez v9, :cond_9

    move-object v12, v10

    move-object/from16 v21, v11

    int-to-long v10, v9

    add-long v19, v19, v10

    cmp-long v22, v19, v6

    if-gez v22, :cond_8

    move-object/from16 v15, v17

    move-object/from16 v17, v12

    const/4 v12, 0x0

    .line 117
    :try_start_6
    invoke-virtual {v15, v0, v12, v9}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    move-object/from16 v10, v17

    move-object/from16 v11, v21

    :goto_5
    move-object/from16 v17, v15

    goto :goto_4

    :cond_8
    move-object/from16 v15, v17

    move-object/from16 v17, v12

    const/4 v12, 0x0

    sub-long v19, v19, v6

    sub-long v10, v10, v19

    long-to-int v6, v10

    .line 120
    invoke-virtual {v15, v0, v12, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 121
    iget-wide v6, v1, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;->fileLimit:J

    sub-long v6, v4, v6

    sub-long v6, v6, v19

    invoke-virtual {v8, v6, v7}, Ljava/io/FileInputStream;->skip(J)J

    move-wide v6, v13

    move-object/from16 v10, v17

    move-object/from16 v11, v21

    const-wide/16 v19, 0x0

    goto :goto_5

    :cond_9
    move-object/from16 v21, v11

    move-object/from16 v15, v17

    move-object/from16 v17, v10

    .line 128
    :goto_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 130
    invoke-virtual {v15}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object v5, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v21

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v21, v11

    :goto_7
    move-object/from16 v5, v21

    goto :goto_a

    :cond_a
    :goto_8
    move-object/from16 v16, v9

    move-object/from16 v9, v16

    :goto_9
    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    goto/16 :goto_0

    :cond_b
    if-eqz v5, :cond_c

    .line 134
    :try_start_7
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 135
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_c
    const/16 v18, 0x1

    goto :goto_b

    :catch_3
    move-exception v0

    move-object v5, v11

    goto :goto_a

    :catch_4
    move-exception v0

    .line 139
    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ZipProxy [zip] Exception="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->w_inner(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v11, v5

    const/16 v18, 0x0

    :goto_b
    if-eqz v11, :cond_e

    .line 144
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_d

    goto :goto_c

    :cond_d
    move/from16 v4, v18

    goto :goto_d

    :cond_e
    :goto_c
    const/4 v4, 0x0

    :goto_d
    const/4 v5, 0x1

    if-ne v5, v4, :cond_f

    .line 149
    iput-boolean v5, v3, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$ZipResult;->zipSucess:Z

    .line 150
    iput-object v2, v3, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$ZipResult;->filePathList:Ljava/util/ArrayList;

    .line 151
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$ZipResult;->zipFileName:Ljava/lang/String;

    :cond_f
    return-object v3

    :cond_10
    :goto_e
    const/4 v2, 0x0

    .line 58
    iput-boolean v2, v3, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$ZipResult;->zipSucess:Z

    return-object v3
.end method

.method public zipHistoryFileInOtherThread(Lorg/json/JSONObject;)V
    .locals 8

    .line 180
    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->uniLoggerLogDirPath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->searchFilesBySuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZipProxy [zipHistoryFile] all fileList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", preUnitResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, v0, p1}, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;->getNeedZipFileList(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZipProxy [zipHistoryFile] need upload fileList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 186
    new-instance v0, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$1;-><init>(Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;)V

    if-eqz p1, :cond_1

    .line 216
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 217
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 218
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZipProxy [zipHistoryFile] file size is 0, delete file, filePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, v0

    .line 224
    invoke-virtual/range {v1 .. v6}, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;->zipSingleFileInOtherThread(Ljava/io/File;ZZLjava/lang/String;Lcom/netease/ntunisdk/unilogger/zip/ZipCallBack;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized zipSingleFileInOtherThread(Ljava/io/File;ZZLjava/lang/String;Lcom/netease/ntunisdk/unilogger/zip/ZipCallBack;)V
    .locals 1

    monitor-enter p0

    .line 171
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance p1, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;

    invoke-direct {p1, v0, p2, p3}, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;-><init>(Ljava/util/ArrayList;ZZ)V

    .line 174
    invoke-virtual {p1, p5}, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;->setZipCallBack(Lcom/netease/ntunisdk/unilogger/zip/ZipCallBack;)V

    .line 175
    invoke-virtual {p1, p4}, Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;->setZipDirPath(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/netease/ntunisdk/unilogger/zip/ZipCore;->getInstance()Lcom/netease/ntunisdk/unilogger/zip/ZipCore;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/unilogger/zip/ZipCore;->addZipUnitToQueue(Lcom/netease/ntunisdk/unilogger/zip/ZipUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public zipSingleFileInSameThread(Ljava/io/File;ZZLjava/lang/String;)Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$ZipResult;
    .locals 1

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;->zipFileListInSameList(Ljava/util/ArrayList;ZZLjava/lang/String;)Lcom/netease/ntunisdk/unilogger/zip/ZipProxy$ZipResult;

    move-result-object p1

    return-object p1
.end method
