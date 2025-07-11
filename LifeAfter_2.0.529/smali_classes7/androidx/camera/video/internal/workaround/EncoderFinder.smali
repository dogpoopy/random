.class public Landroidx/camera/video/internal/workaround/EncoderFinder;
.super Ljava/lang/Object;
.source "EncoderFinder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EncoderFinder"


# instance fields
.field private final mShouldRemoveKeyFrameRate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-class v0, Landroidx/camera/video/internal/compat/quirk/MediaFormatMustNotUseFrameRateToFindEncoderQuirk;

    .line 56
    invoke-static {v0}, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/video/internal/compat/quirk/MediaFormatMustNotUseFrameRateToFindEncoderQuirk;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    iput-boolean v0, p0, Landroidx/camera/video/internal/workaround/EncoderFinder;->mShouldRemoveKeyFrameRate:Z

    return-void
.end method

.method private findEncoderWithNearestCompatibleBitrate(Landroid/media/MediaFormat;[Landroid/media/MediaCodecInfo;)Ljava/lang/String;
    .locals 13

    const-string v0, "bitrate"

    const-string v1, "mime"

    .line 145
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EncoderFinder"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string p1, "MediaFormat does not contain mime info."

    .line 147
    invoke-static {v2, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 151
    :cond_0
    array-length v4, p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_9

    aget-object v7, p2, v6

    .line 152
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_7

    .line 157
    :cond_1
    :try_start_0
    invoke-virtual {v7, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    const-string v11, "MIME type is not supported"

    .line 158
    invoke-static {v10, v11}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v10, -0x1

    .line 161
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 164
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v10

    if-eqz v10, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_2
    const-string v12, "Not video codec"

    .line 165
    invoke-static {v11, v12}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 167
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 168
    :try_start_1
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 169
    invoke-virtual {p1, v0, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_3

    :cond_4
    move-object v11, v3

    .line 171
    :goto_3
    invoke-virtual {v8, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFormatSupported(Landroid/media/MediaFormat;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "No encoder found that supports requested bitrate. Adjusting bitrate to nearest supported bitrate [requested: %dbps, nearest: %dbps]"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v11, v12, v5

    .line 174
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v12, v9

    .line 172
    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_5

    .line 181
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_5
    return-object p2

    :cond_6
    if-eqz v11, :cond_8

    goto :goto_6

    :catchall_0
    move-exception p2

    move-object v3, v11

    goto :goto_4

    :catch_0
    nop

    goto :goto_5

    :catchall_1
    move-exception p2

    :goto_4
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 183
    :cond_7
    throw p2

    :catch_1
    move-object v11, v3

    :goto_5
    if-eqz v11, :cond_8

    .line 181
    :goto_6
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v0, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_8
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_9
    return-object v3
.end method

.method private shouldCreateCodecByType(Landroid/media/MediaFormat;)Z
    .locals 1

    .line 189
    const-class v0, Landroidx/camera/video/internal/compat/quirk/MediaCodecInfoReportIncorrectInfoQuirk;

    .line 190
    invoke-static {v0}, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/video/internal/compat/quirk/MediaCodecInfoReportIncorrectInfoQuirk;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 194
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/camera/video/internal/compat/quirk/MediaCodecInfoReportIncorrectInfoQuirk;->isUnSupportMediaCodecInfo(Landroid/media/MediaFormat;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public findEncoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/video/internal/encoder/InvalidConfigException;
        }
    .end annotation

    .line 75
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 76
    invoke-virtual {p0, p1, v0}, Landroidx/camera/video/internal/workaround/EncoderFinder;->findEncoderForFormat(Landroid/media/MediaFormat;Landroid/media/MediaCodecList;)Ljava/lang/String;

    move-result-object v2

    .line 78
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "mime"

    .line 79
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    .line 82
    invoke-static {v3, v4, p1}, Landroidx/camera/video/internal/DebugUtils;->dumpCodecCapabilities(Ljava/lang/String;Landroid/media/MediaCodec;Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "EncoderFinder"

    const-string v6, "No encoder found that supports requested MediaFormat %s. Create encoder by MIME type. Dump codec info:\n%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    aput-object v3, v7, v1

    .line 83
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {v2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v4

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    .line 90
    :goto_1
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/workaround/EncoderFinder;->shouldCreateCodecByType(Landroid/media/MediaFormat;)Z

    move-result v3

    .line 91
    invoke-static {v0, p1}, Landroidx/camera/video/internal/DebugUtils;->dumpMediaCodecListForFormat(Landroid/media/MediaCodecList;Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object p1

    .line 92
    new-instance v0, Landroidx/camera/video/internal/encoder/InvalidConfigException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encoder cannot created: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isMediaFormatInQuirk: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Landroidx/camera/video/internal/encoder/InvalidConfigException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method findEncoderForFormat(Landroid/media/MediaFormat;Landroid/media/MediaCodecList;)Ljava/lang/String;
    .locals 6

    const-string v0, "aac-profile"

    const-string v1, "frame-rate"

    const/4 v2, 0x0

    .line 107
    :try_start_0
    iget-boolean v3, p0, Landroidx/camera/video/internal/workaround/EncoderFinder;->mShouldRemoveKeyFrameRate:Z

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 110
    :try_start_1
    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 117
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-gt v4, v5, :cond_1

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    :try_start_2
    invoke-virtual {p1, v0, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v4

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    .line 123
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {p2, p1}, Landroid/media/MediaCodecList;->findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 126
    invoke-virtual {p2}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object p2

    .line 125
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/internal/workaround/EncoderFinder;->findEncoderWithNearestCompatibleBitrate(Landroid/media/MediaFormat;[Landroid/media/MediaCodecInfo;)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    if-eqz v3, :cond_3

    .line 132
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_3
    if-eqz v2, :cond_4

    .line 137
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_4
    return-object v4

    :catchall_1
    move-exception p2

    move-object v4, v2

    :goto_2
    move-object v2, v3

    goto :goto_3

    :catchall_2
    move-exception p2

    move-object v4, v2

    :goto_3
    if-eqz v2, :cond_5

    .line 132
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_5
    if-eqz v4, :cond_6

    .line 137
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 139
    :cond_6
    throw p2
.end method
