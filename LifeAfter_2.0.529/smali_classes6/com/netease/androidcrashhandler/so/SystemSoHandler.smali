.class public Lcom/netease/androidcrashhandler/so/SystemSoHandler;
.super Ljava/lang/Object;
.source "SystemSoHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;,
        Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;
    }
.end annotation


# static fields
.field public static final EXCEPTION:I = 0x2

.field public static final REQUEST_TOKEN_SUCESS:I = 0x4

.field public static SYSTEM_SO_PATH_32:Ljava/lang/String; = "/system/lib/"

.field public static SYSTEM_SO_PATH_64:Ljava/lang/String; = "/system/lib64/"

.field private static TAG:Ljava/lang/String; = "SystemSoHandler"

.field public static final UPLOADING:I = 0x3

.field private static UPLOAD_SUCCESS_SYSTEM_SO_FILE:Ljava/lang/String; = "uploadSuccessSystemSo.txt"

.field public static final UPLOAD_SUCESS:I = 0x1

.field private static sSystemSoHandler:Lcom/netease/androidcrashhandler/so/SystemSoHandler;


# instance fields
.field private mAllSystemSoUploadSucess:Z

.field private mCrashhunterSystemSoDir:Ljava/lang/String;

.field private mHasInit:Z

.field private mIndex:I

.field private mUnUploadSystemSoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;",
            ">;"
        }
    .end annotation
.end field

.field private mUploading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mUnUploadSystemSoList:Ljava/util/List;

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mHasInit:Z

    .line 39
    iput-object v0, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mCrashhunterSystemSoDir:Ljava/lang/String;

    .line 41
    iput-boolean v1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mAllSystemSoUploadSucess:Z

    .line 43
    iput-boolean v1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mUploading:Z

    .line 54
    iput v1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/netease/androidcrashhandler/so/SystemSoHandler;ILjava/lang/String;)Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->parseReponse(ILjava/lang/String;)Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/androidcrashhandler/so/SystemSoHandler;Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->upload(Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;)V

    return-void
.end method

