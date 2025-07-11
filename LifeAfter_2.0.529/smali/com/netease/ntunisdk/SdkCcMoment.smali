.class public Lcom/netease/ntunisdk/SdkCcMoment;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "SdkCcMoment.java"

# interfaces
.implements Lcom/netease/cc/screen_record/codec/IRecordCallback;
.implements Lcom/netease/cc/videoedit/TrimVideo$TrimVideoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/SdkCcMoment$WorkerHandler;,
        Lcom/netease/ntunisdk/SdkCcMoment$CallbackMainHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CHANNEL:Ljava/lang/String; = "cc_moment"

.field private static final CODE_CREATE_VIDEO_COVER:I = 0x6

.field private static final CODE_IS_RECORDING:I = 0x4

.field private static final CODE_MERGE_VIDEOS:I = 0x2

.field private static final CODE_MERGE_VIDEO_AUDIO:I = 0x3

.field private static final CODE_MIX_AUDIO:I = 0x5

.field private static final CODE_REQ_NEW_MANAGER:I

.field private static final CODE_REQ_PERMISSION:I

.field private static final CODE_TRIM:I = 0x1

.field private static final METHOD_CREATE_VIDEO_COVER:Ljava/lang/String; = "createVideoCover"

.field private static final METHOD_ENABLE_DEBUG_VOICE:Ljava/lang/String; = "enableDebugVoice"

.field private static final METHOD_INIT_GAME_VOICE:Ljava/lang/String; = "initGameVoice"

.field private static final METHOD_IS_RECORDING:Ljava/lang/String; = "isRecording"

.field private static final METHOD_MERGE_VIDEO:Ljava/lang/String; = "mergeVideo"

.field private static final METHOD_MERGE_VIDEO_AUDIO:Ljava/lang/String; = "mergeVideoWithAudio"

.field private static final METHOD_MIX_AUDIO:Ljava/lang/String; = "mixAudio"

.field private static final METHOD_PAUSE_RECORD:Ljava/lang/String; = "pauseRecord"

.field private static final METHOD_PUSH_GAME_VOICE_DATA:Ljava/lang/String; = "pushGameVoiceData"

.field private static final METHOD_RESUME_RECORD:Ljava/lang/String; = "resumeRecord"

.field private static final METHOD_SET_NOTIFICATION_BUILDER:Ljava/lang/String; = "setNotificationBuilder"

.field private static final METHOD_SET_PARAMETER:Ljava/lang/String; = "setParameter"

.field private static final METHOD_SET_POLICY:Ljava/lang/String; = "setNewPermissionPolicyEnable"

.field private static final METHOD_SET_PROP_INT:Ljava/lang/String; = "setCcPropInt"

.field private static final METHOD_SET_RECORD_CONTEXT:Ljava/lang/String; = "setRecordContext"

.field private static final METHOD_START_RECORD:Ljava/lang/String; = "startRecord"

.field private static final METHOD_STOP_RECORD:Ljava/lang/String; = "stopRecord"

.field private static final METHOD_TRANSCODE_VIDEO:Ljava/lang/String; = "transcodeVideo"

.field private static final METHOD_TRIM_VIDEO:Ljava/lang/String; = "trimVideo"

.field private static final METHOD_TRIM_VIDEO_ENABLE_LOG:Ljava/lang/String; = "ccTrimVideoEnableLog"

.field private static final METHOD_UN_INIT_GAME_VOICE:Ljava/lang/String; = "ccUnInitGameVoice"

.field private static final PERMISSION_RECORD_AUDIO:Ljava/lang/String; = "android.permission.RECORD_AUDIO"

.field private static final TAG:Ljava/lang/String; = "SdkCcMoment"

.field private static final VER:Ljava/lang/String; = "20221227"

.field private static final sMethodSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMainHandler:Landroid/os/Handler;

.field private mMomentJsonObj:Lorg/json/JSONObject;

.field private mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

.field private mTrimVideo:Lcom/netease/cc/videoedit/TrimVideo;

.field private mWorkerHandler:Landroid/os/Handler;

