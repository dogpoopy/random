.class public Lcom/netease/mpay/oversea/scan/Consts;
.super Ljava/lang/Object;
.source "Consts.java"


# static fields
.field public static API_PREFIX:Ljava/lang/String; = "https://qr.mpsdk.easebar.com"

.field public static APP_CHANNEL:Ljava/lang/String; = null

.field public static APP_ID:Ljava/lang/String; = null

.field public static CONFIRM_PAY_URL:Ljava/lang/String; = null

.field public static final DEVICE_TYPE_LIMIT:I = 0x32

.field public static final GAME_AUTH:Ljava/lang/String; = "game_auth"

.field public static LOGIN_CHANNEL:Ljava/lang/String; = null

.field private static final PRODUCTION_DEFAULT_HOST:Ljava/lang/String; = "https://qr.mpsdk.easebar.com"

.field public static QRCODE_UUID:Ljava/lang/String; = null

.field public static final SCAN_REG:Ljava/lang/String; = "https?://.*\\.(easebar|163|netease)\\.com/"

.field public static final SDK_NAME:Ljava/lang/String; = "NetEaseQRScanner"

.field public static final SDK_VERSION:Ljava/lang/String; = "1.7.1"

.field private static final TEST_DEFAULT_HOST:Ljava/lang/String; = "https://qrcode-service-dev.mpsdk.easebar.com/"

.field public static UDID:Ljava/lang/String; = null

.field public static final VERSION_CODE:Ljava/lang/String; = "a1.7.1"

.field public static language:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    sget-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->EN:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    sput-object v0, Lcom/netease/mpay/oversea/scan/Consts;->language:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
