.class public Lcom/netease/pharos/Const;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field public static final CACHE_EXPIRE:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final CHECK_DNS:I = 0x5

.field public static final CHECK_KCP:I = 0x3

.field public static final CHECK_PING:I = 0x4

.field public static final CHECK_TCP:I = 0x1

.field public static final CHECK_UDP:I = 0x2

.field public static final CONNECT_TIMEOUT_TIME:I = 0xbb8

.field public static final DEFAULT_NET_DECISION_CONFIG:Ljava/lang/String; = "default_net_decision_config.txt"

.field public static final FAIL:I = -0x1

.field public static final FINISH:I = 0x1

.field public static final HEADER_HEADER_HOST:Ljava/lang/String; = "Host"

.field public static final HEADER_RANGE:Ljava/lang/String; = "Range"

.field public static final HEADER_RANGE_BYTES_PREF:Ljava/lang/String; = "bytes="

.field public static final HEADER_RANGE_BYTES_SUFF:Ljava/lang/String; = "-"

.field public static final HEADER_RANGE_END:Ljava/lang/String; = "END"

.field public static final HEADER_RANGE_START:Ljava/lang/String; = "START"

.field public static final HTTP_DNS_SERVER_MAINLAND:Ljava/lang/String; = "httpdns.nie.netease.com"

.field public static final HTTP_DNS_SERVER_OVERSEA:Ljava/lang/String; = "httpdns.nie.easebar.com"

.field public static final IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final INIT:I = 0x0

.field public static final KCP_PORT:I = 0x270d

.field public static final LAST_LIGHTEN_LOCAL_CONFIG:Ljava/lang/String; = "last_lighten_local_config.txt"

.field public static final LAST_NET_DECISION_CONFIG:Ljava/lang/String; = "last_net_decision_config.txt"

.field public static final LAST_REGION_LOCAL_CONFIG:Ljava/lang/String; = "last_region_local_config.txt"

.field public static final METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final PROGRESS:I = 0x2

.field public static final PROTODCAL_KCP:I = 0x3

.field public static final PROTODCAL_TCP:I = 0x1

.field public static final PROTODCAL_UDP:I = 0x2

.field public static final QOS_4G_DEFAULT_INT:I = -0xb

.field public static final QOS_4G_FAIL_INT:I = 0x0

.field public static final QOS_4G_NO_SUPPORT:I = -0x1

.field public static final QOS_4G_SUCCESS_INT:I = 0x1

.field public static final QOS_4G_TEST_INT:I = 0x2

.field public static final QOS_CYCLE_DELAY:I = 0x1

.field public static final QOS_CYCLE_INTERVAL:I = 0x1

.field public static final QOS_DEFAULT:Ljava/lang/String; = "-11"

.field public static final QOS_FAIL:Ljava/lang/String; = "0"

.field public static final QOS_IS_NOT_ISP:Ljava/lang/String; = "-10"

.field public static final QOS_NOT_FIT_THRESHOLD:Ljava/lang/String; = "-9"

.field public static final QOS_NOT_SUPPORT:Ljava/lang/String; = "-1"

.field public static final QOS_NO_SUPPORT:Ljava/lang/String; = "-1"

.field public static final QOS_PREGRESS:Ljava/lang/String; = "11"

.field public static final QOS_SUCCESS:Ljava/lang/String; = "1"

.field public static final QOS_TEST:Ljava/lang/String; = "2"

.field public static final READ_TIMEOUT_TIME:I = 0xbb8

.field public static final REPORT_DOWNLOAD_NETMON_CONFIG_FIALD:I = 0x2

.field public static final REPORT_LINK_RESULT:I = 0x1

.field public static final REPORT_LVSIP_FAIL:I = 0x3

.field public static final REPORT_URL_MAINLAND:Ljava/lang/String; = "https://netlink-sigma.proxima.nie.netease.com"

.field public static final REPORT_URL_OVERSEA:Ljava/lang/String; = "https://netlink-sigma.proxima.nie.easebar.com"

.field public static final TCP_PORT:I = 0x270e

.field public static final TIME_OUT:I = 0x320

.field public static final UDP_PORT:I = 0x270f

.field public static final UPLOAD_FILE_NAME:Ljava/lang/String; = "upload_file.txt"

.field public static final UPLOAD_FILE_SIZE:I = 0x800

.field public static final UPLOAD_FILE_SIZE_32:I = 0x20

.field public static final UPLOAD_FILE_SIZE_512:I = 0x200

.field public static final UPLOAD_SERVER_IP:Ljava/lang/String; = "123.58.164.135"

.field public static final VERSION:Ljava/lang/String; = "2.8.0"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x708

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/netease/pharos/Const;->CACHE_EXPIRE:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
