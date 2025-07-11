.class public Lcom/netease/androidcrashhandler/net/UploadZipRequest;
.super Lcom/netease/androidcrashhandler/net/BaseRequest;
.source "UploadZipRequest.java"


# static fields
.field private static final BOUNDARY:Ljava/lang/String; = "--------------------------THISISHUANGJIEFENG"

.field private static final PREFIX:Ljava/lang/String; = "--"


# instance fields
.field private cfgFileContent:Lorg/json/JSONObject;

.field private mUploadUrl:Ljava/lang/String;

.field private zipFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/net/BaseRequest;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->zipFileName:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->cfgFileContent:Lorg/json/JSONObject;

    .line 33
    iput-object v0, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->mUploadUrl:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->zipFileName:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->cfgFileContent:Lorg/json/JSONObject;

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UploadZipRequest net [UploadZipRequest] cfgFileContent="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "trace"

    invoke-static {p2, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setZipFileMd5ToParams()V
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->zipFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "trace"

    if-eqz v0, :cond_0

    const-string v0, "UploadZipRequest net [setZipFileMd5ToParams] mZipFileName error"

    .line 47
    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->cfgFileContent:Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 56
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->zipFileName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 60
    invoke-static {v0}, Lcom/netease/androidcrashhandler/util/CUtil;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 63
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploadZipRequest net [setZipFileMd5ToParams] zipFileMd5 = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->cfgFileContent:Lorg/json/JSONObject;

    const-string v3, "zip_md5"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploadZipRequest net [setZipFileMd5ToParams] JSONException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string v0, "UploadZipRequest net [setZipFileMd5ToParams] mCfgFileContent error"

    .line 52
    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createRequest(Lcom/netease/ntunisdk/okhttp3/RequestBody;)Lcom/netease/ntunisdk/okhttp3/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->mUploadUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/init/InitProxy;->getUploadUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->mUploadUrl:Ljava/lang/String;

    .line 132
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadZipRequest net [createRequest] getUploadUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trace"

    invoke-static {v2, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v1, Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    invoke-direct {v1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;-><init>()V

    .line 134
    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->post(Lcom/netease/ntunisdk/okhttp3/RequestBody;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public createRequestBody()Lcom/netease/ntunisdk/okhttp3/RequestBody;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadZipRequest net [createRequestBody] zipFileName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->zipFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->zipFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->zipFileName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->cfgFileContent:Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->setZipFileMd5ToParams()V

    .line 87
    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->cfgFileContent:Lorg/json/JSONObject;

    const-string v1, "transid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getmCurrentParamsInfo()Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/entity/param/ParamsInfo;->getmParamsJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/netease/androidcrashhandler/thirdparty/deviceInfoModule/DeviceInfoProxy;->checkTransidValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/deviceInfoModule/DeviceInfoProxy;->createTransid()V

    .line 92
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/init/InitProxy;->getmTransid()Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->cfgFileContent:Lorg/json/JSONObject;

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    :cond_2
    new-instance v0, Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;

    const-string v1, "----------------------------THISISHUANGJIEFENG"

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    .line 99
    sget-object v1, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->FORM:Lcom/netease/ntunisdk/okhttp3/MediaType;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;->setType(Lcom/netease/ntunisdk/okhttp3/MediaType;)Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;

    .line 101
    iget-object v1, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->cfgFileContent:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 102
    iget-object v1, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->cfgFileContent:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 104
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 106
    iget-object v3, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->cfgFileContent:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "zip_upload_url"

    .line 107
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 108
    iput-object v3, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->mUploadUrl:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v4, "crash_time"

    .line 111
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 113
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 115
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    :cond_4
    :goto_1
    invoke-virtual {v0, v2, v3}, Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;

    goto :goto_0

    .line 122
    :cond_5
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->zipFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "application/octet-stream"

    .line 123
    invoke-static {v2}, Lcom/netease/ntunisdk/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/MediaType;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/okhttp3/RequestBody;->create(Lcom/netease/ntunisdk/okhttp3/MediaType;Ljava/io/File;)Lcom/netease/ntunisdk/okhttp3/RequestBody;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->zipFileName:Ljava/lang/String;

    const-string v3, "zipfile"

    invoke-virtual {v0, v3, v2, v1}, Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/okhttp3/RequestBody;)Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;

    .line 126
    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;->build()Lcom/netease/ntunisdk/okhttp3/MultipartBody;

    move-result-object v0

    return-object v0

    :cond_6
    :goto_2
    const-string v0, "UploadZipRequest net [createRequestBody] param error"

    .line 81
    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleResponse(Lcom/netease/ntunisdk/okhttp3/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "UploadZipRequest net [handleResponse] \u4fee\u6539zip\u5305\u4e0a\u4f20\u72b6\u6001"

    const-string v1, "UploadZipRequest net [handleResponse] zipFileName = "

    const-string v2, "trace"

    if-nez p1, :cond_0

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->zipFileName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \u4e0a\u4f20\u5931\u8d25"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {v2, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 145
    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->zipFileName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->callback(ILjava/lang/String;)V

    return-void

    .line 149
    :cond_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->code()I

    move-result v3

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->zipFileName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",  code="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc8

    if-ne v3, v1, :cond_2

    .line 154
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->zipFileName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UploadZipRequest net [handleResponse] \u5df2\u4e0a\u4f20\u6210\u529f\uff0c\u672c\u5730\u5220\u9664zip\u5305="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->zipFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 160
    :cond_1
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->zipFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".cfg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "UploadZipRequest net [handleResponse] delete cfg file"

    .line 162
    invoke-static {v2, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 167
    :cond_2
    invoke-static {v2, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->zipFileName:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/netease/androidcrashhandler/net/UploadZipRequest;->callback(ILjava/lang/String;)V

    if-ne v1, v3, :cond_5

    .line 172
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->body()Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 177
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 178
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 186
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadZipRequest net [onResponseHandle] \u8bf7\u6c42\u5185\u5bb9="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->getInstances()Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->flush()V

    goto :goto_1

    :cond_4
    const-string p1, "UploadZipRequest net [handleResponse] response InputStream is null"

    .line 191
    invoke-static {v2, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method
