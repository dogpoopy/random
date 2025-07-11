.class public Lcom/netease/cc/videoedit/TrimVideo;
.super Ljava/lang/Object;
.source "TrimVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/videoedit/TrimVideo$TrimVideoListener;
    }
.end annotation


# static fields
.field public static final MERGE_FLAG_NO_AUDIO:I = 0x1

.field public static final MERGE_FLAG_NO_VIDEO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TrimVideo"


# instance fields
.field private ffmpegHandler:Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;

.field private isJointing:Z

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/netease/cc/videoedit/TrimVideo$TrimVideoListener;

.field private maxRetryCover:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "loghelp"

    .line 43
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "ijkffmpeg"

    .line 44
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "trimvideo"

    .line 45
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netease/cc/videoedit/TrimVideo;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/netease/cc/videoedit/TrimVideo;->isJointing:Z

    const/16 v0, 0xa

    .line 181
    iput v0, p0, Lcom/netease/cc/videoedit/TrimVideo;->maxRetryCover:I

    .line 62
    new-instance v0, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;

    iget-object v1, p0, Lcom/netease/cc/videoedit/TrimVideo;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/netease/cc/videoedit/TrimVideo;->ffmpegHandler:Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/cc/videoedit/TrimVideo;)Lcom/netease/cc/videoedit/TrimVideo$TrimVideoListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/netease/cc/videoedit/TrimVideo;->mListener:Lcom/netease/cc/videoedit/TrimVideo$TrimVideoListener;

    return-object p0
.end method


