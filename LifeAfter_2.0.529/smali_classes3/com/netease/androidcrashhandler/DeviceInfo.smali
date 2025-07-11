.class public Lcom/netease/androidcrashhandler/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceInfo"

.field private static sDeviceInfo:Lcom/netease/androidcrashhandler/DeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/DeviceInfo;
    .locals 1

    .line 19
    sget-object v0, Lcom/netease/androidcrashhandler/DeviceInfo;->sDeviceInfo:Lcom/netease/androidcrashhandler/DeviceInfo;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/netease/androidcrashhandler/DeviceInfo;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/DeviceInfo;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/DeviceInfo;->sDeviceInfo:Lcom/netease/androidcrashhandler/DeviceInfo;

    .line 23
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/DeviceInfo;->sDeviceInfo:Lcom/netease/androidcrashhandler/DeviceInfo;

    return-object v0
.end method


# virtual methods
.method public getDeviceInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
