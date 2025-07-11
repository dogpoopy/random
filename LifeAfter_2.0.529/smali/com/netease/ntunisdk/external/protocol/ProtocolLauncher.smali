.class public Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;
.super Landroid/app/Activity;
.source "ProtocolLauncher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "L"


# instance fields
.field private gameLauncherActivity:Ljava/lang/String;

.field private mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-direct {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->gameLauncherActivity:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->gameLauncherActivity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->showProtocol()V

    return-void
.end method

.method private getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 340
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 341
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 342
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 345
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private hidSysNavigation()V
    .locals 7

    .line 313
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 315
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 316
    const-class v1, Landroid/view/View;

    const-string v2, "setSystemUiVisibility"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x2

    .line 317
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private initAsync()V
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$1;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 197
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private isDebug()Z
    .locals 4

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".BuildConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 277
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "DEBUG"

    .line 278
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    .line 279
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return v1

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 287
    :try_start_1
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "NtUniSdkDebug_key"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v2, v1, :cond_1

    return v1

    :cond_1
    if-ne v2, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 296
    :catch_1
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 298
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".data"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ntUniSDK"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "base"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "debug_log"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v2, :cond_3

    return v1

    :catch_2
    :cond_3
    return v0
.end method

.method private setBgImage()V
    .locals 3

    const-string v0, "protocol_launcher_bg"

    const-string v1, "drawable"

    .line 202
    invoke-static {p0, v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "L"

    const-string v1, "no res/protocol_launcher_bg"

    .line 204
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 208
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 209
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 210
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private setCutoutMode()V
    .locals 4

    .line 216
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 217
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_0

    .line 218
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_0

    .line 222
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "layoutInDisplayCutoutMode"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 223
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 225
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    :goto_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private showProtocol()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->gameLauncherActivity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "\u53c2\u6570gameLauncherActivity\u9519\u8bef"

    .line 234
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 238
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getInstance()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object v0

    .line 239
    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setCallback(Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;)V

    .line 270
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocolWhenLaunch()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 331
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0, v0, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->isDebug()Z

    move-result p1

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->setDebug(Z)V

    .line 53
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "L"

    const-string v0, "null != SdkMgr.getInst()"

    .line 54
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->finish()V

    return-void

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->hidSysNavigation()V

    .line 59
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->setCutoutMode()V

    const-string p1, "launcher_bg_color"

    const-string v0, "string"

    .line 62
    invoke-static {p0, p1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/high16 v0, -0x1000000

    if-lez p1, :cond_2

    .line 64
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "#"

    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :catch_0
    :cond_2
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->setBgImage()V

    .line 81
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->initAsync()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 325
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "L"

    const-string v1, "onDestroy"

    .line 326
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
