.class public Lcom/netease/ntunisdk/core/skins/SkinSecurity;
.super Ljava/lang/Object;


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "d88039b97a993573bb6a2eccefbbe205"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "e54eb91a3c7e3493bf3fa0d739dd56f3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/netease/ntunisdk/core/skins/SkinSecurity;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/ntunisdk/core/skins/SkinSecurity;->a:Ljava/lang/String;

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/ntunisdk/core/skins/SkinSecurity;->b:Ljava/lang/String;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/netease/ntunisdk/core/skins/SkinSecurity;->c:J

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/netease/ntunisdk/core/skins/SkinSecurity;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->logStacktrace(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinSecurity;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/ntunisdk/core/skins/SkinSecurity;->b:Ljava/lang/String;

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "skin version:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/netease/ntunisdk/core/skins/SkinSecurity;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", packagename:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/ntunisdk/core/skins/SkinSecurity;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance p0, Ljava/util/jar/JarFile;

    invoke-direct {p0, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    const-string v0, "AndroidManifest.xml"

    invoke-virtual {p0, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v2, 0x800

    new-array v3, v2, [B

    invoke-virtual {p0, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0, v3, v1, v2}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object p0

    if-eqz p0, :cond_3

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "skin signature:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->md5([B)[B

    move-result-object v5

    invoke-static {v5}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->hexlify([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->md5([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->hexlify([B)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netease/ntunisdk/core/skins/SkinSecurity;->d:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string p0, "skin checkSignature:true"

    invoke-static {p0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :catchall_0
    :cond_3
    const-string p0, "skin checkSignature:false"

    invoke-static {p0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinSecurity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/SkinSecurity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public verifySkin(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-wide v2, p0, Lcom/netease/ntunisdk/core/skins/SkinSecurity;->c:J

    const-wide/16 v4, 0x13b

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "skin isSupport:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",minVersionCode:315"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/skins/SkinSecurity;->getVersionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1.0.0"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    :goto_1
    invoke-static {p1}, Lcom/netease/ntunisdk/core/skins/SkinSecurity;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    return v0

    :cond_1
    return v1
.end method
