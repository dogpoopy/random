.class public Lcom/netease/mpay/oversea/q;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 10

    const-string v0, "-"

    const-string v1, "_"

    const-string v2, ""

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    .line 2
    iput-boolean v3, p0, Lcom/netease/mpay/oversea/q;->g:Z

    .line 4
    iput-boolean v3, p0, Lcom/netease/mpay/oversea/q;->h:Z

    .line 5
    iput-boolean v3, p0, Lcom/netease/mpay/oversea/q;->i:Z

    .line 172
    iput v3, p0, Lcom/netease/mpay/oversea/q;->s:I

    .line 173
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/netease/mpay/oversea/q;->f:Landroid/content/Context;

    const/16 v5, 0x15

    const/4 v6, 0x1

    .line 179
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/netease/mpay/oversea/q;->f:Landroid/content/Context;

    .line 180
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 181
    invoke-virtual {v4, v7, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 183
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v7, p0, Lcom/netease/mpay/oversea/q;->a:Ljava/lang/String;

    .line 184
    iget v7, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/netease/mpay/oversea/q;->c:Ljava/lang/String;

    .line 185
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/netease/mpay/oversea/q;->d:Ljava/lang/String;

    .line 186
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v4, p0, Lcom/netease/mpay/oversea/q;->e:I

    .line 187
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    iput-boolean v9, p0, Lcom/netease/mpay/oversea/q;->g:Z

    if-lt v4, v8, :cond_1

    const/4 v3, 0x1

    .line 188
    :cond_1
    iput-boolean v3, p0, Lcom/netease/mpay/oversea/q;->h:Z

    .line 189
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v3, p0, Lcom/netease/mpay/oversea/q;->k:Ljava/lang/String;

    .line 190
    iput v7, p0, Lcom/netease/mpay/oversea/q;->l:I

    if-lt v7, v5, :cond_2

    .line 192
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netease/mpay/oversea/q;->m:Ljava/lang/String;

    goto :goto_1

    .line 194
    :cond_2
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    iput-object v3, p0, Lcom/netease/mpay/oversea/q;->m:Ljava/lang/String;

    .line 196
    :goto_1
    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    iput-object v3, p0, Lcom/netease/mpay/oversea/q;->n:Ljava/lang/String;

    .line 197
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v3, p0, Lcom/netease/mpay/oversea/q;->o:Ljava/lang/String;

    .line 198
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, p0, Lcom/netease/mpay/oversea/q;->p:Ljava/lang/String;

    .line 199
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/q;->j()Z

    move-result v3

    iput-boolean v3, p0, Lcom/netease/mpay/oversea/q;->i:Z

    .line 200
    invoke-static {p1}, Lcom/netease/mpay/oversea/h6;->i(Landroid/app/Activity;)I

    move-result p1

    iput p1, p0, Lcom/netease/mpay/oversea/q;->s:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v7, v5, :cond_3

    .line 203
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/q;->r:Ljava/lang/String;

    goto :goto_2

    .line 205
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/q;->r:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 209
    :catchall_0
    :try_start_2
    iput-object v2, p0, Lcom/netease/mpay/oversea/q;->r:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 212
    :goto_2
    :try_start_3
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/q;->q:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    .line 214
    :catchall_1
    :try_start_4
    iput-object v2, p0, Lcom/netease/mpay/oversea/q;->q:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_0
    nop

    .line 217
    iput-object v2, p0, Lcom/netease/mpay/oversea/q;->a:Ljava/lang/String;

    .line 218
    iput-object v2, p0, Lcom/netease/mpay/oversea/q;->c:Ljava/lang/String;

    .line 219
    iput-object v2, p0, Lcom/netease/mpay/oversea/q;->d:Ljava/lang/String;

    const/16 p1, 0x1c

    .line 220
    iput p1, p0, Lcom/netease/mpay/oversea/q;->e:I

    .line 221
    iput-boolean v6, p0, Lcom/netease/mpay/oversea/q;->g:Z

    .line 222
    sget-object p1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/q;->k:Ljava/lang/String;

    .line 223
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput p1, p0, Lcom/netease/mpay/oversea/q;->l:I

    .line 224
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    iput-object v3, p0, Lcom/netease/mpay/oversea/q;->m:Ljava/lang/String;

    .line 225
    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    iput-object v3, p0, Lcom/netease/mpay/oversea/q;->n:Ljava/lang/String;

    .line 226
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v3, p0, Lcom/netease/mpay/oversea/q;->o:Ljava/lang/String;

    .line 227
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, p0, Lcom/netease/mpay/oversea/q;->p:Ljava/lang/String;

    if-lt p1, v5, :cond_4

    .line 230
    :try_start_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/q;->r:Ljava/lang/String;

    goto :goto_4

    .line 232
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 233
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    move-object p1, v2

    :goto_3
    iput-object p1, p0, Lcom/netease/mpay/oversea/q;->r:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    .line 236
    :catchall_2
    iput-object v2, p0, Lcom/netease/mpay/oversea/q;->r:Ljava/lang/String;

    .line 239
    :goto_4
    :try_start_6
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/q;->q:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    .line 241
    :catchall_3
    iput-object v2, p0, Lcom/netease/mpay/oversea/q;->q:Ljava/lang/String;

    .line 245
    :goto_5
    :try_start_7
    iget-object p1, p0, Lcom/netease/mpay/oversea/q;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/q;->f:Landroid/content/Context;

    .line 246
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/q;->b:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_6

    .line 248
    :catch_1
    iput-object v2, p0, Lcom/netease/mpay/oversea/q;->b:Ljava/lang/String;

    .line 251
    :goto_6
    iget-object p1, p0, Lcom/netease/mpay/oversea/q;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s1;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/q;->j:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 9
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 10
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 11
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 12
    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/netease/mpay/oversea/n6;
    .locals 5

    const-string v0, "System-Info"

    .line 14
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "system_name"

    .line 16
    iget-boolean v3, p0, Lcom/netease/mpay/oversea/q;->i:Z

    if-eqz v3, :cond_0

    const-string v3, "harmony"

    goto :goto_0

    :cond_0
    const-string v3, "android"

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "system_version"

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/mpay/oversea/q;->l:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "instruction_architecture"

    .line 18
    iget-object v3, p0, Lcom/netease/mpay/oversea/q;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cpu_model"

    .line 19
    iget-object v3, p0, Lcom/netease/mpay/oversea/q;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "device_brand"

    .line 20
    iget-object v3, p0, Lcom/netease/mpay/oversea/q;->o:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "device_model"

    .line 21
    iget-object v3, p0, Lcom/netease/mpay/oversea/q;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "system_timezone"

    .line 22
    iget-object v3, p0, Lcom/netease/mpay/oversea/q;->q:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "system_lang"

    .line 23
    iget-object v3, p0, Lcom/netease/mpay/oversea/q;->r:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "gms_status"

    .line 24
    iget v3, p0, Lcom/netease/mpay/oversea/q;->s:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "system_run_platform"

    const-string v3, "a"

    .line 25
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYSTEM_INFO:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 28
    new-instance v3, Lcom/netease/mpay/oversea/a0;

    invoke-direct {v3, v0, v2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 31
    :catch_0
    new-instance v2, Lcom/netease/mpay/oversea/a0;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/q;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/mpay/oversea/q;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/q;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/q;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/q;->f:Landroid/content/Context;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/q;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/q;->j:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/q;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/q;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/q;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/mpay/oversea/q;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 1

    :try_start_0
    const-string v0, "ohos.system.version.SystemVersion"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method
