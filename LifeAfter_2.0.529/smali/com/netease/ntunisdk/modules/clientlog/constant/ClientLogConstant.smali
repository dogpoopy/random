.class public Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant;
.super Ljava/lang/Object;
.source "ClientLogConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;
    }
.end annotation


# static fields
.field public static final BATCH_SUBMIT_COUNT:I = 0xa

.field public static final CAPACITY:I = 0x32

.field public static final CLOSE_CLIENT_LOG:I = 0x1

.field public static final CORE_POOL_SIZE:I = 0x2

.field public static final DATABASE_VERSION:I = 0x1

.field public static final DATA_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static final DB_NAME:Ljava/lang/String; = "client_log_db"

.field public static final EB:Ljava/lang/String; = "EB"

.field public static EB_TAG:I = 0x0

.field public static final EB_TAG_INTERNAL:I = 0x0

.field public static final EB_TAG_OVERSEA:I = 0x1

.field public static final ID:Ljava/lang/String; = "ID"

.field public static final INTERNAL_URL:Ljava/lang/String; = "https://sigma-adclientlog-g0.proxima.nie.netease.com"

.field public static final KEEP_ALIVE_TIME:J = 0x1L

.field public static final LOG:Ljava/lang/String; = "log"

.field public static final MAXIMUM_POOL_SIZE:I = 0x3

.field public static final MAX_ROW_SIZE:I = 0x1388

.field public static final MODULE_NAME:Ljava/lang/String; = "clientLog"

.field public static final MODULE_TYPE:Ljava/lang/String; = "adclientlog"

.field public static final MODULE_VERSIONS:Ljava/lang/String; = "1.1.0"

.field public static final NORMAL_TYPE_KEY:Ljava/lang/String; = "Content-Type"

.field public static final NORMAL_TYPE_VALUE:Ljava/lang/String; = "application/json"

.field public static final NO_SUBMIT_STATUS_TAG_TAG:I = 0x0

.field public static final ONCE_SUBMIT_COUNT:I = 0x14

.field public static final OVERSEA_URL:Ljava/lang/String; = "https://sigma-adclientlog-g0.proxima.nie.easebar.com"

.field public static final PATCH_TYPE_KEY:Ljava/lang/String; = "X-Content-Type"

.field public static final PATCH_TYPE_VALUE:Ljava/lang/String; = "application/list"

.field public static final PLATFORM:Ljava/lang/String; = "platform"

.field public static final SDK:Ljava/lang/String; = "sdk"

.field public static final SEND_CLIENT_LOG:I = 0x0

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static SUBMIT_MODULE:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel; = null

.field public static final SUBMIT_STATUS_TAG:I = 0x1

.field public static final TABLE_NAME:Ljava/lang/String; = "client_log_table"

.field public static final TAG:Ljava/lang/String; = "ClientLogModule"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TRANSID:Ljava/lang/String; = "transid"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UDID:Ljava/lang/String; = "udid"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    sget-object v0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;->MODEL_PATCH:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;

    sput-object v0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant;->SUBMIT_MODULE:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