.method static synthetic access$202(Lcom/netease/androidcrashhandler/so/SystemSoHandler;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mUploading:Z

    return p1
.end method

.method private addUploadSuccessSystemSo2File(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "trace"

    const-string v1, "SystemSoHandler [addUploadSuccessSystemSo2File] start"

    .line 162
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->getUploadSuccessSystemSo()Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    const-string v2, "systemSoName"

    .line 172
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 173
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mCrashhunterSystemSoDir:Ljava/lang/String;

    sget-object v2, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->UPLOAD_SUCCESS_SYSTEM_SO_FILE:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p1, p2, v2, v3}, Lcom/netease/androidcrashhandler/util/CUtil;->str2File(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SystemSoHandler [addUploadSuccessSystemSo2File] \u6700\u65b0\u672c\u5730\u6587\u4ef6\u8bb0\u5f55\u4e2d\uff0c\u4e0a\u4f20\u8fc7\u7684\u7cfb\u7edf\u5e93so="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 179
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemSoHandler [addUploadSuccessSystemSo2File] Exception = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p1, "SystemSoHandler [addUploadSuccessSystemSo2File] params error"

    .line 165
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addUploadSuccessSystemSo2File(Lorg/json/JSONArray;)V
    .locals 10

    const-string v0, "uuid"

    const-string v1, "name"

    const-string v2, "trace"

    const-string v3, "SystemSoHandler [addUploadSuccessSystemSo2File] start"

    .line 185
    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 187
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->getUploadSuccessSystemSo()Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    .line 195
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 196
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SystemSoHandler [addUploadSuccessSystemSo2File] info="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_1

    .line 199
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 200
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 201
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 202
    invoke-direct {p0, v5}, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->getParentDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 203
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SystemSoHandler [addUploadSuccessSystemSo2File] parentDir="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", soName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 208
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 213
    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mCrashhunterSystemSoDir:Ljava/lang/String;

    sget-object v1, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->UPLOAD_SUCCESS_SYSTEM_SO_FILE:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {p1, v0, v1, v4}, Lcom/netease/androidcrashhandler/util/CUtil;->str2File(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SystemSoHandler [addUploadSuccessSystemSo2File] \u6700\u65b0\u672c\u5730\u6587\u4ef6\u8bb0\u5f55\u4e2d\uff0c\u4e0a\u4f20\u8fc7\u7684\u7cfb\u7edf\u5e93so="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 217
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemSoHandler [addUploadSuccessSystemSo2File] Exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    const-string p1, "SystemSoHandler [addUploadSuccessSystemSo2File] param error"

    .line 188
    invoke-static {v2, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createUnit(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;
    .locals 11

    const-string v0, "trace"

    const-string v1, "SystemSoHandler [createUnit] start"

    .line 297
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 302
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getSoBuildId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 304
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    .line 308
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 309
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MD5"

    invoke-static {v2, v0}, Lcom/netease/androidcrashhandler/util/HashUtil;->calculateFileHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    move-wide v8, v5

    goto :goto_0

    :cond_1
    move-object v10, v1

    move-wide v8, v3

    :goto_0
    cmp-long v0, v3, v8

    if-eqz v0, :cond_2

    .line 312
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 313
    new-instance v0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v10}, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;-><init>(Lcom/netease/androidcrashhandler/so/SystemSoHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/so/SystemSoHandler;
    .locals 1

    .line 128
    sget-object v0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->sSystemSoHandler:Lcom/netease/androidcrashhandler/so/SystemSoHandler;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/so/SystemSoHandler;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->sSystemSoHandler:Lcom/netease/androidcrashhandler/so/SystemSoHandler;

    .line 132
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->sSystemSoHandler:Lcom/netease/androidcrashhandler/so/SystemSoHandler;

    return-object v0
.end method

.method private getParentDirPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "trace"

    const-string v1, "SystemSoHandler [getParentDirPath] start"

    .line 607
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 613
    :goto_0
    iget-object v2, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mUnUploadSystemSoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 614
    iget-object v2, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mUnUploadSystemSoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;

    if-eqz v2, :cond_1

    .line 615
    iget-object v3, v2, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mSoUuid:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 616
    iget-object p1, v2, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mParentDir:Ljava/lang/String;

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getUnUploadSystemSo(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "trace"

    const-string v1, "SystemSoHandler [getUnUploadSystemSo] start"

    .line 252
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 256
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->getUploadSuccessSystemSo()Lorg/json/JSONObject;

    move-result-object v2

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SystemSoHandler [getUnUploadSystemSo] \u672c\u5730\u6587\u4ef6\u8bb0\u5f55\u4e2d\uff0c\u4e0a\u4f20\u8fc7\u7684\u7cfb\u7edf\u5e93so ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 259
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_4

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 264
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 265
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 267
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->SYSTEM_SO_PATH_32:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 270
    sget-object v5, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->SYSTEM_SO_PATH_32:Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->createUnit(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 272
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->SYSTEM_SO_PATH_64:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 277
    sget-object v5, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->SYSTEM_SO_PATH_64:Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->createUnit(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 279
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 285
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemSoHandler [getUnUploadSystemSo] unUploadSystemSoList="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_4
    :goto_1
    const-string p1, "SystemSoHandler [getUnUploadSystemSo] params error"

    .line 260
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getUploadSuccessSystemSo()Lorg/json/JSONObject;
    .locals 4

    const-string v0, "trace"

    const-string v1, "SystemSoHandler [getUploadSuccessSystemSo] start"

    .line 223
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mCrashhunterSystemSoDir:Ljava/lang/String;

    sget-object v2, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->UPLOAD_SUCCESS_SYSTEM_SO_FILE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/CUtil;->file2Str(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 239
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemSoHandler [getUploadSuccessSystemSo] Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 136
    iget-boolean p1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mHasInit:Z

    if-nez p1, :cond_1

    const-string p1, "trace"

    const-string v0, "SystemSoHandler [init] start"

    .line 137
    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mHasInit:Z

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_system_so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mCrashhunterSystemSoDir:Ljava/lang/String;

    .line 143
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mCrashhunterSystemSoDir:Ljava/lang/String;

    sget-object v2, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->UPLOAD_SUCCESS_SYSTEM_SO_FILE:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 151
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemSoHandler [init] Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private nextUnUploadSystemSo()Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;
    .locals 2

    .line 384
    iget v0, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mIndex:I

    iget-object v1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mUnUploadSystemSoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mUnUploadSystemSoList:Ljava/util/List;

    iget v1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 388
    :goto_0
    iget v1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mIndex:I

    return-object v0
.end method

.method private parseReponse(ILjava/lang/String;)Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;
    .locals 15

    move-object v10, p0

    const-string v0, "expire_in"

    const-string v1, "token"

    const-string v2, "state"

    const-string v3, "so_list"

    const-string v4, "infos"

    const-string v5, "data"

    const-string v11, "trace"

    const-string v6, "SystemSoHandler [parseReponse] start"

    .line 467
    invoke-static {v11, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v12, 0x0

    if-eqz v6, :cond_0

    const-string v0, "SystemSoHandler [parseReponse] params is null"

    .line 470
    invoke-static {v11, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    .line 475
    :cond_0
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v7, p2

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 483
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v0, "SystemSoHandler [parseReponse] dataJson is null"

    .line 486
    invoke-static {v11, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    .line 490
    :cond_1
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    return-object v12

    .line 494
    :cond_2
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 496
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-gtz v5, :cond_3

    goto/16 :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 500
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 503
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 504
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move-object v9, v3

    goto :goto_0

    :cond_4
    move-object v9, v12

    :goto_0
    if-eqz v9, :cond_c

    .line 507
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-gtz v3, :cond_5

    goto/16 :goto_1

    :cond_5
    const/4 v3, -0x1

    .line 512
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 513
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    move v3, v2

    .line 516
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SystemSoHandler [parseReponse] state = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v2, v3, :cond_7

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemSoHandler [parseReponse] \u8be5so\u5df2\u4e0a\u4f20, soListArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-direct {p0, v9}, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->addUploadSuccessSystemSo2File(Lorg/json/JSONArray;)V

    .line 521
    new-instance v0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;

    invoke-direct {v0, p0, v3}, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;-><init>(Lcom/netease/androidcrashhandler/so/SystemSoHandler;I)V

    return-object v0

    :cond_7
    const/4 v2, 0x2

    if-ne v2, v3, :cond_8

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemSoHandler [parseReponse] \u83b7\u53d6token\u5f02\u5e38\uff0c\u9700\u91cd\u8bd5, soListArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    new-instance v0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;

    invoke-direct {v0, p0, v3}, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;-><init>(Lcom/netease/androidcrashhandler/so/SystemSoHandler;I)V

    return-object v0

    :cond_8
    const/4 v2, 0x3

    if-ne v2, v3, :cond_9

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemSoHandler [parseReponse] \u5176\u4ed6\u5ba2\u6237\u7aef\u4e0a\u4f20\u4e2d\uff0c\u9700\u91cd\u8bd5\uff0csoListArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    new-instance v0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;

    invoke-direct {v0, p0, v3}, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;-><init>(Lcom/netease/androidcrashhandler/so/SystemSoHandler;I)V

    return-object v0

    :cond_9
    const/4 v2, 0x4

    if-ne v2, v3, :cond_c

    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SystemSoHandler [parseReponse] \u7533\u8bf7\u6210\u529f\uff0c\u4e0a\u4f20, soListArray="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_1

    .line 541
    :cond_a
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 542
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 544
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const-wide/16 v0, 0x0

    cmp-long v2, v0, v7

    if-lez v2, :cond_b

    goto :goto_1

    .line 548
    :cond_b
    new-instance v0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object v1, v0

    move-object v2, p0

    move-object v4, v5

    move-wide v5, v13

    invoke-direct/range {v1 .. v9}, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;-><init>(Lcom/netease/androidcrashhandler/so/SystemSoHandler;ILjava/lang/String;JJLorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_c
    :goto_1
    return-object v12

    :catch_0
    move-exception v0

    .line 555
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemSoHandler [parseReponse] Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12
.end method

.method private requestToken(Landroid/content/Context;)V
    .locals 8

    const-string v0, "trace"

    const-string v1, "SystemSoHandler [requestToken] start"

    .line 393
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mUnUploadSystemSoList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemSoHandler [requestToken] mUnUploadSystemSoList="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mUnUploadSystemSoList:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->nextUnUploadSystemSo()Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SystemSoHandler [requestToken] unit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "name"

    .line 406
    iget-object v5, v1, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mSoName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "uuid"

    .line 407
    iget-object v5, v1, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mSoUuid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "size"

    .line 408
    iget-wide v5, v1, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mSoSize:J

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "md5"

    .line 409
    iget-object v1, v1, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mSoMd5:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 412
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    .line 415
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SystemSoHandler [requestToken] Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v2, v1

    :cond_0
    if-eqz v2, :cond_1

    .line 420
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemSoHandler [requestToken] \u5ba2\u6237\u7aef\u5c06\u8981\u83b7\u53d6token\u7684so\u5217\u8868="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    new-instance v0, Lcom/netease/androidcrashhandler/net/SystemSoTokenRequest;

    invoke-direct {v0, v2}, Lcom/netease/androidcrashhandler/net/SystemSoTokenRequest;-><init>(Lorg/json/JSONArray;)V

    .line 424
    new-instance v1, Lcom/netease/androidcrashhandler/so/SystemSoHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/androidcrashhandler/so/SystemSoHandler$1;-><init>(Lcom/netease/androidcrashhandler/so/SystemSoHandler;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/net/SystemSoTokenRequest;->registerRequestCallback(Lcom/netease/androidcrashhandler/net/RequestCallback;)V

    .line 453
    invoke-static {}, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->getInstances()Lcom/netease/androidcrashhandler/processCenter/TaskProxy;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->put(Ljava/util/concurrent/Callable;)Z

    goto :goto_2

    :cond_1
    const-string p1, "SystemSoHandler [requestToken] \u6ca1\u6709\u672a\u4e0a\u4f20\u7684\u7cfb\u7edf\u5e93so"

    .line 456
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private reuqestUploadSystemSo()Z
    .locals 7

    .line 321
    iget-object v0, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mUnUploadSystemSoList:Ljava/util/List;

    const/4 v1, 0x1

    const-string v2, "SystemSoHandler [reuqestUploadSystemSo] \u7ecf\u8fc7\u672c\u5730\u5bf9\u6bd4\u540e\uff0c\u9700\u8981\u4e0a\u4f20\u7684so="

    const-string v3, "trace"

    if-nez v0, :cond_4

    const-string v0, "SystemSoHandler [reuqestUploadSystemSo] start"

    .line 322
    invoke-static {v3, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getmSystemSoArray()Lorg/json/JSONArray;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 327
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-gtz v5, :cond_0

    goto :goto_1

    .line 332
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SystemSoHandler [reuqestUploadSystemSo] \u914d\u7f6e\u6587\u4ef6\u5185\u5bb9\u4e2d\uff0c\u9700\u8981\u4e0a\u4f20\u7684\u7cfb\u7edf\u5e93so="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-direct {p0, v0}, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->getUnUploadSystemSo(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mUnUploadSystemSoList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 336
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 341
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mUnUploadSystemSoList:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    :goto_0
    const-string v0, "SystemSoHandler [reuqestUploadSystemSo] \u914d\u7f6e\u6587\u4ef6\u8981\u6c42\u4e0a\u4f20\u7684\u7cfb\u7edf\u5e93so, \u672c\u673a\u5df2\u4e0a\u4f20\u8fc7\uff0c\u65e0\u6cd5\u518d\u6b21\u4e0a\u4f20"

    .line 337
    invoke-static {v3, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_3
    :goto_1
    const-string v0, "SystemSoHandler [reuqestUploadSystemSo] \u672c\u6b21\u65e0\u9700\u4e0a\u4f20\u7cfb\u7edf\u5e93so"

    .line 328
    invoke-static {v3, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 345
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mUnUploadSystemSoList:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private upload(Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;)V
    .locals 3

    const-string v0, "trace"

    const-string v1, "SystemSoHandler [upload] start"

    .line 565
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "SystemSoHandler [upload] upLoadUnit is null"

    .line 568
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 572
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemSoHandler [upload] start upLoadUnit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    new-instance v0, Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mUnUploadSystemSoList:Ljava/util/List;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mCrashhunterSystemSoDir:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;-><init>(Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;Ljava/util/List;Ljava/lang/String;)V

    .line 575
    new-instance p1, Lcom/netease/androidcrashhandler/so/SystemSoHandler$2;

    invoke-direct {p1, p0}, Lcom/netease/androidcrashhandler/so/SystemSoHandler$2;-><init>(Lcom/netease/androidcrashhandler/so/SystemSoHandler;)V

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/net/UploadSystemSoRequest;->registerRequestCallback(Lcom/netease/androidcrashhandler/net/RequestCallback;)V

    .line 598
    invoke-static {}, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->getInstances()Lcom/netease/androidcrashhandler/processCenter/TaskProxy;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->put(Ljava/util/concurrent/Callable;)Z

    return-void
.end method


# virtual methods
.method public uploadSystemSo(Landroid/content/Context;)V
    .locals 4

    .line 350
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mAllSystemSoUploadSucess:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mUploading:Z

    if-nez v0, :cond_4

    const-string v0, "trace"

    const-string v1, "SystemSoHandler [uploadSystemSo] start"

    .line 351
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lcom/netease/androidcrashhandler/util/WifiUtil;->isConnectNet()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/netease/androidcrashhandler/util/WifiUtil;->isConnectedWifi()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 358
    iput-boolean v1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mUploading:Z

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const-string p1, "SystemSoHandler [uploadSystemSo] param error"

    .line 361
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iput-boolean v2, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mUploading:Z

    return-void

    .line 366
    :cond_1
    invoke-direct {p0, p1}, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->init(Landroid/content/Context;)V

    .line 368
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->reuqestUploadSystemSo()Z

    move-result v3

    if-nez v3, :cond_2

    .line 371
    iput-boolean v1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mAllSystemSoUploadSucess:Z

    const-string p1, "SystemSoHandler [uploadSystemSo] \u6ca1\u6709\u9700\u8981\u4e0a\u4f20\u7684\u7cfb\u7edfso"

    .line 372
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iput-boolean v2, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->mUploading:Z

    return-void

    .line 377
    :cond_2
    invoke-direct {p0, p1}, Lcom/netease/androidcrashhandler/so/SystemSoHandler;->requestToken(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "SystemSoHandler [uploadSystemSo] \u7f51\u7edc\u672a\u8fde\u63a5 \u6216 \u975e\u5904\u4e8ewifi\u73af\u5883\uff0c\u65e0\u9700\u4e0a\u4f20"

    .line 354
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