# virtual methods
.method public native addaudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public blackBmpCheck(Landroid/graphics/Bitmap;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 150
    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v5, v3, 0x2

    .line 151
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 152
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    const/high16 v8, -0x1000000

    if-ne v8, v3, :cond_0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    if-ne v8, v3, :cond_0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    if-ne v8, v3, :cond_0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    if-ne v8, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public enableLog(Z)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/netease/cc/videoedit/TrimVideo;->enableNativeLog(I)V

    return-void
.end method

.method public native enableNativeLog(I)V
.end method

.method public getCover(Lorg/json/JSONObject;)Z
    .locals 12

    const-string v0, "video_path is : "

    const-string v1, "TrimVideo"

    .line 184
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    if-eqz p1, :cond_6

    :try_start_0
    const-string v3, "video_path"

    .line 187
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "image_path"

    .line 188
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mode"

    .line 189
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "scale"

    .line 190
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float p1, v6

    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v3, 0x9

    .line 194
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    .line 195
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    const/4 v0, 0x2

    .line 196
    invoke-virtual {v2, v6, v7, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v5, :cond_0

    .line 197
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    if-eqz v6, :cond_1

    .line 198
    invoke-virtual {p0, v6}, Lcom/netease/cc/videoedit/TrimVideo;->blackBmpCheck(Landroid/graphics/Bitmap;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 199
    invoke-virtual {p0, v6, v4, v5, p1}, Lcom/netease/cc/videoedit/TrimVideo;->saveBmpToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;F)Z

    move-result p1

    return p1

    :cond_1
    if-eqz v6, :cond_6

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 202
    :goto_1
    iget v9, p0, Lcom/netease/cc/videoedit/TrimVideo;->maxRetryCover:I

    const/4 v10, 0x5

    if-le v9, v10, :cond_3

    mul-int v9, v8, v3

    .line 203
    div-int/2addr v9, v10

    mul-int/lit16 v9, v9, 0x3e8

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    invoke-virtual {v2, v9, v10, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 204
    invoke-virtual {p0, v9}, Lcom/netease/cc/videoedit/TrimVideo;->blackBmpCheck(Landroid/graphics/Bitmap;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 205
    invoke-virtual {p0, v9, v4, v5, p1}, Lcom/netease/cc/videoedit/TrimVideo;->saveBmpToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;F)Z

    move-result p1

    return p1

    .line 207
    :cond_2
    iget v9, p0, Lcom/netease/cc/videoedit/TrimVideo;->maxRetryCover:I

    sub-int/2addr v9, v7

    iput v9, p0, Lcom/netease/cc/videoedit/TrimVideo;->maxRetryCover:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 209
    :goto_2
    iget v8, p0, Lcom/netease/cc/videoedit/TrimVideo;->maxRetryCover:I

    if-lez v8, :cond_5

    mul-int v8, v0, v3

    .line 210
    div-int/2addr v8, v10

    mul-int/lit16 v8, v8, 0x3e8

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    const/4 v11, 0x3

    invoke-virtual {v2, v8, v9, v11}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 211
    invoke-virtual {p0, v8}, Lcom/netease/cc/videoedit/TrimVideo;->blackBmpCheck(Landroid/graphics/Bitmap;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 212
    invoke-virtual {p0, v8, v4, v5, p1}, Lcom/netease/cc/videoedit/TrimVideo;->saveBmpToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;F)Z

    move-result p1

    return p1

    .line 214
    :cond_4
    iget v8, p0, Lcom/netease/cc/videoedit/TrimVideo;->maxRetryCover:I

    sub-int/2addr v8, v7

    iput v8, p0, Lcom/netease/cc/videoedit/TrimVideo;->maxRetryCover:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const-string v0, "get blackbmp as cover"

    .line 216
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p0, v6, v4, v5, p1}, Lcom/netease/cc/videoedit/TrimVideo;->saveBmpToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;F)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 222
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public getSDCartPath()Ljava/lang/String;
    .locals 1

    .line 104
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native merge(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public mergeVideoList(Ljava/util/ArrayList;Ljava/lang/String;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 76
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "first_file"

    .line 79
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_0
    if-ge v5, v0, :cond_1

    .line 83
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "file_list_array"

    .line 86
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-eq p1, v0, :cond_2

    const-string v0, "TrimVideo"

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=========="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/cc/videoedit/TrimVideo;->merge(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v4

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return v1
.end method

.method public mixAudio(Lorg/json/JSONObject;)I
    .locals 21

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v2, "video_path"

    .line 123
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "audio_path"

    .line 124
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "save_path"

    .line 125
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "start_time"

    .line 126
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v2, "end_time"

    .line 127
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v2, "video_volume"

    .line 128
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-string v2, "audio_volume"

    .line 129
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    const-string v2, "loop"

    .line 130
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    const-string v2, "is_volume_ratio"

    .line 131
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "video_volume_ratio"

    .line 132
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v17

    const-string v3, "audio_volume_ratio"

    .line 133
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v19

    const/4 v0, 0x1

    if-ne v2, v0, :cond_0

    const/4 v11, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v7, v17

    move-wide/from16 v9, v19

    .line 135
    invoke-virtual/range {v3 .. v16}, Lcom/netease/cc/videoedit/TrimVideo;->mixaudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDZJJI)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    move-object/from16 v3, p0

    .line 137
    invoke-virtual/range {v3 .. v16}, Lcom/netease/cc/videoedit/TrimVideo;->mixaudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDZJJI)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_1
    return v1
.end method

.method public native mixaudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDZJJI)I
.end method

