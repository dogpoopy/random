.class public Lcom/netease/cc/videoedit/ConfigHelper;
.super Ljava/lang/Object;
.source "ConfigHelper.java"


# static fields
.field public static CCR_ENABLE_LOG:Ljava/lang/String; = "ccr_enable_native_log"

.field private static mEnableLog:Z = false

.field private static mLogConfigPath:Ljava/lang/String; = "/sdcard/CCR.properties"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogEnable()Z
    .locals 5

    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Lcom/netease/cc/videoedit/ConfigHelper;->mEnableLog:Z

    .line 17
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 18
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/netease/cc/videoedit/ConfigHelper;->mLogConfigPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "CCR"

    if-nez v3, :cond_0

    const-string v1, "videoedit. Read config. null file."

    .line 20
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 24
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    sget-object v0, Lcom/netease/cc/videoedit/ConfigHelper;->CCR_ENABLE_LOG:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netease/cc/videoedit/ConfigHelper;->CCR_ENABLE_LOG:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/netease/cc/videoedit/ConfigHelper;->mEnableLog:Z

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read config. ccr_enable_native_log="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/netease/cc/videoedit/ConfigHelper;->mEnableLog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    sget-boolean v0, Lcom/netease/cc/videoedit/ConfigHelper;->mEnableLog:Z

    return v0

    :catch_0
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method
