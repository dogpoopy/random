.class public Lcom/netease/cc/screen_record/codec/ConfigHelper;
.super Ljava/lang/Object;
.source "ConfigHelper.java"


# static fields
.field public static CCR_ENABLE_LOG:Ljava/lang/String; = "ccr_enable_log"

.field public static CCR_LOG_ENCODER:Ljava/lang/String; = "ccr_log_enc"

.field public static CCR_LOG_LEVEL:Ljava/lang/String; = "ccr_log_level"

.field public static CCR_LOG_MIC:Ljava/lang/String; = "ccr_log_mic"

.field public static CCR_LOG_PATH:Ljava/lang/String; = "ccr_log_path"

.field public static CCR_LOG_RECORDER:Ljava/lang/String; = "ccr_log_recorder"

.field private static mEnableEncLog:Z = false

.field private static mEnableHF:Z = false

.field private static mEnableLocalLogConfig:Z = false

.field private static mEnableLog:Z = false

.field private static mEnableMicLog:Z = false

.field private static mEnableRecLog:Z = false

.field private static mEnableVF:Z = true

.field private static mLogConfigPath:Ljava/lang/String; = "/sdcard/CCR.properties"

.field private static mLogFilePath:Ljava/lang/String; = "/sdcard/ccr.log"

.field private static mLogLevel:Ljava/lang/String; = "warn"

.field private static mRotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableLog(Z)V
    .locals 0

    .line 39
    sput-boolean p0, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableLog:Z

    return-void
.end method

.method public static getEncLogEnable()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableEncLog:Z

    return v0
.end method

.method public static getHFEnable()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableHF:Z

    return v0
.end method

.method public static getLocalLogConfigEnable()Z
    .locals 1

    .line 49
    sget-boolean v0, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableLocalLogConfig:Z

    return v0
.end method

.method private static getLogLevel(Ljava/lang/String;)I
    .locals 2

    const-string v0, "verbose"

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "info"

    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string v0, "debug"

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const-string v0, "warn"

    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const-string v0, "error"

    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    return v1
.end method

.method public static getMicLogEnable()Z
    .locals 1

    .line 42
    sget-boolean v0, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableMicLog:Z

    return v0
.end method

.method public static getRecLogEnable()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableRecLog:Z

    return v0
.end method

.method public static getRotation()I
    .locals 1

    .line 58
    sget v0, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mRotation:I

    return v0
.end method

.method public static getVFEnable()Z
    .locals 1

    .line 55
    sget-boolean v0, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableVF:Z

    return v0
.end method

.method public static readConfigFile()V
    .locals 7

    const-string v0, "CCR"

    const-string v1, "Read config."

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 79
    sput-boolean v1, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableLog:Z

    .line 80
    sput-boolean v1, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableMicLog:Z

    .line 81
    sput-boolean v1, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableRecLog:Z

    .line 82
    sput-boolean v1, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableEncLog:Z

    .line 83
    sput-boolean v1, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableLocalLogConfig:Z

    .line 84
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 85
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mLogConfigPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v1, "Read config. null file."

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    .line 97
    sput-boolean v3, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableLocalLogConfig:Z

    .line 98
    sget-object v4, Lcom/netease/cc/screen_record/codec/ConfigHelper;->CCR_ENABLE_LOG:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    if-eqz v4, :cond_1

    sget-object v4, Lcom/netease/cc/screen_record/codec/ConfigHelper;->CCR_ENABLE_LOG:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableLog:Z

    .line 99
    :cond_1
    sget-boolean v4, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableLog:Z

    if-nez v4, :cond_2

    return-void

    .line 100
    :cond_2
    sget-object v4, Lcom/netease/cc/screen_record/codec/ConfigHelper;->CCR_LOG_LEVEL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mLogLevel:Ljava/lang/String;

    .line 101
    sget-object v4, Lcom/netease/cc/screen_record/codec/ConfigHelper;->CCR_LOG_MIC:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/netease/cc/screen_record/codec/ConfigHelper;->CCR_LOG_MIC:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableMicLog:Z

    .line 102
    :cond_3
    sget-object v4, Lcom/netease/cc/screen_record/codec/ConfigHelper;->CCR_LOG_RECORDER:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/netease/cc/screen_record/codec/ConfigHelper;->CCR_LOG_RECORDER:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableRecLog:Z

    .line 103
    :cond_4
    sget-object v4, Lcom/netease/cc/screen_record/codec/ConfigHelper;->CCR_LOG_ENCODER:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/netease/cc/screen_record/codec/ConfigHelper;->CCR_LOG_ENCODER:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableEncLog:Z

    :cond_5
    const-string v4, "horizon_flip"

    .line 104
    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableHF:Z

    :cond_6
    const-string v4, "vertical_flip"

    .line 105
    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableVF:Z

    :cond_7
    const-string v4, "rotation"

    .line 106
    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mRotation:I

    :cond_8
    const-string v4, "enableCompareCtx"

    .line 107
    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    const-string v4, "enableSingleEglCore"

    .line 108
    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 109
    sget-object v5, Lcom/netease/cc/screen_record/codec/RecorderConfig;->enableSingleEglCore:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v4, v3, :cond_9

    const/4 v6, 0x1

    goto :goto_0

    :cond_9
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GameTex] enableSingleEglCore - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string v4, "enableSyncRelease"

    .line 112
    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 113
    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 114
    sget-object v5, Lcom/netease/cc/screen_record/codec/RecorderConfig;->enableSyncRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v4, v3, :cond_b

    const/4 v1, 0x1

    :cond_b
    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GameTex] enableSyncRelease - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_c
    sget-object v1, Lcom/netease/cc/screen_record/codec/ConfigHelper;->CCR_LOG_PATH:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read config. ccr_enable_log="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableLog:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ccr_log_level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mLogLevel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ccr_log_path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cc_log_mic="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableMicLog:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " cc_log_recorder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableRecLog:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " cc_log_enc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mEnableEncLog:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " getLogLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mLogLevel:Ljava/lang/String;

    .line 119
    invoke-static {v3}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getLogLevel(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Lcom/netease/cc/screen_record/codec/log/LogManager;->getInstance()Lcom/netease/cc/screen_record/codec/log/LogManager;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v1, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mLogFilePath:Ljava/lang/String;

    :cond_d
    sget-object v2, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mLogLevel:Ljava/lang/String;

    invoke-static {v2}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getLogLevel(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/log/LogManager;->init(Ljava/lang/String;I)V

    .line 122
    new-instance v0, Lcom/netease/cc/screen_record/codec/ConfigHelper$1;

    invoke-direct {v0}, Lcom/netease/cc/screen_record/codec/ConfigHelper$1;-><init>()V

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->setRecorderUtil(Lcom/netease/cc/screen_record/codec/RecorderUtil;)V

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Read config. IOException"

    .line 93
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public static setConfigPath(Ljava/lang/String;)V
    .locals 0

    .line 35
    sput-object p0, Lcom/netease/cc/screen_record/codec/ConfigHelper;->mLogConfigPath:Ljava/lang/String;

    return-void
.end method
