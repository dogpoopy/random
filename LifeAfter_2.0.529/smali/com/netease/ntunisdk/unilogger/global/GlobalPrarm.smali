.class public Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;
.super Ljava/lang/Object;
.source "GlobalPrarm.java"


# static fields
.field public static EB:Ljava/lang/String; = null

.field public static final UNILOGGER_DIR:Ljava/lang/String; = "unilogger"

.field public static final UNILOGGER_DIR_FILES:Ljava/lang/String; = "files"

.field public static channelId:Ljava/lang/String;

.field public static channelVersion:Ljava/lang/String;

.field public static gameId:Ljava/lang/String;

.field public static localIp:Ljava/lang/String;

.field public static model:Ljava/lang/String;

.field public static osVer:Ljava/lang/String;

.field public static packageName:Ljava/lang/String;

.field public static privateDirPath:Ljava/lang/String;

.field public static realGameId:Ljava/lang/String;

.field public static region:Ljava/lang/String;

.field public static roleId:Ljava/lang/String;

.field public static sdkVersion:Ljava/lang/String;

.field public static udid:Ljava/lang/String;

.field public static uid:Ljava/lang/String;

.field public static uniLoggerDirPath:Ljava/lang/String;

.field public static uniLoggerLogDirPath:Ljava/lang/String;

.field public static unisdkVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInfo(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-static {p0}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->packageName:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->model:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->osVer:Ljava/lang/String;

    const-string v0, "1.0.0"

    .line 61
    sput-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->sdkVersion:Ljava/lang/String;

    .line 62
    invoke-static {p0}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->getEBFromAssetsFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->EB:Ljava/lang/String;

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GlobalPrarm [getInfo] packageName="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", model="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->model:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", osVer="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->osVer:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sdkVersion="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->privateDirPath:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->privateDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "unilogger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->uniLoggerDirPath:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->uniLoggerDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->uniLoggerLogDirPath:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->uniLoggerDirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 49
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->uniLoggerLogDirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 54
    :cond_1
    invoke-static {p0}, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->getInfo(Landroid/content/Context;)V

    return-void
.end method
