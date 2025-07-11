.class public Lcom/netease/ntunisdk/unilogger/network/UploadRequest;
.super Lcom/netease/ntunisdk/unilogger/network/BaseRequest;
.source "UploadRequest.java"


# instance fields
.field private final authKey:Ljava/lang/String;

.field private final authValue:Ljava/lang/String;

.field private uploadFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/netease/ntunisdk/unilogger/network/BaseRequest;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/netease/ntunisdk/unilogger/network/UploadRequest;->uploadFilePath:Ljava/lang/String;

    const-string v0, "unisdk"

    .line 18
    iput-object v0, p0, Lcom/netease/ntunisdk/unilogger/network/UploadRequest;->authKey:Ljava/lang/String;

    const-string v0, "uni@123"

    .line 19
    iput-object v0, p0, Lcom/netease/ntunisdk/unilogger/network/UploadRequest;->authValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createRequest(Lcom/netease/ntunisdk/okhttp3/RequestBody;)Lcom/netease/ntunisdk/okhttp3/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "unisdk"

    const-string v1, "uni@123"

    .line 39
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/okhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    invoke-direct {v1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;-><init>()V

    .line 41
    invoke-static {}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->isOversea()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://filecatch.nie.easebar.com/api/v1/log?project="

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://filecatch.nie.netease.com/api/v1/log?project="

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->realGameId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Authorization"

    .line 42
    invoke-virtual {v1, v2, v0}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->post(Lcom/netease/ntunisdk/okhttp3/RequestBody;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public createRequestBody()Lcom/netease/ntunisdk/okhttp3/RequestBody;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadRequest net [createRequestBody] uploadFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/unilogger/network/UploadRequest;->uploadFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/ntunisdk/unilogger/network/UploadRequest;->uploadFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "application/ontet-stream"

    .line 30
    invoke-static {v1}, Lcom/netease/ntunisdk/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/okhttp3/RequestBody;->create(Lcom/netease/ntunisdk/okhttp3/MediaType;Ljava/io/File;)Lcom/netease/ntunisdk/okhttp3/RequestBody;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;

    invoke-direct {v1}, Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;-><init>()V

    sget-object v2, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->FORM:Lcom/netease/ntunisdk/okhttp3/MediaType;

    .line 32
    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;->setType(Lcom/netease/ntunisdk/okhttp3/MediaType;)Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/network/UploadRequest;->uploadFilePath:Ljava/lang/String;

    const-string v3, "log"

    .line 33
    invoke-virtual {v1, v3, v2, v0}, Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/okhttp3/RequestBody;)Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;->build()Lcom/netease/ntunisdk/okhttp3/MultipartBody;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lcom/netease/ntunisdk/okhttp3/Response;)V
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/netease/ntunisdk/unilogger/network/UploadRequest;->uploadFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/unilogger/network/UploadRequest;->callback(ILjava/lang/String;)V

    return-void

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->code()I

    move-result v1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploadRequest net [handleResponse] response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 60
    :try_start_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->body()Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploadRequest net [handleResponse] body="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/16 p1, 0xc8

    if-eq p1, v1, :cond_2

    const/16 p1, 0xc9

    if-ne p1, v1, :cond_1

    goto :goto_1

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/unilogger/network/UploadRequest;->uploadFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/unilogger/network/UploadRequest;->callback(ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 67
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/network/UploadRequest;->uploadFilePath:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/unilogger/network/UploadRequest;->callback(ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public setUploadFilePath(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/network/UploadRequest;->uploadFilePath:Ljava/lang/String;

    return-void
.end method
