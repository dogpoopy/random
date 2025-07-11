.class public Lcom/netease/unisdk/gmbridge5/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# static fields
.field private static final GM_FILE_PREFIX:Ljava/lang/String; = "unisdk_gm_"

.field private static final ICON_DIR_NAME:Ljava/lang/String; = "gm_icon"

.field private static final PREFERENCES_KEY_GM_EXPIRETIME:Ljava/lang/String; = "gm_expiretime_"

.field private static final PREFERENCES_KEY_GM_RED_IDS:Ljava/lang/String; = "gm_red_ids_"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "uni_gm_bridge"

.field private static final TAG:Ljava/lang/String; = "gm_bridge DataManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGenTokenResponse:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mIndex:Ljava/lang/String;

.field private mMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRedMenuIds:Ljava/lang/String;

.field private mRoleId:Ljava/lang/String;

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mContext:Landroid/content/Context;

    .line 61
    const-string v0, "uni_gm_bridge"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRoleId:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private cacheOvertime()Z
    .locals 7

    .line 75
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gm_expiretime_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 77
    .local v0, "expireTime":J
    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    .line 78
    return v4

    .line 80
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    .line 82
    .local v2, "nowTime":J
    cmp-long v5, v2, v0

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private clear()V
    .locals 2

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mGenTokenResponse:Ljava/lang/String;

    .line 321
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mIndex:Ljava/lang/String;

    .line 322
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mHost:Ljava/lang/String;

    .line 323
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mToken:Ljava/lang/String;

    .line 324
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mMenus:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 325
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 326
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mMenus:Ljava/util/List;

    .line 328
    :cond_0
    return-void
.end method