.field private needTranscodeProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SdkCcMoment"

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xffff

    rem-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/SdkCcMoment;->CODE_REQ_NEW_MANAGER:I

    .line 55
    sget v0, Lcom/netease/ntunisdk/SdkCcMoment;->CODE_REQ_NEW_MANAGER:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/netease/ntunisdk/SdkCcMoment;->CODE_REQ_PERMISSION:I

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 99
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/netease/ntunisdk/SdkCcMoment;->needTranscodeProgress:Z

    const/4 p1, 0x1

    const-string v0, "INNER_MODE_SECOND_CHANNEL"

    .line 100
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkCcMoment;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "INNER_MODE_NO_PAY"

    .line 101
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkCcMoment;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/SdkCcMoment;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 48
    sget v0, Lcom/netease/ntunisdk/SdkCcMoment;->CODE_REQ_PERMISSION:I

    return v0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/SdkCcMoment;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkCcMoment;->trim()V

    return-void
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/SdkCcMoment;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkCcMoment;->merge(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/SdkCcMoment;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkCcMoment;->mergeVa()V

    return-void
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/SdkCcMoment;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkCcMoment;->getRecordingState()V

    return-void
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/SdkCcMoment;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkCcMoment;->mixAudio()V

    return-void
.end method

.method static synthetic access$700(Lcom/netease/ntunisdk/SdkCcMoment;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkCcMoment;->createVideoCover()V

    return-void
.end method

.method private createVideoCover()V
    .locals 9

    const-string v0, "imagePath"

    const-string v1, "videoPath"

    const-string v2, "param"

    const-string v3, "image_path"

    const-string v4, "video_path"

    .line 855
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkCcMoment;->newTrimInstance()V

    .line 859
    :try_start_0
    iget-object v5, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "SdkCcMoment"

    if-eqz v5, :cond_0

    .line 860
    :try_start_1
    iget-object v5, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "no param found, by pass the original json"

    .line 863
    invoke-static {v6, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    new-instance v2, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "methodId"

    .line 865
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 869
    :goto_0
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 870
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 872
    :cond_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 873
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 876
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param for getCover: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v3, 0x2

    const-string v5, "scale"

    aput-object v5, v0, v3

    const/4 v3, 0x3

    const-string v5, "mode"

    aput-object v5, v0, v3

    .line 882
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 883
    array-length v5, v0

    const/4 v4, 0x0

    const/4 v6, 0x1

    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v7, v0, v4

    .line 884
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 885
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3

    const-string v8, ","

    .line 886
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    :cond_3
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    if-eqz v6, :cond_6

    .line 895
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mTrimVideo:Lcom/netease/cc/videoedit/TrimVideo;

    invoke-virtual {v0, v2}, Lcom/netease/cc/videoedit/TrimVideo;->getCover(Lorg/json/JSONObject;)Z

    move-result v0

    .line 896
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v2, "result"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 899
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 900
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v2, "msg"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 904
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 907
    :goto_3
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkCcMoment;->extendFuncCall(Ljava/lang/String;)V

    return-void
.end method

.method private getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->myCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 676
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 677
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 678
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 680
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method private getRecordingState()V
    .locals 4

    .line 912
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    if-eqz v0, :cond_0

    .line 913
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->isRecording()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 915
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecording: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdkCcMoment"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v2, "result"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 919
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v2, "isRecording"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 922
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 925
    :goto_1
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkCcMoment;->extendFuncCall(Ljava/lang/String;)V

    return-void
.end method

.method private merge(I)V
    .locals 6

    .line 726
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkCcMoment;->newTrimInstance()V

    .line 728
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v1, "fileInputs"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 729
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 732
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 733
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 734
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 736
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v3, "fileOutput"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 740
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 741
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_4

    .line 748
    :try_start_0
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mTrimVideo:Lcom/netease/cc/videoedit/TrimVideo;

    invoke-virtual {v3, v1, v0, p1}, Lcom/netease/cc/videoedit/TrimVideo;->mergeVideoList(Ljava/util/ArrayList;Ljava/lang/String;I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 750
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_4
    const-string p1, "SdkCcMoment"

    const-string v0, "input file(s) not exist."

    .line 753
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :goto_2
    :try_start_1
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v0, "result"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 759
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 762
    :goto_3
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkCcMoment;->extendFuncCall(Ljava/lang/String;)V

    :cond_5
    :goto_4
    return-void
.end method

.method private mergeVa()V
    .locals 7

    .line 766
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkCcMoment;->newTrimInstance()V

    .line 768
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v1, "videoInput"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 769
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v2, "audioInput"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 770
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v3, "fileOutput"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 772
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "SdkCcMoment"

    if-nez v3, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_3

    :cond_0
    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 779
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 785
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mTrimVideo:Lcom/netease/cc/videoedit/TrimVideo;

    invoke-virtual {v4, v0, v1, v2}, Lcom/netease/cc/videoedit/TrimVideo;->addaudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 788
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v5, "input files not exist"

    .line 781
    invoke-static {v4, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 794
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v1, "msg"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 796
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 799
    :goto_2
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkCcMoment;->extendFuncCall(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_3
    const-string v0, "invalid params."

    .line 773
    invoke-static {v4, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private mixAudio()V
    .locals 9

    const-string v0, "param"

    .line 803
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkCcMoment;->newTrimInstance()V

    .line 807
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "SdkCcMoment"

    if-eqz v1, :cond_0

    .line 808
    :try_start_1
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "no param found, by pass the original json"

    .line 811
    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "methodId"

    .line 813
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 816
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "param for mixAudio: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "video_path"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "audio_path"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v5, "save_path"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-string v5, "video_volume"

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string v5, "audio_volume"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const-string v5, "start_time"

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const-string v5, "end_time"

    aput-object v5, v1, v2

    const/4 v2, 0x7

    const-string v5, "loop"

    aput-object v5, v1, v2

    const/16 v2, 0x8

    const-string v5, "is_volume_ratio"

    aput-object v5, v1, v2

    const/16 v2, 0x9

    const-string v5, "video_volume_ratio"

    aput-object v5, v1, v2

    const/16 v2, 0xa

    const-string v5, "audio_volume_ratio"

    aput-object v5, v1, v2

    .line 824
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 825
    array-length v5, v1

    const/4 v4, 0x0

    const/4 v6, 0x1

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v7, v1, v4

    .line 827
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 828
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_1

    const-string v8, ","

    .line 829
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    :cond_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    .line 839
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mTrimVideo:Lcom/netease/cc/videoedit/TrimVideo;

    invoke-virtual {v1, v0}, Lcom/netease/cc/videoedit/TrimVideo;->mixAudio(Lorg/json/JSONObject;)I

    move-result v0

    .line 840
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v2, "result"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 843
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 844
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v2, "msg"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 848
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 851
    :goto_3
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkCcMoment;->extendFuncCall(Ljava/lang/String;)V

    return-void
.end method

.method private newTrimInstance()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mTrimVideo:Lcom/netease/cc/videoedit/TrimVideo;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lcom/netease/cc/videoedit/TrimVideo;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/TrimVideo;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mTrimVideo:Lcom/netease/cc/videoedit/TrimVideo;

    .line 151
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mTrimVideo:Lcom/netease/cc/videoedit/TrimVideo;

    invoke-virtual {v0, p0}, Lcom/netease/cc/videoedit/TrimVideo;->setListener(Lcom/netease/cc/videoedit/TrimVideo$TrimVideoListener;)V

    .line 152
    new-instance v0, Lcom/netease/ntunisdk/SdkCcMoment$CallbackMainHandler;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/SdkCcMoment$CallbackMainHandler;-><init>(Lcom/netease/ntunisdk/SdkCcMoment;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMainHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private resumeOrPauseRecord(Z)V
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->pauseRecord(Z)I

    move-result v0

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseRecord("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "):"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SdkCcMoment"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startRecord()V
    .locals 27

    move-object/from16 v1, p0

    const-string v2, "cache_record_mode"

    const-string v0, "fileOutput"

    const-string v3, "height"

    const-string v4, "width"

    const-string v5, "quality"

    const-string v6, "waterImageInAssets"

    .line 447
    iget-object v7, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v8, "SdkCcMoment"

    if-nez v7, :cond_0

    const-string v0, "null mMomentJsonObj"

    .line 448
    invoke-static {v8, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 453
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v7

    const-string v9, "MEDIA_PROJECTION_MANAGER_IN_USE"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_2

    const-string v0, "media projection is in used."

    .line 456
    invoke-static {v8, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v2, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v3, "result"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    iget-object v2, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v3, "error"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/SdkCcMoment;->extendFuncCall(Ljava/lang/String;)V

    return-void

    .line 463
    :cond_2
    iget-object v7, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 464
    iget-object v11, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    .line 465
    iget-object v12, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    .line 466
    iget-object v13, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v14, "fps"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    .line 467
    iget-object v14, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v15, "vbr"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    .line 468
    iget-object v15, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v9, "muteAudio"

    invoke-virtual {v15, v9, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 469
    iget-object v15, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 470
    iget-object v10, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    move/from16 v16, v9

    const-string v9, "coverPath"

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 471
    iget-object v10, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    move-object/from16 v17, v3

    const-string v3, "coverScale"

    move/from16 v18, v13

    move/from16 v19, v14

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object/from16 v20, v4

    invoke-virtual {v10, v3, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 472
    iget-object v4, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v10, "coverMode"

    const-string v13, ".png"

    invoke-virtual {v9, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x0

    goto :goto_1

    :cond_3
    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v4, v10, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 473
    iget-object v10, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v13, "enableCCWaterMark"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 474
    iget-object v13, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    .line 476
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v21, v15

    const-string v15, "path"

    if-eqz v14, :cond_4

    .line 477
    :try_start_1
    iget-object v14, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v21, v14

    :cond_4
    if-nez v7, :cond_5

    const-string v7, "quality not set..."

    .line 480
    invoke-static {v8, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v7, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v5, v11}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_5
    const/4 v5, 0x1

    if-ne v5, v7, :cond_8

    const-string v5, "customer params"

    .line 485
    invoke-static {v8, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v11, :cond_7

    if-lez v12, :cond_7

    if-lez v19, :cond_7

    if-lez v18, :cond_7

    .line 487
    iget-object v5, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-virtual {v5, v11}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setWdith(I)V

    .line 488
    iget-object v5, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-virtual {v5, v12}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setHeight(I)V

    const/16 v5, 0x7d0

    move/from16 v7, v19

    if-gt v7, v5, :cond_6

    .line 490
    iget-object v5, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    mul-int/lit16 v14, v7, 0x3e8

    invoke-virtual {v5, v14}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setBitrate(I)V

    goto :goto_2

    .line 492
    :cond_6
    iget-object v5, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-virtual {v5, v7}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setBitrate(I)V

    .line 494
    :goto_2
    iget-object v5, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    move/from16 v7, v18

    invoke-virtual {v5, v7}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setFps(I)V

    const/4 v5, -0x1

    goto :goto_4

    :cond_7
    const-string v5, "customer params but no params set..."

    .line 498
    invoke-static {v8, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    add-int/lit8 v5, v7, -0x2

    if-gez v5, :cond_9

    :goto_3
    const/4 v5, 0x1

    .line 508
    :cond_9
    :goto_4
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v11, 0x0

    if-eqz v7, :cond_a

    const-string v7, "path not set..."

    .line 509
    invoke-static {v8, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    new-instance v7, Ljava/io/File;

    iget-object v12, v1, Lcom/netease/ntunisdk/SdkCcMoment;->myCtx:Landroid/content/Context;

    invoke-virtual {v12, v11}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ".mp4"

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, v19

    invoke-direct {v7, v12, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 511
    iget-object v11, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v11, v0, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_a
    move-object/from16 v7, v21

    .line 514
    :goto_5
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v11, "rec_ext"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_14

    .line 516
    :try_start_2
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v11, "rec_ext"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_b

    .line 518
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/netease/cc/screen_record/codec/CCRecorder;->enabeDrawWaterMark(Z)V

    :goto_6
    const/4 v6, 0x1

    goto/16 :goto_9

    .line 520
    :cond_b
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v12, "waterImage"

    if-eqz v11, :cond_c

    :try_start_3
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 524
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/netease/cc/screen_record/codec/CCRecorder;->enabeDrawWaterMark(Z)V

    goto :goto_6

    .line 526
    :cond_c
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v14, "waterImageWidth"

    if-eqz v11, :cond_f

    .line 527
    :try_start_4
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/netease/ntunisdk/SdkCcMoment;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_e

    const-string v11, "assets water image loaded"

    .line 529
    invoke-static {v8, v11}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v11, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/netease/cc/screen_record/codec/CCRecorder;->enabeDrawWaterMark(Z)V

    const-string v11, "offsetLeftTopX"

    const/4 v12, 0x0

    .line 531
    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v24

    const-string v11, "offsetLeftTopY"

    .line 532
    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v25

    const-string v11, "locationBase"

    .line 533
    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v26

    if-nez v24, :cond_d

    if-nez v25, :cond_d

    if-nez v26, :cond_d

    .line 535
    iget-object v11, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    const/16 v12, 0xc8

    invoke-virtual {v0, v14, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v6, v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setExternalWaterMarkBitmap(Landroid/graphics/Bitmap;I)V

    goto :goto_6

    .line 537
    :cond_d
    iget-object v11, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    const/16 v12, 0xc8

    invoke-virtual {v0, v14, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v23

    move-object/from16 v21, v11

    move-object/from16 v22, v6

    invoke-virtual/range {v21 .. v26}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setExternalWaterMarkBitmap(Landroid/graphics/Bitmap;IIII)V

    goto :goto_6

    :cond_e
    const-string v0, "assets water image not exist or fail to load"

    .line 541
    invoke-static {v8, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    const/4 v6, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v6, v11}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setExternalWaterMarkBitmap(Landroid/graphics/Bitmap;I)V

    .line 544
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-virtual {v0, v11}, Lcom/netease/cc/screen_record/codec/CCRecorder;->enabeDrawWaterMark(Z)V

    goto/16 :goto_6

    .line 547
    :cond_f
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 548
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 550
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 551
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_7

    :cond_10
    const/4 v11, 0x0

    :goto_7
    if-eqz v11, :cond_12

    const-string v6, "water image from storage loaded"

    .line 554
    invoke-static {v8, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v6, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lcom/netease/cc/screen_record/codec/CCRecorder;->enabeDrawWaterMark(Z)V

    const-string v6, "offsetLeftTopX"

    const/4 v12, 0x0

    .line 556
    invoke-virtual {v0, v6, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v24

    const-string v6, "offsetLeftTopY"

    .line 557
    invoke-virtual {v0, v6, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v25

    const-string v6, "locationBase"

    .line 558
    invoke-virtual {v0, v6, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v26

    if-nez v24, :cond_11

    if-nez v25, :cond_11

    if-nez v26, :cond_11

    .line 560
    iget-object v6, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    const/16 v12, 0xc8

    invoke-virtual {v0, v14, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v6, v11, v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setExternalWaterMarkBitmap(Landroid/graphics/Bitmap;I)V

    goto/16 :goto_6

    .line 562
    :cond_11
    iget-object v6, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    const/16 v12, 0xc8

    invoke-virtual {v0, v14, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v23

    move-object/from16 v21, v6

    move-object/from16 v22, v11

    invoke-virtual/range {v21 .. v26}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setExternalWaterMarkBitmap(Landroid/graphics/Bitmap;IIII)V

    goto/16 :goto_6

    :cond_12
    const-string v0, "water image from storage not exist or fail to load"

    .line 566
    invoke-static {v8, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    const/4 v6, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v6, v11}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setExternalWaterMarkBitmap(Landroid/graphics/Bitmap;I)V

    .line 569
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-virtual {v0, v11}, Lcom/netease/cc/screen_record/codec/CCRecorder;->enabeDrawWaterMark(Z)V

    goto/16 :goto_6

    .line 572
    :cond_13
    iget-object v6, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setExternalWaterMark(Ljava/lang/String;)V

    .line 573
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v6, 0x1

    :try_start_5
    invoke-virtual {v0, v6}, Lcom/netease/cc/screen_record/codec/CCRecorder;->enabeDrawWaterMark(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    const/4 v6, 0x1

    .line 576
    :goto_8
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    :cond_14
    const/4 v6, 0x1

    .line 580
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/netease/cc/screen_record/codec/CCRecorder;->enabeDrawWaterMark(Z)V

    .line 586
    :goto_9
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-virtual {v0, v10}, Lcom/netease/cc/screen_record/codec/CCRecorder;->enableDrawCCWaterMark(Z)V

    if-ltz v5, :cond_15

    .line 589
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-virtual {v0, v5}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setQuality(I)V

    .line 592
    :cond_15
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v5, "region"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v5, "cropRegion"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_b

    .line 618
    :cond_16
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/netease/cc/screen_record/codec/CCRecorder;->SetRecordRect(Landroid/graphics/RectF;)V

    :goto_a
    move-object/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v17, v7

    move-object v10, v15

    goto/16 :goto_d

    .line 593
    :cond_17
    :goto_b
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v5, "region"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_18

    .line 595
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v5, "cropRegion"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :cond_18
    if-nez v0, :cond_19

    const-string v0, "invalid json object for region"

    .line 598
    invoke-static {v8, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/netease/cc/screen_record/codec/CCRecorder;->SetRecordRect(Landroid/graphics/RectF;)V

    goto :goto_a

    :cond_19
    const-string v5, "x_ratio"

    const-string v10, "x"

    const-wide/16 v11, 0x0

    .line 602
    invoke-virtual {v0, v10, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    invoke-virtual {v0, v5, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    double-to-float v5, v10

    const-string v10, "y_ratio"

    const-string v11, "y"

    move-object v12, v7

    const-wide/16 v6, 0x0

    .line 603
    invoke-virtual {v0, v11, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-virtual {v0, v10, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v6, v6

    const-string v7, "w_ratio"

    move-object/from16 v19, v2

    move-object v14, v12

    move-object/from16 v10, v20

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    move/from16 v20, v3

    .line 604
    invoke-virtual {v0, v10, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-virtual {v0, v7, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    const-string v3, "h_ratio"

    move-object v10, v15

    move-object/from16 v7, v17

    move-object/from16 v17, v14

    .line 605
    invoke-virtual {v0, v7, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    invoke-virtual {v0, v3, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    double-to-float v0, v11

    cmpg-float v3, v2, v5

    if-ltz v3, :cond_1b

    cmpg-float v3, v0, v6

    if-ltz v3, :cond_1b

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_1b

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1a

    goto :goto_c

    .line 611
    :cond_1a
    iget-object v3, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v5, v6, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v7}, Lcom/netease/cc/screen_record/codec/CCRecorder;->SetRecordRect(Landroid/graphics/RectF;)V

    goto :goto_d

    :cond_1b
    :goto_c
    const-string v0, "invalid x/y/w/h for region"

    .line 608
    invoke-static {v8, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/netease/cc/screen_record/codec/CCRecorder;->SetRecordRect(Landroid/graphics/RectF;)V

    .line 621
    :goto_d
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v2, "lutImage"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v2, "lut_image"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_f

    .line 636
    :cond_1c
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setLut(Landroid/graphics/Bitmap;I)V

    :goto_e
    const/4 v5, 0x0

    goto :goto_10

    .line 622
    :cond_1d
    :goto_f
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v2, "lutImage"

    iget-object v3, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v5, "lut_image"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 623
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 625
    iget-object v3, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v5, "lutLevel"

    iget-object v6, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v7, "lut_level"

    const/16 v11, 0xa

    invoke-virtual {v6, v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 627
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1e

    const-wide/16 v5, 0x0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v11

    cmp-long v2, v5, v11

    if-gez v2, :cond_1e

    .line 628
    iget-object v2, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setLut(Landroid/graphics/Bitmap;I)V

    goto :goto_e

    :cond_1e
    const-string v0, "lutImage invalid, lut function disable"

    .line 631
    invoke-static {v8, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setLut(Landroid/graphics/Bitmap;I)V

    .line 639
    :goto_10
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-ltz v13, :cond_22

    .line 640
    :cond_1f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 642
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 643
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 644
    invoke-virtual {v2, v10, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "scale"

    .line 645
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mode"

    .line 646
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "cover_image"

    .line 647
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_20
    if-ltz v13, :cond_21

    .line 650
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v19

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 653
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configRecorderSettings::::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v2, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->configRecorderSettings(Ljava/lang/String;)V

    .line 657
    :cond_22
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v2, "logPath"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 658
    iget-object v2, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    const/4 v3, 0x1

    goto :goto_11

    :cond_23
    const/4 v3, 0x0

    :goto_11
    invoke-virtual {v2, v3, v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->enableLog(ZLjava/lang/String;)V

    .line 660
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    iget-object v2, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v3, "frameInterval"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setIFrameInterval(F)V

    .line 662
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    move-object/from16 v7, v17

    invoke-virtual {v0, v7}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setMoviePath(Ljava/lang/String;)V

    .line 663
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    if-nez v16, :cond_24

    const/4 v5, 0x1

    :cond_24
    invoke-virtual {v0, v5}, Lcom/netease/cc/screen_record/codec/CCRecorder;->enableRecordAudio(Z)V

    .line 665
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    iget-object v2, v1, Lcom/netease/ntunisdk/SdkCcMoment;->myCtx:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/netease/cc/screen_record/codec/CCRecorder;->startRecord(Landroid/app/Activity;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_12

    :catch_0
    move-exception v0

    .line 668
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_12
    return-void
.end method

.method private stopRecord()V
    .locals 3

    .line 436
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->stopRecord()I

    move-result v0

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdkCcMoment"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 441
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "MEDIA_PROJECTION_MANAGER_IN_USE"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private transcodeVideo(Lorg/json/JSONObject;)V
    .locals 1

    .line 686
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkCcMoment;->newTrimInstance()V

    .line 688
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mTrimVideo:Lcom/netease/cc/videoedit/TrimVideo;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/TrimVideo;->transcodeVideoByMediaCodec(Lorg/json/JSONObject;)I

    return-void
.end method

.method private trim()V
    .locals 6

    .line 692
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkCcMoment;->newTrimInstance()V

    .line 694
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v1, "fileInput"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 695
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v2, "fileOutput"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 696
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v3, "start"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 697
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v4, "end"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x3e8

    if-lt v2, v4, :cond_0

    .line 700
    div-int/lit16 v2, v2, 0x3e8

    :cond_0
    if-lt v3, v4, :cond_1

    .line 703
    div-int/lit16 v3, v3, 0x3e8

    :cond_1
    if-gt v3, v2, :cond_2

    add-int/lit8 v3, v2, 0x1

    :cond_2
    const/4 v4, -0x1

    .line 711
    :try_start_0
    iget-object v5, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mTrimVideo:Lcom/netease/cc/videoedit/TrimVideo;

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/netease/cc/videoedit/TrimVideo;->trim(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 713
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 717
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 719
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 722
    :goto_1
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkCcMoment;->extendFuncCall(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "size"

    const-string v3, "pollPath"

    const-string v4, "voiceData"

    const-string v5, "pushPath"

    .line 206
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extendFunc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SdkCcMoment"

    invoke-static {v7, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-ge v6, v8, :cond_0

    const-string v0, "only support devices in android 5 or above"

    .line 208
    invoke-static {v7, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 212
    :cond_0
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "methodId"

    .line 213
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    sget-object v8, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v0, "not for this"

    .line 216
    invoke-static {v7, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 220
    :cond_1
    iget-object v8, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    if-nez v8, :cond_2

    const-string v0, "null recorder."

    .line 221
    invoke-static {v7, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 225
    :cond_2
    iput-object v6, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    .line 226
    iget-object v8, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v9, "muteAudio"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 227
    iget-object v9, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mMomentJsonObj:Lorg/json/JSONObject;

    const-string v11, "needPermission"

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    :goto_0
    const-string v9, "startRecord"

    .line 229
    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_4

    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->myCtx:Landroid/content/Context;

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v8, :cond_4

    .line 232
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/netease/ntunisdk/SdkCcMoment$1;

    invoke-direct {v2, v1}, Lcom/netease/ntunisdk/SdkCcMoment$1;-><init>(Lcom/netease/ntunisdk/SdkCcMoment;)V

    new-instance v3, Lcom/netease/ntunisdk/SdkCcMoment$2;

    invoke-direct {v3, v1}, Lcom/netease/ntunisdk/SdkCcMoment$2;-><init>(Lcom/netease/ntunisdk/SdkCcMoment;)V

    invoke-static {v0, v2, v3}, Lcom/netease/ntunisdk/CcMtPermissionUtil;->showDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_3

    .line 255
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkCcMoment;->startRecord()V

    goto/16 :goto_3

    :cond_5
    const-string v8, "stopRecord"

    .line 258
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 259
    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkCcMoment;->stopRecord()V

    goto/16 :goto_3

    :cond_6
    const-string v8, "resumeRecord"

    .line 261
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "pauseRecord"

    if-nez v8, :cond_19

    :try_start_1
    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto/16 :goto_2

    :cond_7
    const-string v8, "trimVideo"

    .line 264
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 265
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    :cond_8
    const-string v8, "mergeVideo"

    .line 267
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 268
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mWorkerHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const-string v3, "flag"

    invoke-virtual {v6, v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v2, v3, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3

    :cond_9
    const-string v8, "mergeVideoWithAudio"

    .line 271
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 272
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mWorkerHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    :cond_a
    const-string v8, "isRecording"

    .line 274
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 275
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mWorkerHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    :cond_b
    const-string v8, "initGameVoice"

    .line 277
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "result"

    if-eqz v8, :cond_c

    .line 278
    :try_start_2
    iget-object v13, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    const-string v0, "audioSampleRate"

    const v2, 0xac44

    .line 279
    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const-string v0, "channels"

    .line 280
    invoke-virtual {v6, v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    const-string v0, "bitsPerSample"

    const/16 v2, 0x10

    .line 281
    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v16

    const-string v0, "optionalSize"

    .line 282
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    const-string v0, "optionalAudioPollRateMs"

    .line 283
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    .line 278
    invoke-virtual/range {v13 .. v18}, Lcom/netease/cc/screen_record/codec/CCRecorder;->initGameVoice(IIIII)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 286
    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/SdkCcMoment;->extendFuncCall(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :cond_c
    :try_start_4
    const-string v8, "enableDebugVoice"

    .line 292
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v11, "enable"

    if-eqz v8, :cond_d

    .line 293
    :try_start_5
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 294
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    .line 295
    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 296
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-virtual {v0, v2, v4, v3}, Lcom/netease/cc/screen_record/codec/CCRecorder;->enableDebugVoice(ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    const-string v3, "pushGameVoiceData"

    .line 301
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 302
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 303
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 304
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1a

    .line 305
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [B

    .line 306
    :goto_1
    array-length v4, v3

    if-eq v10, v4, :cond_e

    .line 307
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 309
    :cond_e
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/netease/cc/screen_record/codec/CCRecorder;->pushGameVoiceData([BI)I

    move-result v0

    .line 310
    invoke-virtual {v6, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 311
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/SdkCcMoment;->extendFuncCall(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_f
    const-string v2, "setNewPermissionPolicyEnable"

    .line 315
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 316
    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 317
    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->SetNewPermissionPolicyEnable(Z)V

    goto/16 :goto_3

    :cond_10
    const-string v2, "mixAudio"

    .line 319
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 320
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mWorkerHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    :cond_11
    const-string v2, "createVideoCover"

    .line 322
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 323
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mWorkerHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    :cond_12
    const-string v2, "transcodeVideo"

    .line 325
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v0, "need_progress"

    const-string v2, "needProgress"

    .line 326
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->needTranscodeProgress:Z

    .line 327
    invoke-direct {v1, v6}, Lcom/netease/ntunisdk/SdkCcMoment;->transcodeVideo(Lorg/json/JSONObject;)V

    goto/16 :goto_3

    :cond_13
    const-string v2, "setParameter"

    .line 329
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v0, "id"

    .line 330
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 331
    iget-object v2, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setParameter(I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_14
    const-string v2, "setCcPropInt"

    .line 332
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v0, "propName"

    .line 333
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "propVal"

    .line 334
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 335
    iget-object v3, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-virtual {v3, v0, v2}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setPropInt(Ljava/lang/String;I)V

    goto :goto_3

    :cond_15
    const-string v2, "ccUnInitGameVoice"

    .line 336
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 337
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    if-eqz v0, :cond_16

    .line 338
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->unInitGameVoice()V

    goto :goto_3

    :cond_16
    const-string v0, "call ccUnInitGameVoice failed, because mRecorder is null."

    .line 340
    invoke-static {v7, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_17
    const-string v2, "ccTrimVideoEnableLog"

    .line 342
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 343
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 344
    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkCcMoment;->newTrimInstance()V

    .line 345
    iget-object v2, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mTrimVideo:Lcom/netease/cc/videoedit/TrimVideo;

    if-eqz v2, :cond_18

    .line 346
    iget-object v2, v1, Lcom/netease/ntunisdk/SdkCcMoment;->mTrimVideo:Lcom/netease/cc/videoedit/TrimVideo;

    invoke-virtual {v2, v0}, Lcom/netease/cc/videoedit/TrimVideo;->enableLog(Z)V

    goto :goto_3

    :cond_18
    const-string v0, "call ccTrimVideoEnableLog failed, because mTrimVideo is null."

    .line 348
    invoke-static {v7, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 262
    :cond_19
    :goto_2
    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {v1, v0}, Lcom/netease/ntunisdk/SdkCcMoment;->resumeOrPauseRecord(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 353
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_1
    :cond_1a
    :goto_3
    return-void
.end method

.method public varargs extendFunc(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendFunc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkCcMoment"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    const-string p1, "only support devices in android 5 or above"

    .line 361
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 365
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "methodId"

    .line 366
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 368
    sget-object v2, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 372
    :cond_1
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    if-nez v2, :cond_2

    const-string p1, "null recorder."

    .line 373
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v2, "pushGameVoiceData"

    .line 379
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eqz p2, :cond_8

    .line 380
    array-length p1, p2

    if-lez p1, :cond_8

    .line 381
    array-length p1, p2

    if-ne p1, v4, :cond_3

    .line 382
    aget-object p1, p2, v3

    check-cast p1, [B

    check-cast p1, [B

    .line 383
    iget-object p2, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    const-string v1, "size"

    array-length v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2, p1, v1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->pushGameVoiceData([BI)I

    move-result p1

    const-string p2, "result"

    .line 384
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 385
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkCcMoment;->extendFuncCall(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "call ntExtendFunc(json, byte[])"

    .line 388
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "setNotificationBuilder"

    .line 393
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p2, :cond_8

    .line 394
    array-length p1, p2

    if-lez p1, :cond_8

    .line 395
    array-length p1, p2

    if-ne p1, v4, :cond_5

    aget-object p1, p2, v3

    instance-of p1, p1, Landroid/app/Notification$Builder;

    if-eqz p1, :cond_5

    .line 396
    aget-object p1, p2, v3

    check-cast p1, Landroid/app/Notification$Builder;

    .line 397
    new-instance p2, Lcom/netease/ntunisdk/SdkCcMoment$3;

    invoke-direct {p2, p0, p1}, Lcom/netease/ntunisdk/SdkCcMoment$3;-><init>(Lcom/netease/ntunisdk/SdkCcMoment;Landroid/app/Notification$Builder;)V

    invoke-static {p2}, Lcom/netease/cc/screen_record/codec/CCRecorder;->SetNotificationBuilder(Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$NotificationBuilder;)V

    goto :goto_0

    :cond_5
    const-string p1, "call ntExtendFunc(json, android.app.Notification.Builder)"

    .line 405
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v1, "setRecordContext"

    .line 409
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p2, :cond_8

    .line 410
    array-length p1, p2

    if-ge v4, p1, :cond_8

    .line 413
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    const/16 v0, 0x100

    invoke-virtual {p1, v0, p2}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setParameter(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    const-string v1, "setParameter"

    .line 416
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 417
    array-length p1, p2

    if-gt v4, p1, :cond_8

    const-string p1, "id"

    .line 418
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 419
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setParameter(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 424
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_0
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "cc_moment"

    return-object v0
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkCcMoment;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SESSION"

    .line 167
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkCcMoment;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "not_login"

    return-object v0
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkCcMoment;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UIN"

    .line 175
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkCcMoment;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "20221227"

    return-object v0
.end method

.method protected getUniSDKVersion()Ljava/lang/String;
    .locals 1

    .line 947
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkCcMoment;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 3

    const-string v0, "SdkCcMoment"

    const-string v1, "init..."

    .line 106
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v1, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    const-string v2, "startRecord"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v1, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    const-string v2, "stopRecord"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v1, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    const-string v2, "resumeRecord"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v1, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    const-string v2, "pauseRecord"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v1, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    const-string v2, "setNewPermissionPolicyEnable"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v1, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    const-string v2, "trimVideo"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v1, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    const-string v2, "mergeVideo"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v1, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    const-string v2, "mergeVideoWithAudio"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v1, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    const-string v2, "isRecording"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v1, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    const-string v2, "initGameVoice"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v1, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    const-string v2, "pushGameVoiceData"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v1, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    const-string v2, "enableDebugVoice"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v1, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    const-string v2, "setNotificationBuilder"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v1, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    const-string v2, "mixAudio"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v1, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    const-string v2, "createVideoCover"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v1, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    const-string v2, "setRecordContext"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v1, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    const-string v2, "transcodeVideo"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v1, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    const-string v2, "setParameter"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v1, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    const-string v2, "setCcPropInt"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v1, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    const-string v2, "ccUnInitGameVoice"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v1, Lcom/netease/ntunisdk/SdkCcMoment;->sMethodSet:Ljava/util/HashSet;

    const-string v2, "ccTrimVideoEnableLog"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-static {}, Lcom/netease/cc/screen_record/codec/CCRecorder;->SharedCCRecorder()Lcom/netease/cc/screen_record/codec/CCRecorder;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    .line 130
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v1, p0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->SetRecordCallBack(Lcom/netease/cc/screen_record/codec/IRecordCallback;)V

    const/4 v0, 0x1

    .line 132
    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->SetNewPermissionPolicyEnable(Z)V

    goto :goto_0

    :cond_0
    const-string v1, "your devices is not support cc moment"

    .line 135
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_0
    new-instance v0, Lcom/netease/ntunisdk/SdkCcMoment$WorkerHandler;

    invoke-static {}, Lcom/netease/ntunisdk/HandlerThreadUtil;->getWorkerThread()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/netease/ntunisdk/SdkCcMoment$WorkerHandler;-><init>(Landroid/os/Looper;Lcom/netease/ntunisdk/SdkCcMoment;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mWorkerHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 142
    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    :cond_1
    return-void
.end method

.method public login()V
    .locals 2

    const-string v0, "UIN"

    const-string v1, "SdkCcMomentUid"

    .line 158
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkCcMoment;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SESSION"

    const-string v1, "SdkCcMomentSession"

    .line 159
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkCcMoment;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LOGIN_STAT"

    const/4 v1, 0x1

    .line 160
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkCcMoment;->setPropInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkCcMoment;->loginDone(I)V

    return-void
.end method

.method public logout()V
    .locals 0

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkCcMoment"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkCcMoment;->stopRecord()V

    .line 982
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "methodId"

    const-string v2, "errorRecord"

    .line 983
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "result"

    const/4 v2, 0x0

    .line 984
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "code"

    .line 985
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "error"

    .line 986
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 987
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkCcMoment;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 990
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onEvent(ILorg/json/JSONObject;)V
    .locals 2

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SdkCcMoment"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "methodId"

    const-string v0, "onEvent"

    .line 999
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1000
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkCcMoment;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1003
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3

    const-string v0, "SdkCcMoment"

    const-string v1, "onStart"

    .line 952
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "methodId"

    const-string v2, "startRecord"

    .line 955
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "result"

    const/4 v2, 0x1

    .line 956
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 957
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkCcMoment;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 960
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 3

    const-string v0, "SdkCcMoment"

    const-string v1, "onStop"

    .line 966
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "methodId"

    const-string v2, "stopRecord"

    .line 969
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 970
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkCcMoment;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 973
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onTranscodeCanceled()V
    .locals 3

    const-string v0, "onTranscodeCanceled"

    const-string v1, "SdkCcMoment"

    .line 1058
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "methodId"

    .line 1061
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1063
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1066
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onTranscodeCompleted(I)V
    .locals 3

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTranscodeCompleted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkCcMoment"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "methodId"

    const-string v2, "onTranscodeCompleted"

    .line 1012
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "code"

    .line 1013
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1015
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1018
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onTranscodeFailed(Ljava/lang/Throwable;)V
    .locals 3

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTranscodeFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkCcMoment"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "methodId"

    const-string v2, "onTranscodeFailed"

    .line 1028
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "throwable"

    .line 1029
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1031
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1034
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onTranscodeProgress(D)V
    .locals 3

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTranscodeProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkCcMoment"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->needTranscodeProgress:Z

    if-nez v0, :cond_0

    return-void

    .line 1045
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "methodId"

    const-string v2, "onTranscodeProgress"

    .line 1046
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "progress"

    .line 1047
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1049
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mMainHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1052
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public openManager()V
    .locals 0

    return-void
.end method

.method public sdkOnActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdkOnActivityResult..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkCcMoment"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkCcMoment;->mRecorder:Lcom/netease/cc/screen_record/codec/CCRecorder;

    if-eqz v0, :cond_0

    .line 200
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkCcMoment;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/netease/cc/screen_record/codec/CCRecorder;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)I

    :cond_0
    return-void
.end method

.method public sdkOnRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 930
    sget p2, Lcom/netease/ntunisdk/SdkCcMoment;->CODE_REQ_PERMISSION:I

    if-ne p2, p1, :cond_0

    .line 931
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkCcMoment;->startRecord()V

    :cond_0
    return-void
.end method

.method public upLoadUserInfo()V
    .locals 0

    return-void
.end method
