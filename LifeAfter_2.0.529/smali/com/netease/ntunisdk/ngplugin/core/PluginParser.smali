.class public final Lcom/netease/ntunisdk/ngplugin/core/PluginParser;
.super Ljava/lang/Object;
.source "PluginParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginParser"


# instance fields
.field private final mHostContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginParser;->mHostContext:Landroid/content/Context;

    return-void
.end method

.method private createAssetManager(Ljava/io/File;)Landroid/content/res/AssetManager;
    .locals 7

    .line 135
    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 136
    const-class v1, Landroid/content/res/AssetManager;

    const-string v2, "addAssetPath"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-static {v1, v0, v2, v4, v3}, Lcom/netease/ntunisdk/ngplugin/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAssetManager Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PluginParser"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private createClassLoader(Ljava/io/File;)Ljava/lang/ClassLoader;
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginParser;->mHostContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "dex"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 106
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginParser;->mHostContext:Landroid/content/Context;

    const-string v3, "valibs"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 107
    new-instance v2, Ldalvik/system/DexClassLoader;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-class v3, Landroid/content/Context;

    .line 110
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, p1, v0, v1, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v2
.end method

.method private createResources(Ljava/io/File;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;)Landroid/content/res/Resources;
    .locals 9

    .line 118
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginParser;->mHostContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 119
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginParser;->createAssetManager(Ljava/io/File;)Landroid/content/res/AssetManager;

    move-result-object v3

    .line 120
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 121
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginParser;->mHostContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p3, :cond_1

    .line 122
    invoke-virtual {p3}, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->getPluginLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 123
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le p1, v1, :cond_0

    .line 124
    invoke-virtual {p3}, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->getPluginLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p3}, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->getPluginLocale()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 129
    :cond_1
    :goto_0
    new-instance p1, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;

    .line 130
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;-><init>(Landroid/content/res/Resources;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Ljava/lang/String;ZZ)V

    return-object p1
.end method

.method private getApkSignatures(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 72
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    const-string p1, "AndroidManifest.xml"

    .line 73
    invoke-virtual {v1, p1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v2, 0x800

    new-array v2, v2, [B

    .line 76
    invoke-virtual {v1, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 77
    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSignature read returnCode : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 80
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 82
    array-length v1, p1

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v2, p1, v4

    .line 83
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skin signature: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->md5([B)[B

    move-result-object v5

    invoke-static {v5}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->hexBytesToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 86
    invoke-static {v2}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->md5([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->hexBytesToString([B)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "skin checkSignature throw Throwable"

    .line 96
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 97
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "skin checkSignature throw Exception"

    .line 93
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 94
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    const-string p1, "skin checkSignature:false"

    .line 99
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public loadPlugin(Landroid/content/Context;Ljava/io/File;Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;)Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;
    .locals 4

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 44
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

    invoke-direct {v1}, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;-><init>()V

    .line 48
    new-instance v2, Landroid/content/pm/PackageInfo;

    invoke-direct {v2}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v2, v1, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 49
    iget-object v2, v1, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 50
    iget-object v2, v1, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 51
    iget-object v2, v1, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 52
    iget-object v2, v1, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 53
    iget-object v2, v1, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 54
    iget-object v2, v1, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/PermissionInfo;

    iput-object v3, v2, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 55
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/io/File;->setReadOnly()Z

    .line 59
    :cond_0
    new-instance p1, Lcom/netease/ntunisdk/ngplugin/core/PluginContext;

    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginParser;->mHostContext:Landroid/content/Context;

    invoke-direct {p1, v2, v1}, Lcom/netease/ntunisdk/ngplugin/core/PluginContext;-><init>(Landroid/content/Context;Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;)V

    iput-object p1, v1, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mPluginContext:Lcom/netease/ntunisdk/ngplugin/core/PluginContext;

    .line 60
    iget-object p1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p2, p1, p3}, Lcom/netease/ntunisdk/ngplugin/core/PluginParser;->createResources(Ljava/io/File;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;)Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, v1, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mResources:Landroid/content/res/Resources;

    .line 61
    iget-object p1, v1, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, v1, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mAssetManager:Landroid/content/res/AssetManager;

    .line 62
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/ngplugin/core/PluginParser;->createClassLoader(Ljava/io/File;)Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, v1, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mClassLoader:Ljava/lang/ClassLoader;

    .line 63
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/ngplugin/core/PluginParser;->getApkSignatures(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v1, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mSignatures:Ljava/util/ArrayList;

    return-object v1
.end method