.method private downloadIcon(Ljava/lang/String;Ljava/io/File;)Z
    .locals 9
    .param p1, "iconUrl"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .line 300
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 301
    .local v1, "request":Lokhttp3/Request;
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 302
    .local v2, "client":Lokhttp3/OkHttpClient;
    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    .line 303
    .local v3, "response":Lokhttp3/Response;
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v4

    .line 304
    .local v4, "in":Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 305
    .local v5, "out":Ljava/io/OutputStream;
    const/16 v6, 0x400

    new-array v6, v6, [B

    .line 307
    .local v6, "buf":[B
    :goto_0
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "len":I
    if-lez v7, :cond_0

    .line 308
    invoke-virtual {v5, v6, v0, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 311
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    const/4 v0, 0x1

    return v0

    .line 313
    .end local v1    # "request":Lokhttp3/Request;
    .end local v2    # "client":Lokhttp3/OkHttpClient;
    .end local v3    # "response":Lokhttp3/Response;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "buf":[B
    .end local v8    # "len":I
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadIcon error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gm_bridge DataManager"

    invoke-static {v3, v2}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private getCachePath()Ljava/lang/String;
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v1, "unisdk_gm_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getIcon(Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;Ljava/lang/String;)V
    .locals 6
    .param p1, "item"    # Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;
    .param p2, "iconUrl"    # Ljava/lang/String;

    .line 266
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    return-void

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIcon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge DataManager"

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v0, "uni_gm_f_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->decodeResource(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;->iconBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 274
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "gm_icon"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 275
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 276
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 278
    :cond_2
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 280
    .local v3, "iconFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 282
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->ICON_WIDTH:I

    sget v5, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->ICON_HEIGHT:I

    invoke-static {v1, v4, v5}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->decodeFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;->iconBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 285
    :cond_3
    invoke-direct {p0, p2, v3}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->downloadIcon(Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 287
    const-string v4, "downloadIcon iconUrl success"

    invoke-static {v1, v4}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->ICON_WIDTH:I

    sget v5, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->ICON_HEIGHT:I

    invoke-static {v1, v4, v5}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->decodeFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;->iconBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 290
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 291
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 296
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "iconFile":Ljava/io/File;
    :cond_5
    :goto_0
    return-void
.end method

.method private loadCacheData()V
    .locals 2

    .line 188
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->readCacheFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mGenTokenResponse:Ljava/lang/String;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mGenTokenResponse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge DataManager"

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->parseCacheData()V

    .line 191
    return-void
.end method

.method private parseCacheData()V
    .locals 3

    .line 235
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mGenTokenResponse:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "menu"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 237
    .local v1, "menuArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 238
    invoke-direct {p0, v1}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->parseMenu(Lorg/json/JSONArray;)V

    .line 240
    :cond_0
    const-string v2, "refer"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mIndex:Ljava/lang/String;

    .line 241
    const-string v2, "token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mToken:Ljava/lang/String;

    .line 242
    const-string v2, "host"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mHost:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "menuArray":Lorg/json/JSONArray;
    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseCacheData Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gm_bridge DataManager"

    invoke-static {v2, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private parseMenu(Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "menuArray"    # Lorg/json/JSONArray;

    .line 249
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 250
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 251
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mMenus:Ljava/util/List;

    .line 253
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 254
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 255
    .local v2, "menuItem":Lorg/json/JSONObject;
    new-instance v3, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;

    invoke-direct {v3}, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;-><init>()V

    .line 256
    .local v3, "item":Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;
    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;->id:Ljava/lang/String;

    .line 257
    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;->name:Ljava/lang/String;

    .line 258
    const-string v4, "url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;->url:Ljava/lang/String;

    .line 259
    const-string v4, "icon"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->getIcon(Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;Ljava/lang/String;)V

    .line 260
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mMenus:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    .end local v3    # "item":Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    .end local v1    # "i":I
    .end local v2    # "menuItem":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method private readCacheFile()Ljava/lang/String;
    .locals 3

    .line 216
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->getCachePath()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read cache : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gm_bridge DataManager"

    invoke-static {v2, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v1, "textFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lcom/netease/unisdk/gmbridge5/utils/FileUtil;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 222
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private saveCache()V
    .locals 8

    .line 194
    const-string v0, "gm_bridge DataManager"

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mGenTokenResponse:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    return-void

    .line 199
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mGenTokenResponse:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, "jsonData":Lorg/json/JSONObject;
    const-string v2, "expireTime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 201
    .local v2, "time":J
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 202
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gm_expiretime_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "save expireTime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->getCachePath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mGenTokenResponse:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/netease/unisdk/gmbridge5/utils/FileUtil;->writeFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 207
    const-string v5, "save cache data success"

    invoke-static {v0, v5}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v1    # "jsonData":Lorg/json/JSONObject;
    .end local v2    # "time":J
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    goto :goto_0

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveData Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private saveRedIds()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gm_red_ids_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    :goto_0
    return-void
.end method


# virtual methods
.method public addRedIds(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addRedIds : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge DataManager"

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    goto :goto_0

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    .line 95
    :goto_0
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->saveRedIds()V

    .line 96
    return-void

    .line 88
    :cond_2
    :goto_1
    return-void
.end method

.method public getMenus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mMenus:Ljava/util/List;

    return-object v0
.end method

.method public getRedIds()[Ljava/lang/String;
    .locals 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRedIds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge DataManager"

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0

    .line 111
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWholeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "refer"    # Ljava/lang/String;

    .line 162
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->cacheOvertime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "gm_bridge DataManager"

    const-string v1, "cacheOvertime"

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->clear()V

    .line 165
    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mGenTokenResponse:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->loadCacheData()V

    .line 170
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mIndex:Ljava/lang/String;

    return-object v0

    .line 173
    :cond_2
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 177
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRedMenu(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 121
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeRedId(Ljava/lang/String;)V
    .locals 7
    .param p1, "deleteId"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    goto :goto_2

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "ids":[Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    .line 133
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 134
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 135
    goto :goto_1

    .line 137
    :cond_1
    iget-object v5, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 138
    iput-object v4, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    goto :goto_1

    .line 140
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    .line 133
    .end local v4    # "id":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    .end local v0    # "ids":[Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->saveRedIds()V

    .line 147
    :cond_4
    return-void
.end method

.method public setGenTokenResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->clear()V

    .line 151
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mGenTokenResponse:Ljava/lang/String;

    .line 152
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->saveCache()V

    .line 153
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->parseCacheData()V

    .line 154
    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .locals 3
    .param p1, "roleId"    # Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRoleId:Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->clear()V

    .line 70
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gm_red_ids_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    .line 72
    :cond_0
    return-void
.end method
