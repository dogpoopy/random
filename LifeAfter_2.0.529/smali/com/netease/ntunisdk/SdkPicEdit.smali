.class public Lcom/netease/ntunisdk/SdkPicEdit;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "SdkPicEdit.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "pic_edit"

.field private static final REQUEST_QUERY_WRITE:I

.field private static final REQ_CODE:I

.field private static final TAG:Ljava/lang/String; = "SdkPicEdit"

.field private static final UNI_VERSION:Ljava/lang/String; = "1.6.3"

.field private static final VERSION:Ljava/lang/String; = "1.6.3"

.field private static final imageFormatSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private folder:Ljava/lang/String;

.field private jsonCache:Lorg/json/JSONObject;

.field private languageFromUniExtendFunc:Ljava/lang/String;

.field private lastLanguage:Ljava/lang/String;

.field private picEditContext:Landroid/content/Context;

.field private savedJsonInput:Lorg/json/JSONObject;

.field private savedMediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

.field private savedPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, -0x35a3dec6    # -3606606.5f

    .line 48
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/SdkPicEdit;->REQ_CODE:I

    const v0, 0x8cbeae5

    .line 49
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/SdkPicEdit;->REQUEST_QUERY_WRITE:I

    .line 153
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "png"

    const-string v2, "jpeg"

    const-string v3, "jpg"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/netease/ntunisdk/SdkPicEdit;->imageFormatSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    const-string p1, "INNER_MODE_NO_PAY"

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/SdkPicEdit;->setFeature(Ljava/lang/String;Z)V

    const-string p1, "INNER_MODE_SECOND_CHANNEL"

    .line 63
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/SdkPicEdit;->setFeature(Ljava/lang/String;Z)V

    const-string p1, "pic_edit"

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/SdkPicEdit;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/SdkPicEdit;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkPicEdit;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method private callback(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendFuncCall s: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkPicEdit"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkPicEdit;->extendFuncCall(Ljava/lang/String;)V

    return-void
.end method

.method private checkEditImage(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "path"

    .line 155
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "path does not exist"

    .line 158
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/SdkPicEdit;->injectEditError(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkPicEdit;->extendFuncCall(Ljava/lang/String;)V

    return-void

    .line 162
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkPicEdit;->checkParam(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 165
    :cond_1
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkPicEdit;->toPicLibActivity(Lorg/json/JSONObject;)V

    return-void
.end method

.method private checkOpenAlbumOrCamera(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkPicEdit;->checkParam(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkPicEdit;->toPicLibActivity(Lorg/json/JSONObject;)V

    return-void
.end method

.method private checkParam(Lorg/json/JSONObject;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "imageFormat"

    .line 176
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 178
    sget-object v1, Lcom/netease/ntunisdk/SdkPicEdit;->imageFormatSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unsupported image format"

    .line 179
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/SdkPicEdit;->injectEditError(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkPicEdit;->extendFuncCall(Ljava/lang/String;)V

    return v2

    :cond_0
    const-string v0, "quality"

    .line 184
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "clipRatio"

    .line 190
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    const-string v1, ":"

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 194
    array-length v1, v0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 196
    :try_start_0
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 197
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    const-string v0, "invalid clipRatio"

    .line 202
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/SdkPicEdit;->injectEditError(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkPicEdit;->extendFuncCall(Ljava/lang/String;)V

    return v2

    :cond_3
    const-string v0, "videoMaxSelectDuration"

    const/16 v1, 0xb4

    .line 207
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v2, :cond_4

    const-string v0, "invalid videoMaxSelectDuration"

    .line 209
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/SdkPicEdit;->injectEditError(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkPicEdit;->extendFuncCall(Ljava/lang/String;)V

    return v2

    :cond_4
    const-string v0, "videoMaxSelectSize"

    .line 213
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_5

    const-string v0, "invalid videoMaxSelectSize"

    .line 215
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/SdkPicEdit;->injectEditError(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkPicEdit;->extendFuncCall(Ljava/lang/String;)V

    return v2

    :cond_5
    return v3

    :cond_6
    :goto_1
    const-string v0, "quality is out of range"

    .line 186
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/SdkPicEdit;->injectEditError(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkPicEdit;->extendFuncCall(Ljava/lang/String;)V

    return v2
.end method

.method private cleanPhotoTemp(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonObject"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/ntunisdk/SdkPicEdit$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/SdkPicEdit$1;-><init>(Lcom/netease/ntunisdk/SdkPicEdit;Lorg/json/JSONObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private handleSaving()V
    .locals 2

    const-string v0, "SdkPicEdit"

    const-string v1, "handleSaving ->"

    .line 358
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/ntunisdk/-$$Lambda$SdkPicEdit$TDSYD8Kqjyn15xxqfv5koF6C2BA;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/-$$Lambda$SdkPicEdit$TDSYD8Kqjyn15xxqfv5koF6C2BA;-><init>(Lcom/netease/ntunisdk/SdkPicEdit;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 407
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private injectEditError(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "jsonObject",
            "error"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "result"

    const/4 v1, 0x2

    .line 223
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "platform"

    const-string v1, "android"

    .line 224
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "allNum"

    const/4 v1, 0x1

    .line 225
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "imageNum"

    .line 226
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "videoNum"

    const/4 v1, 0x0

    .line 227
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "msg"

    .line 228
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private noWritePermission2Save(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const-string v0, "msg"

    const-string v1, "result"

    const/16 v2, 0x8

    .line 235
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "code"

    .line 236
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "complete"

    const/4 v4, 0x1

    .line 237
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "index"

    .line 238
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "error"

    const-string v5, "\u65e0\u5199\u5165\u6743\u9650"

    .line 239
    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "success"

    const/4 v5, 0x0

    .line 240
    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 242
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedJsonInput:Lorg/json/JSONObject;

    const-string v6, "data"

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedJsonInput:Lorg/json/JSONObject;

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 244
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedJsonInput:Lorg/json/JSONObject;

    const-string v2, "platform"

    const-string v3, "android"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedJsonInput:Lorg/json/JSONObject;

    const-string v2, "allNum"

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 246
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedJsonInput:Lorg/json/JSONObject;

    const-string v2, "imageNum"

    invoke-virtual {p1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 247
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedJsonInput:Lorg/json/JSONObject;

    const-string v2, "videoNum"

    invoke-virtual {p1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 248
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedJsonInput:Lorg/json/JSONObject;

    const-string v2, "no permission"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 251
    :try_start_1
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedJsonInput:Lorg/json/JSONObject;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 252
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedJsonInput:Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 254
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 257
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedJsonInput:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkPicEdit;->callback(Ljava/lang/String;)V

    return-void
.end method

.method private saveMedia2Album(Lorg/json/JSONObject;)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonInput"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v3, "msg"

    const-string v4, "result"

    const-string v5, "SdkPicEdit"

    const-string v6, "saveMedia2Album"

    .line 261
    invoke-static {v5, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "path"

    .line 262
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "type"

    .line 263
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "folder"

    .line 264
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/netease/ntunisdk/SdkPicEdit;->folder:Ljava/lang/String;

    .line 265
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v10, 0x0

    if-nez v8, :cond_0

    iget-object v8, v1, Lcom/netease/ntunisdk/SdkPicEdit;->folder:Ljava/lang/String;

    const-string v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    iput-object v10, v1, Lcom/netease/ntunisdk/SdkPicEdit;->folder:Ljava/lang/String;

    :cond_1
    const-string v8, "image"

    .line 267
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v7, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->SINGLE_FRAME_IMAGE:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    goto :goto_0

    :cond_2
    const-string v8, "video"

    .line 268
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    goto :goto_0

    :cond_3
    move-object v7, v10

    .line 269
    :goto_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v11

    const-string v12, "LANGUAGE_CODE"

    invoke-interface {v11, v12, v9}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 274
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 275
    invoke-direct {v1, v9}, Lcom/netease/ntunisdk/SdkPicEdit;->transformLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 277
    :cond_4
    iget-object v9, v1, Lcom/netease/ntunisdk/SdkPicEdit;->languageFromUniExtendFunc:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 278
    iget-object v9, v1, Lcom/netease/ntunisdk/SdkPicEdit;->languageFromUniExtendFunc:Ljava/lang/String;

    invoke-direct {v1, v9}, Lcom/netease/ntunisdk/SdkPicEdit;->transformLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_5
    if-eqz v10, :cond_6

    .line 281
    iget-object v9, v1, Lcom/netease/ntunisdk/SdkPicEdit;->lastLanguage:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 282
    invoke-static {}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->clearStringCache()V

    .line 283
    iput-object v10, v1, Lcom/netease/ntunisdk/SdkPicEdit;->lastLanguage:Ljava/lang/String;

    .line 284
    invoke-static {v10}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->createLocal(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v9

    .line 285
    new-instance v10, Landroid/content/res/Configuration;

    iget-object v11, v1, Lcom/netease/ntunisdk/SdkPicEdit;->myCtx:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 286
    invoke-virtual {v10, v9}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 287
    iget-object v9, v1, Lcom/netease/ntunisdk/SdkPicEdit;->myCtx:Landroid/content/Context;

    invoke-virtual {v9, v10}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v9

    iput-object v9, v1, Lcom/netease/ntunisdk/SdkPicEdit;->picEditContext:Landroid/content/Context;

    .line 292
    :cond_6
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 293
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_d

    if-eqz v7, :cond_d

    .line 295
    iput-object v7, v1, Lcom/netease/ntunisdk/SdkPicEdit;->savedMediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    .line 296
    iput-object v2, v1, Lcom/netease/ntunisdk/SdkPicEdit;->savedJsonInput:Lorg/json/JSONObject;

    .line 297
    iput-object v6, v1, Lcom/netease/ntunisdk/SdkPicEdit;->savedPath:Ljava/lang/String;

    .line 298
    iget-object v6, v1, Lcom/netease/ntunisdk/SdkPicEdit;->myCtx:Landroid/content/Context;

    invoke-static {v6}, Lcom/netease/ntunisdk/piclib/utils/PermissionManager;->useTiramisuPermissions(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, v1, Lcom/netease/ntunisdk/SdkPicEdit;->myCtx:Landroid/content/Context;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    :cond_7
    const-string v6, "saveMedia2Album -> no permission"

    .line 301
    invoke-static {v5, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v5

    const-string v6, "UNISDK_PIC_EDIT_W_PERMISSION_TIPS"

    .line 303
    iget-object v7, v1, Lcom/netease/ntunisdk/SdkPicEdit;->picEditContext:Landroid/content/Context;

    if-nez v7, :cond_8

    iget-object v7, v1, Lcom/netease/ntunisdk/SdkPicEdit;->myCtx:Landroid/content/Context;

    :cond_8
    const-string v8, "picedit_need_permission_of_storage_write"

    invoke-static {v7, v8}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 302
    invoke-interface {v5, v6, v7}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 304
    iget-object v5, v1, Lcom/netease/ntunisdk/SdkPicEdit;->picEditContext:Landroid/content/Context;

    if-nez v5, :cond_9

    iget-object v5, v1, Lcom/netease/ntunisdk/SdkPicEdit;->myCtx:Landroid/content/Context;

    :cond_9
    const-string v6, "picedit_got_it"

    invoke-static {v5, v6}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 305
    iget-object v5, v1, Lcom/netease/ntunisdk/SdkPicEdit;->picEditContext:Landroid/content/Context;

    if-nez v5, :cond_a

    iget-object v5, v1, Lcom/netease/ntunisdk/SdkPicEdit;->myCtx:Landroid/content/Context;

    :cond_a
    const-string v6, "picedit_cancel"

    invoke-static {v5, v6}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 306
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v5

    const-string v6, "UNISDK_PIC_EDIT_REJECT_W_PERMISSION_TIPS"

    .line 307
    iget-object v7, v1, Lcom/netease/ntunisdk/SdkPicEdit;->picEditContext:Landroid/content/Context;

    if-nez v7, :cond_b

    iget-object v7, v1, Lcom/netease/ntunisdk/SdkPicEdit;->myCtx:Landroid/content/Context;

    :cond_b
    const-string v8, "picedit_reject_permission_of_storage_write_tip"

    invoke-static {v7, v8}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 306
    invoke-interface {v5, v6, v7}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/4 v13, 0x0

    .line 308
    sget v14, Lcom/netease/ntunisdk/SdkPicEdit;->REQUEST_QUERY_WRITE:I

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v15

    new-array v0, v12, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v13 .. v20}, Lcom/netease/ntunisdk/piclib/utils/PermissionRequest;->requestPermission(Landroid/app/Activity;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 299
    :cond_c
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkPicEdit;->handleSaving()V

    goto/16 :goto_6

    .line 311
    :cond_d
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v5, "videoNum"

    const-string v6, "imageNum"

    const-string v8, "allNum"

    const-string v11, "android"

    const-string v13, "platform"

    const-string v14, "data"

    const-string v15, "success"

    const-string v9, "error"

    const-string v12, "index"

    const-string v1, "complete"

    move-object/from16 v18, v5

    const-string v5, "code"

    move-object/from16 v19, v6

    const/4 v6, 0x1

    if-nez v0, :cond_10

    const/4 v0, 0x5

    .line 314
    :try_start_1
    invoke-virtual {v10, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 315
    invoke-virtual {v10, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 316
    invoke-virtual {v10, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 317
    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->parseErrorByCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 318
    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 320
    invoke-virtual {v2, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    .line 321
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "path does not exist"

    .line 322
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    invoke-virtual {v2, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    invoke-virtual {v2, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 325
    sget-object v0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->SINGLE_FRAME_IMAGE:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    move-object/from16 v1, v19

    if-ne v7, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_2

    :cond_e
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 326
    sget-object v0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-ne v7, v0, :cond_f

    move-object/from16 v0, v18

    const/4 v12, 0x1

    goto :goto_3

    :cond_f
    move-object/from16 v0, v18

    const/4 v12, 0x0

    :goto_3
    invoke-virtual {v2, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 327
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v1, p0

    :try_start_2
    invoke-direct {v1, v0}, Lcom/netease/ntunisdk/SdkPicEdit;->callback(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_4

    :cond_10
    move-object v6, v1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-nez v7, :cond_11

    const/16 v7, 0x63

    .line 331
    :try_start_3
    invoke-virtual {v10, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v5, 0x1

    .line 332
    invoke-virtual {v10, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 333
    invoke-virtual {v10, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "\u68c0\u67e5\u8f93\u5165"

    .line 334
    invoke-virtual {v10, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v5, 0x0

    .line 335
    invoke-virtual {v10, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 337
    invoke-virtual {v2, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v5, 0x2

    .line 338
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "check the media type"

    .line 339
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    invoke-virtual {v2, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v5, 0x1

    .line 341
    invoke-virtual {v2, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v5, 0x0

    .line 342
    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 343
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 344
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v1, p0

    :try_start_4
    invoke-direct {v1, v0}, Lcom/netease/ntunisdk/SdkPicEdit;->callback(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :cond_11
    move-object/from16 v1, p0

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_4
    const/4 v5, 0x2

    .line 348
    :try_start_5
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 349
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 351
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 353
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/ntunisdk/SdkPicEdit;->callback(Ljava/lang/String;)V

    :goto_6
    return-void
.end method

.method private toPicLibActivity(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonInput"
        }
    .end annotation

    const-string v0, "SdkPicEdit"

    const-string v1, "toPicLibActivity"

    .line 411
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    .line 417
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "LANGUAGE_CODE"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkPicEdit;->transformLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 422
    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkPicEdit;->languageFromUniExtendFunc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 423
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkPicEdit;->languageFromUniExtendFunc:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkPicEdit;->transformLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "language"

    .line 426
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    .line 431
    :cond_2
    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->setLanguage(Ljava/lang/String;)V

    .line 432
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkPicEdit;->myCtx:Landroid/content/Context;

    const-class v2, Lcom/netease/ntunisdk/piclib/PicLibActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 433
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "json"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkPicEdit;->myCtx:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    sget v1, Lcom/netease/ntunisdk/SdkPicEdit;->REQ_CODE:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private transformLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "language"
        }
    .end annotation

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transformLanguage -> language: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkPicEdit"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "ES_EUR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "ZH_HANT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "ZH_HANS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "ZH_TW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "ZH_HK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "ZH_CN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "TR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "TH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "RU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "PT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "KO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "JA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_c
    const-string v0, "IN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_d
    const-string v0, "FR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_e
    const-string v0, "ES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_f
    const-string v0, "EN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_10
    const-string v0, "DE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_11
    const-string v0, "AR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_12
    const-string v0, "PT_EUR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p1, ""

    goto :goto_1

    :pswitch_0
    const-string p1, "zh-Hant"

    goto :goto_1

    :pswitch_1
    const-string p1, "zh-Hans"

    goto :goto_1

    :pswitch_2
    const-string p1, "tr"

    goto :goto_1

    :pswitch_3
    const-string p1, "th"

    goto :goto_1

    :pswitch_4
    const-string p1, "ru"

    goto :goto_1

    :pswitch_5
    const-string p1, "ko"

    goto :goto_1

    :pswitch_6
    const-string p1, "ja"

    goto :goto_1

    :pswitch_7
    const-string p1, "id"

    goto :goto_1

    :pswitch_8
    const-string p1, "fr"

    goto :goto_1

    :pswitch_9
    const-string p1, "es"

    goto :goto_1

    :pswitch_a
    const-string p1, "en"

    goto :goto_1

    :pswitch_b
    const-string p1, "de"

    goto :goto_1

    :pswitch_c
    const-string p1, "ar"

    goto :goto_1

    :pswitch_d
    const-string p1, "pt"

    :goto_1
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x72b05b19 -> :sswitch_12
        0x831 -> :sswitch_11
        0x881 -> :sswitch_10
        0x8a9 -> :sswitch_f
        0x8ae -> :sswitch_e
        0x8cc -> :sswitch_d
        0x925 -> :sswitch_c
        0x937 -> :sswitch_b
        0x964 -> :sswitch_a
        0xa04 -> :sswitch_9
        0xa43 -> :sswitch_8
        0xa74 -> :sswitch_7
        0xa7e -> :sswitch_6
        0x5166b1c -> :sswitch_5
        0x5166bb4 -> :sswitch_4
        0x5166d34 -> :sswitch_3
        0x192a32ef -> :sswitch_2
        0x192a32f0 -> :sswitch_1
        0x7a7c3e91 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_d
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orderInfo"
        }
    .end annotation

    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    const-string v0, "channel"

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extendFunc json content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdkPicEdit"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "methodId"

    .line 79
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "setLanguage"

    .line 80
    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "language"

    .line 82
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/SdkPicEdit;->languageFromUniExtendFunc:Ljava/lang/String;

    return-void

    .line 85
    :cond_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pic_edit"

    .line 88
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, -0x1

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "openAlbum"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "requestPermission"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const-string v2, "saveAlbum"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "openCamera"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const-string v2, "cleanPhotoTemp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "editImage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    :cond_2
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v7, :cond_5

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_1

    .line 116
    :cond_3
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/SdkPicEdit;->cleanPhotoTemp(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 113
    :cond_4
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/SdkPicEdit;->checkEditImage(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 110
    :cond_5
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/SdkPicEdit;->checkOpenAlbumOrCamera(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 106
    :cond_6
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/SdkPicEdit;->saveMedia2Album(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 94
    :cond_7
    sget p1, Lcom/netease/ntunisdk/SdkPicEdit;->REQUEST_QUERY_WRITE:I

    const-string v0, "requestCode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 95
    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/utils/PermissionRequest;->handleRequestResult(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 96
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkPicEdit;->handleSaving()V

    goto :goto_1

    .line 98
    :cond_8
    invoke-direct {p0, v7}, Lcom/netease/ntunisdk/SdkPicEdit;->noWritePermission2Save(I)V

    goto :goto_1

    .line 101
    :cond_9
    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/utils/UniExtendFuncHandler;->notifyAllListener(Lorg/json/JSONObject;)V

    .line 102
    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/camera/RequestCallbackListener;->notifyAllListener(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70727e8f -> :sswitch_5
        -0x57c10723 -> :sswitch_4
        -0x79489f1 -> :sswitch_3
        0x94f32f2 -> :sswitch_2
        0x2c7fedbe -> :sswitch_1
        0x5a80c645 -> :sswitch_0
    .end sparse-switch
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "pic_edit"

    return-object v0
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.6.3"

    return-object v0
.end method

.method protected getUniSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.6.3"

    return-object v0
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onFinishInitListener"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 70
    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$handleSaving$0$SdkPicEdit()V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedJsonInput:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkPicEdit;->callback(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$handleSaving$1$SdkPicEdit()V
    .locals 10

    const-string v0, "msg"

    const-string v1, "result"

    const/4 v2, 0x2

    .line 361
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 362
    new-instance v4, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$MediaRelative;

    invoke-direct {v4}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$MediaRelative;-><init>()V

    iget-object v5, p0, Lcom/netease/ntunisdk/SdkPicEdit;->myCtx:Landroid/content/Context;

    iget-object v6, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedPath:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedMediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    iget-object v8, p0, Lcom/netease/ntunisdk/SdkPicEdit;->folder:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$MediaRelative;->insertMedia2Album(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;Ljava/lang/String;)Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    move-result-object v4

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    .line 369
    iget-object v6, v4, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    .line 370
    iget-object v4, v4, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move-object v4, v6

    :goto_0
    const-string v8, "code"

    .line 373
    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "complete"

    const/4 v9, 0x1

    .line 374
    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v8, "index"

    .line 375
    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "path"

    .line 376
    invoke-virtual {v3, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "uri"

    .line 377
    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "success"

    if-nez v5, :cond_1

    .line 379
    :try_start_1
    invoke-virtual {v3, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 381
    :cond_1
    invoke-virtual {v3, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "error"

    .line 382
    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->parseErrorByCode(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    :goto_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 386
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 388
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedJsonInput:Lorg/json/JSONObject;

    const-string v6, "data"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedJsonInput:Lorg/json/JSONObject;

    if-nez v5, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x2

    :goto_2
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz v5, :cond_3

    .line 391
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedJsonInput:Lorg/json/JSONObject;

    const-string v4, "failed to save media"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    :cond_3
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedJsonInput:Lorg/json/JSONObject;

    const-string v4, "platform"

    const-string v5, "android"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedJsonInput:Lorg/json/JSONObject;

    const-string v4, "allNum"

    invoke-virtual {v3, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 395
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedJsonInput:Lorg/json/JSONObject;

    const-string v4, "imageNum"

    iget-object v5, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedMediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    sget-object v6, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->SINGLE_FRAME_IMAGE:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 396
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedJsonInput:Lorg/json/JSONObject;

    const-string v4, "videoNum"

    iget-object v5, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedMediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    sget-object v6, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-ne v5, v6, :cond_5

    const/4 v7, 0x1

    :cond_5
    invoke-virtual {v3, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    .line 398
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    :try_start_2
    iget-object v4, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedJsonInput:Lorg/json/JSONObject;

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 401
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkPicEdit;->savedJsonInput:Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 403
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 406
    :goto_4
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkPicEdit;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/netease/ntunisdk/-$$Lambda$SdkPicEdit$UpRaGGBwX0fPf2o-E8PstKRi1XQ;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/-$$Lambda$SdkPicEdit$UpRaGGBwX0fPf2o-E8PstKRi1XQ;-><init>(Lcom/netease/ntunisdk/SdkPicEdit;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public login()V
    .locals 0

    return-void
.end method

.method public logout()V
    .locals 0

    return-void
.end method

.method public openManager()V
    .locals 0

    return-void
.end method

.method public sdkOnActivityResult(IILandroid/content/Intent;)V
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "i1",
            "intent"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "video"

    const-string v5, "code"

    const-string v6, "msg"

    const-string v7, "result"

    .line 439
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sdkOnActivityResult "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SdkPicEdit"

    invoke-static {v9, v8}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :try_start_0
    sget v10, Lcom/netease/ntunisdk/SdkPicEdit;->REQ_CODE:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    const-string v11, "cancel"

    const-string v12, "android"

    const-string v13, "platform"

    const-string v14, "videoNum"

    const-string v15, "imageNum"

    const-string v8, "allNum"

    move-object/from16 v16, v9

    if-ne v10, v0, :cond_8

    :try_start_1
    sget v9, Lcom/netease/ntunisdk/piclib/PicLibActivity;->RES_CODE:I

    if-ne v9, v2, :cond_8

    iget-object v9, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    if-eqz v9, :cond_8

    const/4 v0, 0x0

    .line 442
    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v0, -0x3e7

    const-string v9, "error"

    if-ne v2, v0, :cond_1

    .line 444
    :try_start_2
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    const/4 v2, 0x2

    invoke-virtual {v0, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 445
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 446
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v0, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 447
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v0, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 448
    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v2, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
    :cond_0
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v0, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/ntunisdk/SdkPicEdit;->callback(Ljava/lang/String;)V

    return-void

    :cond_1
    if-gez v2, :cond_2

    .line 456
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-virtual {v0, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 457
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 458
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v0, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 459
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v0, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 460
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v0, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v0, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 462
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/ntunisdk/SdkPicEdit;->callback(Ljava/lang/String;)V

    return-void

    .line 466
    :cond_2
    invoke-virtual {v3, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 469
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 470
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 471
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    move-object/from16 v18, v12

    if-eqz v17, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    move-object/from16 p2, v10

    .line 472
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v17, v13

    const-string v13, "complete"
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v19, v6

    .line 473
    :try_start_3
    iget v6, v12, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    move-object/from16 v20, v14

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ne v6, v14, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v10, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "index"

    .line 474
    iget v13, v12, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    invoke-virtual {v10, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 475
    iget-boolean v6, v12, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->isDirectlyEdited:Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v13, "success"

    if-nez v6, :cond_4

    :try_start_4
    iget-object v6, v12, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    if-nez v6, :cond_4

    const/4 v6, 0x4

    .line 476
    invoke-virtual {v10, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 477
    invoke-static {v6}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->parseErrorByCode(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v6, 0x0

    .line 478
    invoke-virtual {v10, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    .line 480
    invoke-virtual {v10, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v6, 0x1

    .line 481
    invoke-virtual {v10, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "uri"

    .line 482
    iget-object v13, v12, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    invoke-virtual {v10, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "path"

    .line 483
    iget-object v13, v12, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    invoke-virtual {v10, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 484
    iget-object v6, v12, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaTypeString:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v13, "type"

    if-eqz v6, :cond_5

    add-int/lit8 v11, v11, 0x1

    .line 486
    :try_start_5
    invoke-virtual {v10, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "cover"

    .line 487
    iget-object v13, v12, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->cover:Ljava/lang/String;

    invoke-virtual {v10, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 488
    iget v6, v12, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->duration:I

    int-to-double v12, v6

    const-wide v21, 0x408f400000000000L    # 1000.0

    div-double v12, v12, v21

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v6, v12

    const-string v12, "duration"

    .line 489
    invoke-virtual {v10, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_5
    const-string v6, "image"

    .line 490
    invoke-virtual {v10, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 492
    :goto_2
    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v10, p2

    move-object/from16 v13, v17

    move-object/from16 v12, v18

    move-object/from16 v6, v19

    move-object/from16 v14, v20

    goto/16 :goto_0

    :cond_6
    move-object/from16 v19, v6

    move-object/from16 v17, v13

    move-object/from16 v20, v14

    .line 494
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    const/4 v4, 0x1

    invoke-virtual {v0, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 495
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    const-string v4, "data"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 497
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    sub-int/2addr v2, v11

    invoke-virtual {v0, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 498
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    move-object/from16 v3, v20

    invoke-virtual {v0, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v4, v19

    goto :goto_3

    :cond_7
    move-object/from16 v19, v6

    move-object/from16 v18, v12

    move-object/from16 v17, v13

    move-object v3, v14

    .line 500
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    const/4 v2, 0x2

    invoke-virtual {v0, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 501
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 502
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v0, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 503
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 504
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    const-string v2, "no result"
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v4, v19

    :try_start_6
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 506
    :goto_3
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    move-object/from16 v6, v17

    move-object/from16 v5, v18

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 507
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/ntunisdk/SdkPicEdit;->callback(Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object/from16 v4, v19

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v4, v6

    goto :goto_4

    :cond_8
    move-object v4, v6

    move-object v5, v12

    move-object v6, v13

    move-object v3, v14

    if-ne v10, v0, :cond_9

    if-nez v2, :cond_9

    .line 508
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    if-eqz v0, :cond_9

    const/4 v2, 0x0

    .line 509
    invoke-virtual {v0, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 510
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 511
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 512
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v0, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 513
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 514
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v0, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/ntunisdk/SdkPicEdit;->callback(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v4, v6

    move-object/from16 v16, v9

    .line 518
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 519
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pic edit call back e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v16

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :try_start_7
    iget-object v2, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    const/4 v5, 0x2

    invoke-virtual {v2, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 522
    iget-object v2, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkPicEdit;->jsonCache:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/ntunisdk/SdkPicEdit;->callback(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 525
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pic edit call back e2: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public upLoadUserInfo()V
    .locals 0

    return-void
.end method
