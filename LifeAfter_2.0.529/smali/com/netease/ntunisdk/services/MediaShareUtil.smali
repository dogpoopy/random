.class public Lcom/netease/ntunisdk/services/MediaShareUtil;
.super Ljava/lang/Object;
.source "MediaShareUtil.java"


# static fields
.field private static final METHODID_POST_MEDIA_UPDATE:Ljava/lang/String; = "postMediaStatusUpdate"

.field private static final METHODID_POST_VIDEO_UPDATE:Ljava/lang/String; = "postVideoStatusUpdate"

.field private static final SEGMENT_LENGTH:J = 0x400000L

.field private static final TAG:Ljava/lang/String; = "MediaShareUtil"

.field private static instance:Lcom/netease/ntunisdk/services/MediaShareUtil;


# instance fields
.field private final delayHandler:Landroid/os/Handler;

.field private jsonObject:Lorg/json/JSONObject;

.field private okHttpClient:Lokhttp3/OkHttpClient;

.field private final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/ntunisdk/base/SdkBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/services/MediaShareUtil;->delayHandler:Landroid/os/Handler;

    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/services/MediaShareUtil;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/services/MediaShareUtil;Lcom/netease/ntunisdk/UniTwitterApiClient;Ljava/io/File;Ljava/lang/String;Lcom/netease/ntunisdk/services/MediaModel;II)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p6}, Lcom/netease/ntunisdk/services/MediaShareUtil;->append2(Lcom/netease/ntunisdk/UniTwitterApiClient;Ljava/io/File;Ljava/lang/String;Lcom/netease/ntunisdk/services/MediaModel;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/services/MediaShareUtil;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/services/MediaShareUtil;->fail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/services/MediaShareUtil;Lcom/netease/ntunisdk/UniTwitterApiClient;Lcom/netease/ntunisdk/services/MediaModel;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/services/MediaShareUtil;->finalM(Lcom/netease/ntunisdk/UniTwitterApiClient;Lcom/netease/ntunisdk/services/MediaModel;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/services/MediaShareUtil;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/services/MediaShareUtil;->post(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/services/MediaShareUtil;Lcom/netease/ntunisdk/UniTwitterApiClient;Lcom/netease/ntunisdk/services/MediaModel;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/services/MediaShareUtil;->status(Lcom/netease/ntunisdk/UniTwitterApiClient;Lcom/netease/ntunisdk/services/MediaModel;)V

    return-void
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/services/MediaShareUtil;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/netease/ntunisdk/services/MediaShareUtil;->delayHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private append2(Lcom/netease/ntunisdk/UniTwitterApiClient;Ljava/io/File;Ljava/lang/String;Lcom/netease/ntunisdk/services/MediaModel;II)V
    .locals 11

    move-object v8, p0

    move/from16 v2, p5

    .line 124
    iget-object v0, v8, Lcom/netease/ntunisdk/services/MediaShareUtil;->okHttpClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lcom/twitter/sdk/android/core/internal/network/OAuth1aInterceptor;

    .line 127
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/twitter/sdk/android/core/SessionManager;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v3

    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/sdk/android/core/TwitterCore;->getAuthConfig()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/twitter/sdk/android/core/internal/network/OAuth1aInterceptor;-><init>(Lcom/twitter/sdk/android/core/Session;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, v8, Lcom/netease/ntunisdk/services/MediaShareUtil;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 132
    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/services/MediaShareUtil$2;

    move-object v5, p2

    move-object v6, p3

    invoke-direct {v0, p0, p3, v2, p2}, Lcom/netease/ntunisdk/services/MediaShareUtil$2;-><init>(Lcom/netease/ntunisdk/services/MediaShareUtil;Ljava/lang/String;ILjava/io/File;)V

    .line 157
    new-instance v1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v1}, Lokhttp3/MultipartBody$Builder;-><init>()V

    const-string v3, "command"

    const-string v4, "APPEND"

    .line 158
    invoke-virtual {v1, v3, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "segment_index"

    invoke-virtual {v1, v4, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-object v7, p4

    .line 160
    iget-object v3, v7, Lcom/netease/ntunisdk/services/MediaModel;->mediaIdString:Ljava/lang/String;

    const-string v4, "media_id"

    invoke-virtual {v1, v4, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    const/4 v3, 0x0

    const-string v4, "media"

    .line 161
    invoke-virtual {v1, v4, v3, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 163
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v3, "https://upload.twitter.com/1.1/media/upload.json"

    .line 164
    invoke-virtual {v0, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Content-Type"

    const-string v3, "multipart/form-data"

    .line 166
    invoke-virtual {v0, v1, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 168
    iget-object v1, v8, Lcom/netease/ntunisdk/services/MediaShareUtil;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    .line 169
    new-instance v10, Lcom/netease/ntunisdk/services/MediaShareUtil$3;

    move-object v0, v10

    move-object v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/netease/ntunisdk/services/MediaShareUtil$3;-><init>(Lcom/netease/ntunisdk/services/MediaShareUtil;IILcom/netease/ntunisdk/UniTwitterApiClient;Ljava/io/File;Ljava/lang/String;Lcom/netease/ntunisdk/services/MediaModel;)V

    invoke-interface {v9, v10}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private fail(Ljava/lang/String;)V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/netease/ntunisdk/services/MediaShareUtil;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaShareUtil"

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/services/MediaShareUtil;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :catch_0
    iget-object p1, p0, Lcom/netease/ntunisdk/services/MediaShareUtil;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, p0, Lcom/netease/ntunisdk/services/MediaShareUtil;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private finalM(Lcom/netease/ntunisdk/UniTwitterApiClient;Lcom/netease/ntunisdk/services/MediaModel;)V
    .locals 2

    .line 193
    invoke-virtual {p1}, Lcom/netease/ntunisdk/UniTwitterApiClient;->getMediaFinalService()Lcom/netease/ntunisdk/services/MediaFinalService;

    move-result-object v0

    .line 194
    iget-object p2, p2, Lcom/netease/ntunisdk/services/MediaModel;->mediaIdString:Ljava/lang/String;

    const-string v1, "FINALIZE"

    invoke-interface {v0, v1, p2}, Lcom/netease/ntunisdk/services/MediaFinalService;->finalM(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p2

    .line 195
    new-instance v0, Lcom/netease/ntunisdk/services/MediaShareUtil$4;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/services/MediaShareUtil$4;-><init>(Lcom/netease/ntunisdk/services/MediaShareUtil;Lcom/netease/ntunisdk/UniTwitterApiClient;)V

    invoke-interface {p2, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "."

    .line 280
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 281
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getInstance(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/services/MediaShareUtil;
    .locals 1

    .line 49
    sget-object v0, Lcom/netease/ntunisdk/services/MediaShareUtil;->instance:Lcom/netease/ntunisdk/services/MediaShareUtil;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/netease/ntunisdk/services/MediaShareUtil;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/services/MediaShareUtil;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    sput-object v0, Lcom/netease/ntunisdk/services/MediaShareUtil;->instance:Lcom/netease/ntunisdk/services/MediaShareUtil;

    .line 52
    :cond_0
    sget-object p0, Lcom/netease/ntunisdk/services/MediaShareUtil;->instance:Lcom/netease/ntunisdk/services/MediaShareUtil;

    return-object p0
.end method

.method private static getMimeType(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 268
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/ntunisdk/services/MediaShareUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 269
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "application/octet-stream"

    return-object p0
.end method

.method private post(Ljava/lang/String;)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/netease/ntunisdk/services/MediaShareUtil;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/services/MediaShareUtil;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "methodId"

    const-string v2, "postMediaStatusUpdate"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    iget-object v0, p0, Lcom/netease/ntunisdk/services/MediaShareUtil;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "media_ids"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    iget-object p1, p0, Lcom/netease/ntunisdk/services/MediaShareUtil;->jsonObject:Lorg/json/JSONObject;

    const-string v0, "srcMethodId"

    const-string v1, "postVideoStatusUpdate"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :catch_0
    iget-object p1, p0, Lcom/netease/ntunisdk/services/MediaShareUtil;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, p0, Lcom/netease/ntunisdk/services/MediaShareUtil;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->extendFunc(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private status(Lcom/netease/ntunisdk/UniTwitterApiClient;Lcom/netease/ntunisdk/services/MediaModel;)V
    .locals 2

    .line 226
    invoke-virtual {p1}, Lcom/netease/ntunisdk/UniTwitterApiClient;->getMediaStatusService()Lcom/netease/ntunisdk/services/MediaStatusService;

    move-result-object v0

    .line 227
    iget-object p2, p2, Lcom/netease/ntunisdk/services/MediaModel;->mediaIdString:Ljava/lang/String;

    const-string v1, "STATUS"

    invoke-interface {v0, v1, p2}, Lcom/netease/ntunisdk/services/MediaStatusService;->check(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p2

    .line 228
    new-instance v0, Lcom/netease/ntunisdk/services/MediaShareUtil$5;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/services/MediaShareUtil$5;-><init>(Lcom/netease/ntunisdk/services/MediaShareUtil;Lcom/netease/ntunisdk/UniTwitterApiClient;)V

    invoke-interface {p2, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method public setObj(Lorg/json/JSONObject;)Lcom/netease/ntunisdk/services/MediaShareUtil;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/netease/ntunisdk/services/MediaShareUtil;->jsonObject:Lorg/json/JSONObject;

    return-object p0
.end method

.method public shareVideo(Lcom/netease/ntunisdk/UniTwitterApiClient;)V
    .locals 11

    .line 88
    iget-object v0, p0, Lcom/netease/ntunisdk/services/MediaShareUtil;->jsonObject:Lorg/json/JSONObject;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v3, v5, v1

    if-ltz v3, :cond_0

    goto :goto_1

    .line 96
    :cond_0
    invoke-static {v4}, Lcom/netease/ntunisdk/services/MediaShareUtil;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v7, 0x400000

    .line 98
    div-long v9, v1, v7

    rem-long v7, v1, v7

    cmp-long v3, v5, v7

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    int-to-long v5, v3

    add-long/2addr v9, v5

    long-to-int v6, v9

    .line 100
    invoke-virtual {p1}, Lcom/netease/ntunisdk/UniTwitterApiClient;->getMediaInitService()Lcom/netease/ntunisdk/services/MediaInitService;

    move-result-object v3

    .line 101
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "INIT"

    const-string v5, "tweet_video"

    invoke-interface {v3, v2, v1, v0, v5}, Lcom/netease/ntunisdk/services/MediaInitService;->init(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v7

    .line 102
    new-instance v8, Lcom/netease/ntunisdk/services/MediaShareUtil$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/netease/ntunisdk/services/MediaShareUtil$1;-><init>(Lcom/netease/ntunisdk/services/MediaShareUtil;Lcom/netease/ntunisdk/UniTwitterApiClient;Ljava/io/File;Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    .line 92
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid video: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/services/MediaShareUtil;->fail(Ljava/lang/String;)V

    return-void
.end method
