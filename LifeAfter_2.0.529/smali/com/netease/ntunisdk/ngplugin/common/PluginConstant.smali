.class public final Lcom/netease/ntunisdk/ngplugin/common/PluginConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APPLICATION_TYPE:I = 0x7e

.field public static final CORE_POOl_SIZE:I = 0x5

.field public static final KEEP_ALIVE_TIME:J = 0x3L

.field public static final MAXIMUM_POOL_SIZE:I = 0xa

.field public static final NATIVE_DIR:Ljava/lang/String; = "valibs"

.field public static final OPTIMIZE_DIR:Ljava/lang/String; = "dex"

.field public static final ORIGIN_TYPE:I = 0x7f

.field public static PUBLISH_AREA:I = 0x0

.field public static final SEPARATOR:Ljava/lang/String;

.field public static TEXT_APP_MODE:I = 0x0

.field public static final TEXT_KEY_HASH:Ljava/lang/String; = "hash"

.field public static final TEXT_NAME_SPACE:Ljava/lang/String; = "data"

.field public static final TEXT_SERVER_DOMAIN_KEY:Ljava/lang/String; = "ef8373c04bfd11ea"

.field public static TEXT_SERVER_FLAG:Ljava/lang/String; = "-1"

.field public static final TEXT_SERVER_MPAY_ADMIN_DOMAIN:Ljava/lang/String; = "075B4E6FCFDA5188B1707211CA900D37C5181C4205451DA73D6B6D49EED39FB730D1055B9E0D2020B2AE129512427D06"

.field public static final TEXT_SERVER_MPAY_ADMIN_TEST_DOMAIN:Ljava/lang/String; = "075B4E6FCFDA5188B1707211CA900D371DB2C7E13BC71AB2D06B4BDAE9ACD2003E358F48D4E62352E56B7CCB8F58616D"

.field public static final TEXT_SERVER_MPAY_NATIONAL_DOMAIN:Ljava/lang/String; = "075B4E6FCFDA5188B1707211CA900D37AC59DD20D46F6C3B65FB61924AE78172DBA5D3F9FFF301170B3314F5B9AD3852"

.field public static final TEXT_SERVER_MPAY_OVERSEA_DOMAIN:Ljava/lang/String; = "B2158F25B30BB95278FAE05E87221A6C1E9E272B22E8CDDCF0B320B85FC090EE52AE626D637B7C678F986D3D6792F13F"

.field public static final TEXT_SERVER_NOAH_NATIONAL_DOMAIN:Ljava/lang/String; = "B2158F25B30BB95278FAE05E87221A6CFCDACD17A1807E9C2E34EE2F005FC0F9"

.field public static final TEXT_SERVER_NOAH_OVERSEA_DOMAIN:Ljava/lang/String; = "B2158F25B30BB95278FAE05E87221A6CB39F38493C0DBFF1992DE7F7B93BD9E08B8C770499CAABA8B4729BA9E55FA1DD"

.field public static TEXT_SERVER_REGION:Ljava/lang/String; = "/api/config?project="


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/ngplugin/common/PluginConstant;->SEPARATOR:Ljava/lang/String;

    const/4 v0, 0x2

    sput v0, Lcom/netease/ntunisdk/ngplugin/common/PluginConstant;->TEXT_APP_MODE:I

    const/4 v0, -0x1

    sput v0, Lcom/netease/ntunisdk/ngplugin/common/PluginConstant;->PUBLISH_AREA:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
