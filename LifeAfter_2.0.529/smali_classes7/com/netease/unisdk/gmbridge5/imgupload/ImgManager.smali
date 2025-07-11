.class public Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager;
.super Ljava/lang/Object;
.source "ImgManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "gm_bridge ImgManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 23
    invoke-static {p0, p1, p2}, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager;->callbackInUIThread(Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;
    .param p2, "x2"    # Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;

    .line 23
    invoke-static {p0, p1, p2}, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager;->upload(Ljava/lang/String;Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;)V

    return-void
.end method

.method private static callbackInUIThread(Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "listener"    # Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;
    .param p1, "imageId"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;

    .line 91
    new-instance v0, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$2;-><init>(Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method public static createSuitableImgFile(Landroid/content/Context;Ljava/lang/Object;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imgUri"    # Ljava/lang/Object;
    .param p2, "sizeLimit"    # I

    .line 129
    invoke-static {p0, p1}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->createBitmap(Landroid/content/Context;Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 132
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    .line 134
    :cond_0
    const/4 v1, 0x0

    const-string v2, "gm_bridge ImgManager"

    if-nez v0, :cond_1

    .line 135
    const-string v3, "can\'t create a bitmap"

    invoke-static {v2, v3}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-object v1

    .line 140
    :cond_1
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge5/utils/FileUtil;->getImgSavePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "imgSavePath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 142
    const-string v4, "can\'t get a save path"

    invoke-static {v2, v4}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-object v1

    .line 146
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, p2}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 147
    return-object v3

    .line 149
    :cond_3
    const-string v4, "can\'t save bitmap"

    invoke-static {v2, v4}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-object v1
.end method

.method private static getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "cookieStr"    # Ljava/lang/String;

    .line 100
    const-string v0, ""

    .line 102
    .local v0, "cookie":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, "cookiesJSON":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 105
    .local v2, "cookieKey":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    .line 107
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 108
    .local v4, "key":Ljava/lang/String;
    const-string v8, "%s=%s;"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    nop

    .end local v4    # "key":Ljava/lang/String;
    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 111
    const-string v4, "gm_bridge ImgManager"

    const-string v6, "cookie = %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-static {v4, v6, v5}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v1    # "cookiesJSON":Lorg/json/JSONObject;
    .end local v2    # "cookieKey":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method private static upload(Ljava/lang/String;Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;)V
    .locals 9
    .param p0, "imgPath"    # Ljava/lang/String;
    .param p1, "upInfo"    # Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;
    .param p2, "listener"    # Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;

    .line 60
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 61
    .local v1, "client":Lokhttp3/OkHttpClient;
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v3, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 62
    invoke-virtual {v2, v3}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;->filefield:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;->filefield:Ljava/lang/String;

    const-string v5, "application/octet-stream"

    .line 63
    invoke-static {v5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v2

    .line 66
    .local v2, "requestBody":Lokhttp3/RequestBody;
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v4, p1, Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;->uploadUrl:Ljava/lang/String;

    .line 67
    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v4, "Cookie"

    iget-object v5, p1, Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;->cookies:Ljava/lang/String;

    .line 68
    invoke-static {v5}, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 69
    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 70
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 72
    .local v3, "request":Lokhttp3/Request;
    invoke-virtual {v1, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    .line 73
    .local v4, "response":Lokhttp3/Response;
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "responseStr":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 75
    const-string v6, "gm_bridge ImgManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "upload response = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string v7, "imageId"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "imageId":Ljava/lang/String;
    iget-object v8, p1, Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;->callback:Ljava/lang/String;

    invoke-static {p2, v7, v8}, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager;->callbackInUIThread(Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "imageId":Ljava/lang/String;
    goto :goto_0

    .line 80
    :cond_0
    iget-object v6, p1, Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;->callback:Ljava/lang/String;

    invoke-static {p2, v0, v6}, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager;->callbackInUIThread(Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 86
    .end local v1    # "client":Lokhttp3/OkHttpClient;
    .end local v2    # "requestBody":Lokhttp3/RequestBody;
    .end local v3    # "request":Lokhttp3/Request;
    .end local v4    # "response":Lokhttp3/Response;
    .end local v5    # "responseStr":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    iget-object v2, p1, Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;->callback:Ljava/lang/String;

    invoke-static {p2, v0, v2}, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager;->callbackInUIThread(Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge5/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    .line 87
    nop

    .line 88
    return-void

    .line 86
    :goto_1
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge5/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    throw v0
.end method

.method public static uploadImg(Landroid/content/Context;Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;Ljava/lang/Object;Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "upInfo"    # Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;
    .param p2, "imgUri"    # Ljava/lang/Object;
    .param p3, "listener"    # Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;

    .line 36
    if-nez p2, :cond_0

    .line 37
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;->callback:Ljava/lang/String;

    invoke-interface {p3, v0, v1}, Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;->onFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$1;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method