.method public probeMediaInfo(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9

    .line 229
    invoke-static {p1}, Lcom/netease/cc/videoedit/ffmpeg/FFmpegUtil;->probeFormat(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->executeProbeSynchronize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "probe result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TrimVideo"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-static {v0}, Lcom/netease/cc/videoedit/ffmpeg/handler/JsonParseTool;->parseMediaFormat(Ljava/lang/String;)Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "{\"video_path\" : \"null\",\"video_codec_name\" : \"null\",\"video_profile_name\" : \"null\",\"video_profile\" : 0,\"video_level\" : 0,\"video_r_frame_rate\" : 0,\"video_avg_frame_rate\" : 0,\"video_codec_time_base\" : 0,\"video_time_base\" : 0,\"video_bitrate\" : 0,\"video_width\" : 0,\"video_height\" : 0,\"audio_codec_name\" : \"null\",\"audio_sample_rate\" : 0,\"audio_time_base\" : 0,\"audio_channels\" : 0,\"audio_channel_layout\" : \"null\",\"flag\" : 0 }"

    .line 255
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 256
    :try_start_1
    invoke-virtual {v0}, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->getVideoBean()Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v1, "video_path"

    .line 257
    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "video_codec_name"

    .line 258
    invoke-virtual {v0}, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->getVideoBean()Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->getVideoCodec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "video_profile"

    .line 259
    invoke-virtual {v0}, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->getVideoBean()Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->getProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    invoke-virtual {v0}, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->getVideoBean()Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->getProfile()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v4, 0x6c0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v2, v4, :cond_4

    const/16 v4, 0x6e0

    if-eq v2, v4, :cond_3

    const/16 v4, 0x700

    if-eq v2, v4, :cond_2

    const v4, 0xcdd6

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "578"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string v2, "88"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    const-string v2, "77"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const-string v2, "66"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_0
    const-string p1, "video_profile_name"

    if-eqz v1, :cond_8

    const-string v2, "baseline"

    if-eq v1, v8, :cond_7

    if-eq v1, v7, :cond_7

    if-eq v1, v6, :cond_6

    .line 272
    :try_start_2
    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_6
    const-string v1, "high"

    .line 269
    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 266
    :cond_7
    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_8
    const-string v1, "main"

    .line 262
    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string p1, "video_level"

    .line 274
    invoke-virtual {v0}, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->getVideoBean()Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->getLevel()I

    move-result v1

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "video_r_frame_rate"

    .line 275
    invoke-virtual {v0}, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->getVideoBean()Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->getFrameRate()I

    move-result v1

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "video_avg_frame_rate"

    .line 276
    invoke-virtual {v0}, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->getVideoBean()Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->getAvgFrameRate()I

    move-result v1

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "video_width"

    .line 277
    invoke-virtual {v0}, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->getVideoBean()Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->getWidth()I

    move-result v1

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "video_height"

    .line 278
    invoke-virtual {v0}, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->getVideoBean()Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->getHeight()I

    move-result v1

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "flag"

    .line 279
    invoke-virtual {v3, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 281
    :cond_9
    invoke-virtual {v0}, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->getAudioBean()Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;

    move-result-object p1

    if-eqz p1, :cond_a

    const-string p1, "audio_codec_name"

    .line 282
    invoke-virtual {v0}, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->getAudioBean()Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;->getAudioCodec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "audio_sample_rate"

    .line 283
    invoke-virtual {v0}, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->getAudioBean()Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;->getSampleRate()I

    move-result v1

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "audio_channels"

    .line 284
    invoke-virtual {v0}, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->getAudioBean()Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;->getChannels()I

    move-result v1

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "audio_channel_layout"

    .line 285
    invoke-virtual {v0}, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->getAudioBean()Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;->getChannelLayout()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v3, v1

    .line 289
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_a
    :goto_3
    return-object v3
.end method

.method public saveBmpToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;F)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_3

    .line 159
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 165
    invoke-virtual {v7, p4, p4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 169
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 171
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 172
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x64

    .line 173
    invoke-virtual {p4, p3, p2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 176
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return v0
.end method

.method public setListener(Lcom/netease/cc/videoedit/TrimVideo$TrimVideoListener;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/netease/cc/videoedit/TrimVideo;->mListener:Lcom/netease/cc/videoedit/TrimVideo$TrimVideoListener;

    return-void
.end method

.method public transcodeVideoByMediaCodec(Lorg/json/JSONObject;)I
    .locals 12

    const/16 v0, -0x64

    if-nez p1, :cond_0

    const-string p1, "TrimVideo"

    const-string v1, "fail to transcode video by ref video. json object is null."

    .line 307
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "transcode_by_reference_video"

    .line 310
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "TrimVideo"

    const-string v1, "transcode_by_reference_video json object is null."

    .line 312
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const v1, 0xac44

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    const-string v4, "out_files"

    .line 320
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "in_files"

    .line 321
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v6, "ref_file"

    const-string v7, ""

    .line 322
    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_9

    if-nez v5, :cond_2

    goto/16 :goto_6

    .line 327
    :cond_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-eq v0, v7, :cond_3

    const-string p1, "TrimVideo"

    const-string v0, "transcode different amount of in files and out files."

    .line 328
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x65

    return p1

    :cond_3
    const-string v0, "log_level"

    .line 331
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    if-eqz v6, :cond_4

    .line 332
    invoke-virtual {p0, v6}, Lcom/netease/cc/videoedit/TrimVideo;->probeMediaInfo(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_5

    const-string v1, "audio_sample_rate"

    .line 335
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "video_avg_frame_rate"

    .line 336
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "audio_channels"

    .line 337
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v7, "video_width"

    .line 338
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "video_height"

    .line 339
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_5
    const-string p1, "TrimVideo"

    const-string v7, "Failed to probe reference video. set default sample rate[44100] and channels[1]."

    .line 341
    invoke-static {p1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x2d0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v7, 0x500

    .line 343
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sample rate-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " fps-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " channels-"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " width-"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height-"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "TrimVideo"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x0

    .line 347
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 348
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    .line 349
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    .line 350
    invoke-static {v9}, Lcom/netease/cc/videoedit/ffmpeg/FileUtil;->checkFileExist(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    const/16 p1, -0x66

    return p1

    .line 353
    :cond_6
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/netease/cc/videoedit/ffmpeg/FileUtil;->ensureDir(Ljava/lang/String;)Z

    .line 355
    new-instance v11, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;

    invoke-direct {v11, v10}, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-static {v11}, Lcom/netease/cc/videoedit/transcoder/Transcoder;->into(Lcom/netease/cc/videoedit/transcoder/sink/DataSink;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;

    move-result-object v10

    .line 357
    invoke-virtual {v10, v9}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->addDataSource(Ljava/lang/String;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;

    .line 358
    new-instance v9, Lcom/netease/cc/videoedit/TrimVideo$1;

    invoke-direct {v9, p0, v2}, Lcom/netease/cc/videoedit/TrimVideo$1;-><init>(Lcom/netease/cc/videoedit/TrimVideo;Ljava/lang/Object;)V

    invoke-virtual {v10, v9}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->setListener(Lcom/netease/cc/videoedit/transcoder/TranscoderListener;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;

    move-result-object v9

    .line 390
    invoke-static {}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;->builder()Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;

    move-result-object v10

    .line 391
    invoke-virtual {v10, v3}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;->channels(I)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;

    move-result-object v10

    .line 392
    invoke-virtual {v10, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;->sampleRate(I)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;

    move-result-object v10

    .line 393
    invoke-virtual {v10}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;->build()Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;

    move-result-object v10

    .line 390
    invoke-virtual {v9, v10}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->setAudioTrackStrategy(Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;

    move-result-object v9

    .line 394
    invoke-static {p1, v7}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->exact(II)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;

    move-result-object v10

    .line 395
    invoke-virtual {v10}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->build()Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;

    move-result-object v10

    .line 394
    invoke-virtual {v9, v10}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->setVideoTrackStrategy(Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;

    move-result-object v9

    .line 396
    invoke-virtual {v9}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->transcode()Ljava/util/concurrent/Future;

    .line 397
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    sub-int/2addr v9, v0

    if-ge v8, v9, :cond_7

    .line 398
    monitor-enter v2

    .line 400
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception v9

    .line 402
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 404
    :goto_3
    monitor-exit v2

    goto :goto_5

    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_7
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 408
    :cond_8
    iput-boolean v6, p0, Lcom/netease/cc/videoedit/TrimVideo;->isJointing:Z

    return v6

    .line 324
    :cond_9
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "none transcode files specified. in["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] out["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TrimVideo"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public native trim(Ljava/lang/String;Ljava/lang/String;II)I
.end method
