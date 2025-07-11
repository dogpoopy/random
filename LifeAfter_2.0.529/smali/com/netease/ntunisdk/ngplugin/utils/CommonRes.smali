.class public Lcom/netease/ntunisdk/ngplugin/utils/CommonRes;
.super Ljava/lang/Object;
.source "CommonRes.java"


# static fields
.field public static final ANDROID_MANIFEST:Ljava/lang/String; = "AndroidManifest.xml"

.field private static volatile instance:Lcom/netease/ntunisdk/ngplugin/utils/CommonRes;


# instance fields
.field public isLoadFont:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/utils/CommonRes;->isLoadFont:Z

    return-void
.end method

.method public static getInstance()Lcom/netease/ntunisdk/ngplugin/utils/CommonRes;
    .locals 2

    .line 29
    sget-object v0, Lcom/netease/ntunisdk/ngplugin/utils/CommonRes;->instance:Lcom/netease/ntunisdk/ngplugin/utils/CommonRes;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/ngplugin/utils/CommonRes;->instance:Lcom/netease/ntunisdk/ngplugin/utils/CommonRes;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/netease/ntunisdk/ngplugin/utils/CommonRes;

    invoke-direct {v1}, Lcom/netease/ntunisdk/ngplugin/utils/CommonRes;-><init>()V

    sput-object v1, Lcom/netease/ntunisdk/ngplugin/utils/CommonRes;->instance:Lcom/netease/ntunisdk/ngplugin/utils/CommonRes;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/ngplugin/utils/CommonRes;->instance:Lcom/netease/ntunisdk/ngplugin/utils/CommonRes;

    return-object v0
.end method


# virtual methods
.method public copyFontFormAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 40
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/utils/CommonRes;->isLoadFont()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/16 v2, 0x400

    const/4 v3, 0x0

    .line 47
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 48
    new-instance p3, Ljava/util/zip/ZipInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p3, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :cond_1
    :try_start_1
    invoke-virtual {p3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 51
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unzip, name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    const-string v4, "AndroidManifest.xml"

    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    .line 80
    :try_start_2
    invoke-virtual {p3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v3

    .line 56
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "font.ttf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 57
    new-instance p1, Ljava/io/File;

    const-string v0, "plugin_font.ttf"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 59
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete result: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    :cond_3
    new-array p2, v2, [B

    .line 64
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 65
    :goto_1
    invoke-virtual {p3, p2, v3, v2}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_4

    .line 66
    invoke-virtual {v0, p2, v3, p1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 68
    :cond_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 69
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 70
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/ngplugin/utils/CommonRes;->setLoadFont(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    :try_start_4
    invoke-virtual {p3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return v1

    .line 80
    :cond_5
    :try_start_5
    invoke-virtual {p3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return v3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object p3, v0

    :goto_4
    if-eqz p3, :cond_6

    .line 80
    :try_start_6
    invoke-virtual {p3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception p2

    .line 83
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    :cond_6
    :goto_5
    throw p1

    :catch_4
    move-object p3, v0

    :catch_5
    if-eqz p3, :cond_7

    .line 80
    :try_start_7
    invoke-virtual {p3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_6
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_6
    return v3
.end method

.method public declared-synchronized isLoadFont()Z
    .locals 1

    monitor-enter p0

    .line 89
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/utils/CommonRes;->isLoadFont:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLoadFont(Z)V
    .locals 0

    monitor-enter p0

    .line 93
    :try_start_0
    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/utils/CommonRes;->isLoadFont:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
