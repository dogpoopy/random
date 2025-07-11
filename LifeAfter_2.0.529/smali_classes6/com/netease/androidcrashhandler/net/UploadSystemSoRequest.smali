.class public Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;
.super Lcom/netease/androidcrashhandler/net/BaseRequest;
.source "UploadSystemSoRequest.java"


# static fields
.field private static final BOUNDARY:Ljava/lang/String; = "--------------------------THISISHUANGJIEFENG"

.field private static final PREFIX:Ljava/lang/String; = "--"


# instance fields
.field private crashhunterSystemSoDir:Ljava/lang/String;

.field private unUploadSystemSoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;",
            ">;"
        }
    .end annotation
.end field

.field private upLoadUnit:Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;

.field private uploadFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;",
            "Ljava/util/List<",
            "Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/net/BaseRequest;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;->uploadFileList:Ljava/util/ArrayList;

    .line 39
    iput-object p1, p0, Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;->upLoadUnit:Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;

    .line 40
    iput-object p2, p0, Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;->unUploadSystemSoList:Ljava/util/List;

    .line 41
    iput-object p3, p0, Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;->crashhunterSystemSoDir:Ljava/lang/String;

    return-void
.end method

.method private deleteAllFile()V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;->uploadFileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;->uploadFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 136
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploadSystemSoRequest net [createRequestBody] \u5220\u9664gz\u6587\u4ef6\uff0c\u6587\u4ef6\u540d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trace"

    invoke-static {v2, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getParentDirPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadSystemSoRequest net [getParentDirPath] start, uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploadSystemSoRequest net [getParentDirPath] unUploadSystemSoList="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;->unUploadSystemSoList:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uuid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 58
    :goto_0
    iget-object v4, p0, Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;->unUploadSystemSoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 59
    iget-object v4, p0, Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;->unUploadSystemSoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UploadSystemSoRequest net [getParentDirPath] unit="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    .line 61
    iget-object v5, v4, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mSoUuid:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UploadSystemSoRequest net [getParentDirPath] unit.mParentDir="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mParentDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p1, v4, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mParentDir:Ljava/lang/String;

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method


# virtual methods
.method public createRequest(Lcom/netease/ntunisdk/okhttp3/RequestBody;)Lcom/netease/ntunisdk/okhttp3/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadSystemSoRequest net [createRequestBody] token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;->upLoadUnit:Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;

    iget-object v1, v1, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    invoke-direct {v0}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;->upLoadUnit:Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;

    iget-object v1, v1, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->mToken:Ljava/lang/String;

    const-string v2, "X-SYSSO-TOKEN"

    .line 126
    invoke-virtual {v0, v2, v1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "https://appdump.nie.netease.com/sys_so/upload"

    .line 127
    invoke-static {v1}, Lcom/netease/androidcrashhandler/util/CUtil;->getSuitableUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->post(Lcom/netease/ntunisdk/okhttp3/RequestBody;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public createRequestBody()Lcom/netease/ntunisdk/okhttp3/RequestBody;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "trace"

    const-string v1, "UploadSystemSoRequest net [createRequestBody] start"

    .line 72
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;->upLoadUnit:Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_0
    new-instance v1, Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;

    const-string v2, "----------------------------THISISHUANGJIEFENG"

    invoke-direct {v1, v2}, Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    .line 79
    sget-object v2, Lcom/netease/ntunisdk/okhttp3/MultipartBody;->FORM:Lcom/netease/ntunisdk/okhttp3/MediaType;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;->setType(Lcom/netease/ntunisdk/okhttp3/MediaType;)Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;

    .line 81
    iget-object v2, p0, Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;->upLoadUnit:Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;

    iget-object v2, v2, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->mUploadSoArray:Lorg/json/JSONArray;

    if-eqz v2, :cond_3

    .line 82
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x0

    .line 84
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 85
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "name"

    .line 87
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "uuid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_1

    .line 91
    :cond_1
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-direct {p0, v4}, Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;->getParentDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UploadSystemSoRequest net [createRequestBody] soName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", parentDir="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;->crashhunterSystemSoDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".gz"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/androidcrashhandler/zip/ZipUtil;->gZip(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 99
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "application/octet-stream"

    .line 102
    invoke-static {v7}, Lcom/netease/ntunisdk/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/MediaType;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/netease/ntunisdk/okhttp3/RequestBody;->create(Lcom/netease/ntunisdk/okhttp3/MediaType;Ljava/io/File;)Lcom/netease/ntunisdk/okhttp3/RequestBody;

    move-result-object v7

    .line 104
    new-instance v8, Lcom/netease/ntunisdk/okhttp3/Headers$Builder;

    invoke-direct {v8}, Lcom/netease/ntunisdk/okhttp3/Headers$Builder;-><init>()V

    .line 105
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "form-data; name=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\"; filename=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".gz\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Content-Disposition"

    invoke-virtual {v8, v10, v9}, Lcom/netease/ntunisdk/okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Headers$Builder;

    .line 106
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MD5"

    invoke-static {v10, v9}, Lcom/netease/androidcrashhandler/util/HashUtil;->calculateFileHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "x-sysso-hash"

    invoke-virtual {v8, v11, v9}, Lcom/netease/ntunisdk/okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Headers$Builder;

    .line 108
    invoke-virtual {v8}, Lcom/netease/ntunisdk/okhttp3/Headers$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/netease/ntunisdk/okhttp3/MultipartBody$Part;->create(Lcom/netease/ntunisdk/okhttp3/Headers;Lcom/netease/ntunisdk/okhttp3/RequestBody;)Lcom/netease/ntunisdk/okhttp3/MultipartBody$Part;

    move-result-object v7

    .line 109
    invoke-virtual {v1, v7}, Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;->addPart(Lcom/netease/ntunisdk/okhttp3/MultipartBody$Part;)Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;

    .line 111
    iget-object v7, p0, Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;->uploadFileList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UploadSystemSoRequest net [createRequestBody] fileKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".gz, x-sysso-hash="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/netease/androidcrashhandler/util/HashUtil;->calculateFileHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 118
    :cond_3
    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/MultipartBody$Builder;->build()Lcom/netease/ntunisdk/okhttp3/MultipartBody;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lcom/netease/ntunisdk/okhttp3/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "trace"

    const-string v1, "UploadSystemSoRequest net [handleResponse]"

    .line 144
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;->deleteAllFile()V

    if-eqz p1, :cond_2

    .line 148
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->code()I

    move-result v1

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploadSystemSoRequest net [handleResponse] code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->body()Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 158
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "utf-8"

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 159
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploadSystemSoRequest net [handleResponse] \u8bf7\u6c42\u7ed3\u679c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "UploadSystemSoRequest net [handleResponse] param error"

    .line 171
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    .line 174
    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;->callback(ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 p1, -0x2

    const-string v0, "EXCEPTION_ERROR"

    .line 177
    invoke-virtual {p0, p1, v0}, Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;->callback(ILjava/lang/String;)V

    :goto_2
    return-void
.end method
