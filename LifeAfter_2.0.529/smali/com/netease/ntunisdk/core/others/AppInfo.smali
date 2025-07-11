.class public Lcom/netease/ntunisdk/core/others/AppInfo;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/netease/ntunisdk/core/others/AppInfo;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Landroid/content/Context;

.field private i:Z

.field private j:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->i:Z

    iput-boolean v0, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->j:Z

    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method public static getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

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

.method public static getInstance()Lcom/netease/ntunisdk/core/others/AppInfo;
    .locals 2

    sget-object v0, Lcom/netease/ntunisdk/core/others/AppInfo;->a:Lcom/netease/ntunisdk/core/others/AppInfo;

    if-nez v0, :cond_1

    const-class v0, Lcom/netease/ntunisdk/core/others/AppInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/core/others/AppInfo;->a:Lcom/netease/ntunisdk/core/others/AppInfo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/ntunisdk/core/others/AppInfo;

    invoke-direct {v1}, Lcom/netease/ntunisdk/core/others/AppInfo;-><init>()V

    sput-object v1, Lcom/netease/ntunisdk/core/others/AppInfo;->a:Lcom/netease/ntunisdk/core/others/AppInfo;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/core/others/AppInfo;->a:Lcom/netease/ntunisdk/core/others/AppInfo;

    return-object v0
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/Bitmap;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/core/others/AppInfo;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/core/others/AppInfo;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->h:Landroid/content/Context;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->f:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 5

    const-string v0, ""

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->h:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->h:Landroid/content/Context;

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v4, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->b:Ljava/lang/String;

    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->d:Ljava/lang/String;

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->e:Ljava/lang/String;

    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v4, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->f:I

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v3, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->g:I

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->i:Z

    iget v3, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->g:I

    if-lt v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    iput-object v0, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->e:Ljava/lang/String;

    const/16 v3, 0x1c

    iput v3, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->g:I

    iput-boolean v1, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->i:Z

    iput-boolean v2, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->j:Z

    :goto_3
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    iput-object v0, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public isAndroidQ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->i:Z

    return v0
.end method

.method public isExtraStorageReady()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->h:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0}, Lcom/netease/ntunisdk/core/others/Utils;->isSdCardReady(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isTarget29()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/core/others/AppInfo;->j:Z

    return v0
.end method
