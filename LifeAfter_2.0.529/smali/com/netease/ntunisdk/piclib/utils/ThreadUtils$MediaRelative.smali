.class public Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$MediaRelative;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/utils/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaRelative"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaRelative"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMediaInfoEntity(Landroid/net/Uri;Landroid/database/Cursor;IIIIIIIIIILandroid/media/MediaMetadataRetriever;Landroid/content/Context;Z)Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "query",
            "idIndex",
            "dataIndex",
            "mimeTypeIndex",
            "widthIndex",
            "heightIndex",
            "durationIndex",
            "sizeIndex",
            "bucketNameIndex",
            "fileNameIndex",
            "orientationIndex",
            "retriever",
            "context",
            "supportGif"
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v1, p12

    const-string v2, "MediaRelative"

    move/from16 v3, p3

    .line 515
    invoke-static {p1, v3}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getStringValueFromCursor(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    .line 516
    invoke-static {v3, v4}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getPreSufFix(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    if-nez p14, :cond_0

    const-string v6, "gif"

    .line 517
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v5

    .line 521
    :cond_0
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getLongValueFromCursor(Landroid/database/Cursor;I)J

    move-result-wide v6

    move/from16 v8, p4

    .line 522
    invoke-static {p1, v8}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getStringValueFromCursor(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v8

    .line 523
    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/utils/FormatUtil;->isSupportedImageFormat(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "/*"

    if-eqz v9, :cond_2

    if-eqz v8, :cond_1

    .line 524
    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 525
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "image/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 527
    :cond_2
    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/utils/FormatUtil;->isSupportedVideoFormat(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    if-eqz v8, :cond_3

    .line 528
    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 529
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "video/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_4
    :goto_0
    const-string v9, "video"

    const-string v10, "image"

    if-nez p0, :cond_7

    .line 533
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 534
    sget-object v11, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_1

    .line 535
    :cond_5
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 536
    sget-object v11, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_1

    :cond_6
    return-object v5

    :cond_7
    move-object v6, p0

    .line 540
    :goto_1
    new-instance v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-direct {v7}, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;-><init>()V

    .line 542
    iput-object v4, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->suffix:Ljava/lang/String;

    .line 543
    iput-object v6, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    move/from16 v4, p10

    .line 544
    invoke-static {p1, v4}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getStringValueFromCursor(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->name:Ljava/lang/String;

    .line 545
    iput-object v3, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    .line 546
    iput-object v8, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mimeType:Ljava/lang/String;

    move/from16 v4, p9

    .line 547
    invoke-static {p1, v4}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getStringValueFromCursor(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->bucketName:Ljava/lang/String;

    move/from16 v4, p5

    .line 548
    invoke-static {p1, v4}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getIntValueFromCursor(Landroid/database/Cursor;I)I

    move-result v4

    iput v4, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    move/from16 v4, p6

    .line 549
    invoke-static {p1, v4}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getIntValueFromCursor(Landroid/database/Cursor;I)I

    move-result v4

    iput v4, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    move/from16 v4, p7

    .line 550
    invoke-static {p1, v4}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getIntValueFromCursor(Landroid/database/Cursor;I)I

    move-result v4

    iput v4, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->duration:I

    move/from16 v4, p8

    .line 551
    invoke-static {p1, v4}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getLongValueFromCursor(Landroid/database/Cursor;I)J

    move-result-wide v11

    iput-wide v11, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->size:J

    move/from16 v4, p11

    .line 552
    invoke-static {p1, v4}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getIntValueFromCursor(Landroid/database/Cursor;I)I

    move-result v0

    iput v0, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I

    .line 554
    iget-object v0, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->isGif(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 555
    sget-object v0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->GIF:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    iput-object v0, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    goto/16 :goto_3

    .line 556
    :cond_8
    iget-object v0, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 557
    sget-object v0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    iput-object v0, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    .line 558
    iget v0, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->duration:I

    if-nez v0, :cond_b

    .line 560
    :try_start_0
    iget-object v0, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    move-object/from16 v4, p13

    invoke-virtual {v1, v4, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v0, 0x9

    .line 561
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x12

    .line 562
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0x13

    .line 563
    invoke-virtual {v1, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x18

    .line 564
    invoke-virtual {v1, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 565
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "new video sRotation: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->duration:I

    .line 567
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    .line 568
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    .line 569
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 571
    sget-boolean v1, Lcom/netease/ntunisdk/base/UniSdkUtils;->isDebug:Z

    if-eqz v1, :cond_9

    .line 572
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 574
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createMediaInfoEntity failed, uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :goto_2
    iget v0, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->duration:I

    if-nez v0, :cond_b

    return-object v5

    .line 579
    :cond_a
    sget-object v0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->SINGLE_FRAME_IMAGE:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    iput-object v0, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    .line 582
    :cond_b
    :goto_3
    iget-object v0, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    sget-object v1, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-ne v0, v1, :cond_c

    goto :goto_4

    :cond_c
    move-object v9, v10

    :goto_4
    iput-object v9, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaTypeString:Ljava/lang/String;

    return-object v7

    :cond_d
    return-object v5
.end method

.method static synthetic lambda$createMediaUri$0(Landroid/content/Context;)V
    .locals 2

    const-string v0, "picedit_rom_not_enough"

    .line 411
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public cancelPending(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "uri"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 396
    invoke-static {}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->higherThanQ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 398
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_pending"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 399
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public createEntityFromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "uri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 483
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 487
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 489
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    sget-object v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 491
    sget-object v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 492
    sget-object v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 493
    sget-object v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 494
    sget-object v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 495
    sget-object v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 496
    sget-object v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 497
    sget-object v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 498
    sget-object v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 499
    sget-object v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 500
    new-instance v13, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v13}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v0, 0x1

    move-object/from16 v1, p2

    move-object v2, v15

    move-object/from16 v14, p1

    move-object/from16 v16, v15

    move v15, v0

    .line 501
    invoke-static/range {v1 .. v15}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$MediaRelative;->createMediaInfoEntity(Landroid/net/Uri;Landroid/database/Cursor;IIIIIIIIIILandroid/media/MediaMetadataRetriever;Landroid/content/Context;Z)Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    move-result-object v0

    .line 503
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v0

    .line 484
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Inserting media cannot be done on the main thread!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createMediaUri(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;ZLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "fileName",
            "mediaType",
            "pending",
            "suffix",
            "folder"
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " suffix: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " folder: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaRelative"

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 408
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getAvailableInternalMemorySize()J

    move-result-wide v3

    const-wide/32 v5, 0x1400000

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    .line 410
    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    new-instance p3, Lcom/netease/ntunisdk/piclib/utils/-$$Lambda$ThreadUtils$MediaRelative$pgBoK8DSrsNz-TnWxdcxqpIvK08;

    invoke-direct {p3, p1}, Lcom/netease/ntunisdk/piclib/utils/-$$Lambda$ThreadUtils$MediaRelative$pgBoK8DSrsNz-TnWxdcxqpIvK08;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v0

    .line 416
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 419
    sget-object v3, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-ne p3, v3, :cond_3

    .line 420
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p5, "video/mp4"

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 421
    :goto_0
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 423
    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p5, "image/png"

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 424
    :goto_1
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 426
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createMediaUri mimeType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-static {}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->higherThanQ()Z

    move-result v2

    const-string v4, "NtUniVideo"

    const-string v5, "NtUniImage"

    if-eqz v2, :cond_8

    .line 428
    sget-object v2, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    const-string v6, "/"

    const-string v7, "relative_path"

    if-ne p3, v2, :cond_6

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p6, :cond_5

    move-object v6, v4

    goto :goto_3

    :cond_5
    move-object v6, p6

    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 431
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p6, :cond_7

    move-object v6, v5

    goto :goto_4

    :cond_7
    move-object v6, p6

    :goto_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    const-string v2, "_display_name"

    .line 434
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mime_type"

    .line 435
    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->higherThanQ()Z

    move-result p5

    if-eqz p5, :cond_9

    if-eqz p4, :cond_e

    const/4 p2, 0x1

    .line 437
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "is_pending"

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_7

    .line 441
    :cond_9
    sget-object p4, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-ne p3, p4, :cond_b

    .line 442
    new-instance p3, Ljava/io/File;

    sget-object p4, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {p4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p4

    if-nez p6, :cond_a

    move-object p6, v4

    :cond_a
    invoke-direct {p3, p4, p6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_6

    .line 444
    :cond_b
    new-instance p3, Ljava/io/File;

    sget-object p4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {p4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p4

    if-nez p6, :cond_c

    move-object p6, v5

    :cond_c
    invoke-direct {p3, p4, p6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 446
    :goto_6
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p4

    if-nez p4, :cond_d

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result p4

    if-nez p4, :cond_d

    return-object v0

    .line 447
    :cond_d
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-string p3, "_data"

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_e
    :goto_7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 451
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    return-object p1
.end method

.method public insertMedia2Album(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;Ljava/lang/String;)Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "path",
            "mediaType",
            "folder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 378
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 382
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 384
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getPreSufFix(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 385
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v1, 0x1

    aget-object v8, v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$MediaRelative;->createMediaUri(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;ZLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 386
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertMedia2Album -> insert: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "MediaRelative"

    invoke-static {v1, p4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    new-instance p4, Ljava/io/FileInputStream;

    invoke-direct {p4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p0, p4, p2, p3}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$MediaRelative;->stream2Album(Ljava/io/FileInputStream;Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result p2

    if-nez p2, :cond_2

    return-object v0

    .line 388
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$MediaRelative;->cancelPending(Landroid/content/Context;Landroid/net/Uri;)V

    .line 389
    invoke-virtual {p0, p1, p3}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$MediaRelative;->createEntityFromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    move-result-object p2

    if-nez p2, :cond_3

    return-object v0

    .line 391
    :cond_3
    new-instance p3, Landroid/content/Intent;

    new-instance p4, Ljava/io/File;

    iget-object v0, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    invoke-direct {p4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p4

    const-string v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p3, v0, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-object p2

    .line 379
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Inserting media cannot be done on the main thread!"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stream2Album(Ljava/io/FileInputStream;Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fis",
            "contentResolver",
            "uri"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 459
    :try_start_0
    invoke-virtual {p2, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    const/16 p2, 0x2000

    new-array p2, p2, [B

    .line 462
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result p3

    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    .line 463
    invoke-virtual {v1, p2, v0, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 466
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-eqz v1, :cond_1

    .line 473
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    .line 474
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 476
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_1
    move-exception p2

    .line 469
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 473
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_2
    if-eqz p1, :cond_3

    .line 474
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :goto_3
    return v0

    :goto_4
    if-eqz v1, :cond_4

    .line 473
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_5

    :catch_2
    move-exception p1

    goto :goto_6

    :cond_4
    :goto_5
    if-eqz p1, :cond_5

    .line 474
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    .line 476
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 478
    :cond_5
    :goto_7
    throw p2
.end method
