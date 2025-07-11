.class public Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;
.super Ljava/lang/Object;
.source "DeviceDataCenter.java"


# static fields
.field private static final CACHE_FILE_NAME:Ljava/lang/String; = "unisdk_devices_infos_file"

.field private static final CPU_ARCHITECTURE_KEY_64:Ljava/lang/String; = "ro.product.cpu.abilist64"

.field private static final CPU_ARCHITECTURE_TYPE_32:Ljava/lang/String; = "32"

.field private static final CPU_ARCHITECTURE_TYPE_64:Ljava/lang/String; = "64"

.field private static final EI_CLASS:I = 0x4

.field private static final ELFCLASS32:I = 0x1

.field private static final ELFCLASS64:I = 0x2

.field private static final PROC_CPU_INFO_PATH:Ljava/lang/String; = "/proc/cpuinfo"

.field private static final PROC_MEM_INFO_PATH:Ljava/lang/String; = "/proc/meminfo"

.field private static final SYM_DEVICES_SYSTEM_CPU:Ljava/lang/String; = "/sys/devices/system/cpu/"

.field private static final SYSTEM_BIN_SU:Ljava/lang/String; = "/system/bin/su"

.field private static final SYSTEM_LIB_C_PATH:Ljava/lang/String; = "/system/lib/libc.so"

.field private static final SYSTEM_LIB_C_PATH_64:Ljava/lang/String; = "/system/lib64/libc.so"

.field private static final TAG:Ljava/lang/String; = "DataCenter"

.field private static sDataCenter:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;


# instance fields
.field private CPU_FILTER:Ljava/io/FileFilter;

.field private final UNKNOW:Ljava/lang/String;

.field private mGlView:Landroid/opengl/GLSurfaceView;

.field private mHasInit:Z

.field private mHasPostData:Ljava/lang/String;

.field private mInitSuccess:Z

.field private mPostDataInInit:Z

.field private mSensorsInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mViewGroup:Landroid/view/ViewGroup;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mHasInit:Z

    .line 103
    iput-boolean v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mInitSuccess:Z

    const-string v1, "0"

    .line 105
    iput-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mHasPostData:Ljava/lang/String;

    .line 109
    iput-boolean v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mPostDataInInit:Z

    const-string v0, "unknow"

    .line 111
    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->UNKNOW:Ljava/lang/String;

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mViewGroup:Landroid/view/ViewGroup;

    .line 115
    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mGlView:Landroid/opengl/GLSurfaceView;

    .line 677
    new-instance v0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$1;-><init>(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->CPU_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->initSensorsInfo(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getManufacturer()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getArchType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getCPUType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)I
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getNumberOfCPUCores()I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)I
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getCPUMinFreqKHz()I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)I
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getCPUMaxFreqKHz()I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getSupportedAbis()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getSupported32Abis()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getSupported64Abis()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getBoard()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getModel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getRoBoardPlatform()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getHardware()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getScreenResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getScreenInch(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)I
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getScreenDpi(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getScreenPixel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getXdpi_Ydpi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isRooted()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportAccelerometer()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportMagneticField()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getAndroidRelease()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportOrientation()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportGyroscope()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportLight()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportPressure()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3400(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportProximity()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportGravity()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportLinearAcceleration()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportRotationVector()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportRelativeHumidity()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportAmbientTemperature()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)I
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getSdkInt()I

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportMagneticFieldUncalibrated()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportGameRotationVector()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportGyroscopeUncalibrated()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4300(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportSignificantMotion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4400(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportStepDetector()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4500(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportStepCounter()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4600(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportGeomagneticRotationVector()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4700(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportHeartRate()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportTiltDetector()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4900(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportWakeGesture()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getTotalMemory()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportPickUpGesture()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportNFC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5200(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportHCE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5300(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getGlRenderer()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5400(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getGlVendor()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5500(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getGlVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5600(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->initGPUInfo(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;ILjava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->initSuccessCallBack(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->postDeviceData()V

    return-void
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)J
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getFreeMem(Landroid/content/Context;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$6002(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mHasPostData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getTotalInternalMemorySize()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)D
    .locals 2

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getAvailableInternalMemorySize()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getFingerprint()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private formatDouble(DI)D
    .locals 1

    .line 1364
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p1, 0x4

    .line 1365
    invoke-virtual {v0, p3, p1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1368
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "DataCenter [formatDouble] Exception="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DataCenter"

    invoke-static {p3, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    :goto_0
    return-wide p1
.end method

.method private getAndroidRelease()Ljava/lang/String;
    .locals 1

    .line 182
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private getArchType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "DEVICE_INFO_ARCH_TYPE"

    .line 283
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "unknow"

    if-eqz v2, :cond_4

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    const-string p1, "ro.product.cpu.abilist64"

    const-string v1, ""

    .line 291
    invoke-direct {p0, p1, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const-string v1, "64"

    const-string v2, "DataCenter"

    if-lez p1, :cond_1

    const-string p1, "DataCenter [getArchType] CPU arch is 64bit"

    .line 292
    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_1
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isCPUInfo64()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "DataCenter [getArchType] CPU arch isCPUInfo64"

    .line 296
    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_2
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isLibc64()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "DataCenter [getArchType] CPU arch isLibc64"

    .line 300
    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "DataCenter [getArchType] return cpu DEFAULT 32bit!"

    .line 304
    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "32"

    move-object v1, p1

    .line 308
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 309
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move-object v3, v1

    :goto_1
    return-object v3
.end method

.method private getAvailableInternalMemorySize()D
    .locals 5

    .line 617
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getSdkInt()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 619
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 620
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 622
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    mul-long v0, v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    .line 626
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    return-wide v0
.end method

.method private getBoard()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_BOARD"

    .line 973
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 975
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 976
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 977
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private getBooleanCacheInfo(Ljava/lang/String;)Z
    .locals 2

    .line 2392
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2393
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method private getCPUMaxFreqKHz()I
    .locals 13

    const-string v0, "DataCenter"

    const-string v1, "DEVICE_INFO_CPU_MAX_FREQ_KHZ"

    .line 784
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getIntCacheInfo(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_4

    .line 789
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getNumberOfCPUCores()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    .line 794
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/sys/devices/system/cpu/cpu"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 795
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x80

    new-array v9, v7, [B

    .line 799
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 802
    :try_start_1
    invoke-virtual {v10, v9}, Ljava/io/FileInputStream;->read([B)I

    const/4 v8, 0x0

    .line 805
    :goto_1
    aget-byte v11, v9, v8

    const/16 v12, 0x30

    if-lt v11, v12, :cond_0

    aget-byte v11, v9, v8

    const/16 v12, 0x39

    if-gt v11, v12, :cond_0

    if-ge v8, v7, :cond_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 809
    :cond_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v9, v5, v8}, Ljava/lang/String;-><init>([BII)V

    .line 810
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 812
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v8, v2, :cond_1

    .line 813
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 824
    :cond_1
    :goto_2
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v7

    .line 821
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DataCenter [getCPUMaxFreqKHz] Exception="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v7

    .line 817
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DataCenter [getCPUMaxFreqKHz] NumberFormatException="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 824
    :goto_3
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 825
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v2

    .line 835
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DataCenter [getCPUMaxFreqKHz] Exception2="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v2

    .line 830
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DataCenter [getCPUMaxFreqKHz] IOException="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    const/4 v2, -0x1

    :cond_3
    if-eq v3, v2, :cond_4

    .line 841
    invoke-direct {p0, v1, v2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setIntCacheInfo(Ljava/lang/String;I)V

    :cond_4
    return v2
.end method

.method private getCPUMinFreqKHz()I
    .locals 13

    const-string v0, "DataCenter"

    const-string v1, "DEVICE_INFO_CPU_MIN_FREQ_KHZ"

    .line 709
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getIntCacheInfo(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_4

    .line 714
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getNumberOfCPUCores()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    .line 719
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/sys/devices/system/cpu/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/cpufreq/cpuinfo_min_freq"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 720
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x80

    new-array v9, v7, [B

    .line 725
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 728
    :try_start_1
    invoke-virtual {v10, v9}, Ljava/io/FileInputStream;->read([B)I

    const/4 v8, 0x0

    .line 731
    :goto_1
    aget-byte v11, v9, v8

    const/16 v12, 0x30

    if-lt v11, v12, :cond_0

    aget-byte v11, v9, v8

    const/16 v12, 0x39

    if-gt v11, v12, :cond_0

    if-ge v8, v7, :cond_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 735
    :cond_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v9, v5, v8}, Ljava/lang/String;-><init>([BII)V

    .line 736
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 738
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v8, v2, :cond_1

    .line 739
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    :cond_1
    :goto_2
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v7

    .line 747
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DataCenter [getCPUMinFreqKHz] Exception1="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v7

    .line 743
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DataCenter [getCPUMinFreqKHz] NumberFormatException="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 752
    :goto_3
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 754
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v2

    .line 765
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DataCenter [getCPUMinFreqKHz] Exception2="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v2

    .line 760
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DataCenter [getCPUMinFreqKHz] IOException="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    const/4 v2, -0x1

    :cond_3
    if-eq v3, v2, :cond_4

    .line 771
    invoke-direct {p0, v1, v2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setIntCacheInfo(Ljava/lang/String;I)V

    :cond_4
    return v2
.end method

.method private getCPUType()Ljava/lang/String;
    .locals 4

    const-string v0, "DEVICE_INFO_CPU_TYPE"

    .line 326
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "ro.product.cpu.abi"

    const-string v2, "arm"

    .line 330
    invoke-direct {p0, v1, v2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "x86"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 337
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "unknow"

    :cond_2
    return-object v1
.end method

.method private getDeviceData()Lorg/json/JSONObject;
    .locals 25

    const-string v0, "DEVICE_INFO_SUPPORTED_64_BIT_ABIS"

    const-string v1, "DEVICE_INFO_HARDWARE"

    const-string v2, "DEVICE_INFO_SUPPORTED_32_BIT_ABIS"

    const-string v3, "DEVICE_INFO_RO_BOARD_PLATFORM"

    const-string v4, "DEVICE_INFO_SUPPORTED_ABIS"

    const-string v5, "DEVICE_INFO_BOARD"

    const-string v6, "DEVICE_INFO_CPU_MAX_FREQ_KHZ"

    const-string v7, "DEVICE_INFO_CPU_MIN_FREQ_KHZ"

    const-string v8, "DEVICE_INFO_CPU_CORES_COUNT"

    const-string v9, "DEVICE_INFO_CPU_TYPE"

    const-string v10, "DEVICE_INFO_ARCH_TYPE"

    const-string v11, "DEVICE_INFO_ROM_VERSION"

    const-string v12, "DEVICE_INFO_FINGERPRINT"

    const-string v13, "DEVICE_INFO_TOTAL_INTERNAL_MEMORY"

    const-string v14, "DEVICE_INFO_TOTAL_MEMORY"

    const-string v15, "DEVICE_INFO_SDK_INT"

    move-object/from16 v16, v1

    const-string v1, "DEVICE_INFO_RELEASE"

    move-object/from16 v17, v3

    const-string v3, "DEVICE_INFO_MODEL"

    move-object/from16 v18, v5

    const-string v5, "DEVICE_INFO_MANUFACTURER"

    move-object/from16 v19, v0

    const-string v0, "-1"

    move-object/from16 v20, v2

    const-string v2, "unknow"

    move-object/from16 v21, v4

    const-string v4, "DataCenter"

    move-object/from16 v22, v6

    const-string v6, "DataCenter [getDeviceData] start"

    .line 3230
    invoke-static {v4, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3232
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v23, v4

    :try_start_0
    const-string v4, "scope"

    move-object/from16 v24, v7

    const-string v7, "release"

    .line 3236
    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3237
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v4

    invoke-interface {v4, v5, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3238
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3239
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3240
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1, v15}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v15, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3241
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1, v14, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3244
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1, v13, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v13, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3246
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1, v12, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3247
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1, v11, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3248
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1, v10, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3250
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1, v9, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3251
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1, v8, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3252
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    move-object/from16 v3, v24

    invoke-interface {v1, v3, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3253
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    move-object/from16 v3, v22

    invoke-interface {v1, v3, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3255
    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getSdkInt()I

    move-result v1

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    .line 3256
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    move-object/from16 v3, v21

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3257
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    move-object/from16 v3, v20

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3258
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    move-object/from16 v3, v19

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3262
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    move-object/from16 v3, v18

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3263
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    move-object/from16 v3, v17

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3265
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    move-object/from16 v3, v16

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_GL_RENDERER"

    .line 3267
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    const-string v4, "DEVICE_INFO_GL_RENDERER"

    invoke-interface {v3, v4, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_GL_VENDOR"

    .line 3268
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    const-string v4, "DEVICE_INFO_GL_VENDOR"

    invoke-interface {v3, v4, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_GL_VERSION"

    .line 3269
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    const-string v4, "DEVICE_INFO_GL_VERSION"

    invoke-interface {v3, v4, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_SCREEN_RESOLUTION"

    .line 3270
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    const-string v4, "DEVICE_INFO_SCREEN_RESOLUTION"

    invoke-interface {v3, v4, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_SCREEN_INCH"

    .line 3271
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    const-string v4, "DEVICE_INFO_SCREEN_INCH"

    invoke-interface {v3, v4, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_SCREEN_DPI"

    .line 3273
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    const-string v4, "DEVICE_INFO_SCREEN_DPI"

    invoke-interface {v3, v4, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_SCREEN_PIXEL"

    .line 3274
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_SCREEN_PIXEL"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_XDPI_YDPI"

    .line 3275
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_XDPI_YDPI"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_ROOT"

    .line 3276
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_ROOT"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_WEBVIEW_INFO"

    .line 3277
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_WEBVIEW_INFO"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_ACCELEROMETER"

    .line 3279
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_ACCELEROMETER"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_MAGNETIC_FIELD"

    .line 3280
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_MAGNETIC_FIELD"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_ORIENTATION"

    .line 3281
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_ORIENTATION"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_GYROSCOPE"

    .line 3282
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_GYROSCOPE"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_LIGHT"

    .line 3283
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_LIGHT"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_PRESSURE"

    .line 3285
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_PRESSURE"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_PROXIMITY"

    .line 3286
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_PROXIMITY"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_GRAVITY"

    .line 3287
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_GRAVITY"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_LINEAR_ACCELERATION"

    .line 3288
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_LINEAR_ACCELERATION"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_ROTATION_VECTOR"

    .line 3289
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_ROTATION_VECTOR"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_RELATIVE_HUMIDITY"

    .line 3291
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_RELATIVE_HUMIDITY"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_AMBIENT_TEMPERATURE"

    .line 3292
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_AMBIENT_TEMPERATURE"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_MAGNETIC_FIELD_UNCALIBRATED"

    .line 3293
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_MAGNETIC_FIELD_UNCALIBRATED"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_GAME_ROTATION_VECTOR"

    .line 3294
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_GAME_ROTATION_VECTOR"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_GYROSCOPE_UNCALIBRATED"

    .line 3295
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_GYROSCOPE_UNCALIBRATED"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_SIGNIFICANT_MOTION"

    .line 3297
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_SIGNIFICANT_MOTION"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_STEP_DETECTOR"

    .line 3298
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_STEP_DETECTOR"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_STEP_COUNTER"

    .line 3299
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_STEP_COUNTER"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_GEOMAGNETIC_ROTATION_VECTOR"

    .line 3300
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_GEOMAGNETIC_ROTATION_VECTOR"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_HEART_RATE"

    .line 3301
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_HEART_RATE"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_TILT_DETECTOR"

    .line 3303
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_TILT_DETECTOR"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_WAKE_GESTURE"

    .line 3304
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_WAKE_GESTURE"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_PICK_UP_GESTURE"

    .line 3305
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_PICK_UP_GESTURE"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_FEATURE_NFC"

    .line 3306
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_FEATURE_NFC"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "DEVICE_INFO_IS_SUPPORT_FEATURE_NFC_HOST_CARD_EMULATION"

    .line 3307
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "DEVICE_INFO_IS_SUPPORT_FEATURE_NFC_HOST_CARD_EMULATION"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v2, v23

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3314
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataCenter [getDeviceData] Exception ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3315
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v2, v23

    .line 3310
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [getDeviceData] JSONException ="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3311
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 3318
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataCenter [getDeviceData] data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method private getFingerprint()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_FINGERPRINT"

    .line 200
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 205
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private getFreeMem(Landroid/content/Context;)J
    .locals 7

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    const-string v2, "activity"

    .line 551
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_1

    .line 554
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 555
    invoke-virtual {p1, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 557
    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_1

    .line 559
    iget-wide v0, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method private getGlRenderer()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_GL_RENDERER"

    .line 1080
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1082
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "unknow"

    :cond_0
    return-object v0
.end method

.method private getGlVendor()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_GL_VENDOR"

    .line 1095
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1097
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "unknow"

    :cond_0
    return-object v0
.end method

.method private getGlVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_GL_VERSION"

    .line 1110
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "unknow"

    :cond_0
    return-object v0
.end method

.method private getHardware()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_HARDWARE"

    .line 223
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 228
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method public static getInstance()Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;
    .locals 2

    .line 123
    sget-object v0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sDataCenter:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    if-nez v0, :cond_0

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [DeviceDataCenter] start"

    .line 124
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sDataCenter:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    .line 128
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sDataCenter:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    return-object v0
.end method

.method private getIntCacheInfo(Ljava/lang/String;)I
    .locals 2

    .line 2377
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2379
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method private getLongCacheInfo(Ljava/lang/String;)J
    .locals 3

    .line 2420
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2421
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method private getManufacturer()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_MANUFACTURER"

    .line 136
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 141
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private getModel()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_MODEL"

    .line 159
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 164
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private getNumberOfCPUCores()I
    .locals 7

    const-string v0, "DataCenter"

    const-string v1, "DEVICE_INFO_CPU_CORES_COUNT"

    .line 639
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getIntCacheInfo(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_1

    .line 643
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xa

    if-gt v4, v5, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    .line 653
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/devices/system/cpu/"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->CPU_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v4, v5}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    array-length v0, v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 664
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DataCenter [getNumberOfCPUCores] Exception="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v4

    .line 660
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DataCenter [getNumberOfCPUCores] NullPointerException="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v4

    .line 656
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DataCenter [getNumberOfCPUCores] SecurityException="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-virtual {v4}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    if-eq v3, v2, :cond_1

    .line 670
    invoke-direct {p0, v1, v2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setIntCacheInfo(Ljava/lang/String;I)V

    :cond_1
    return v2
.end method

.method private getRoBoardPlatform()Ljava/lang/String;
    .locals 9

    const-string v0, "DEVICE_INFO_RO_BOARD_PLATFORM"

    .line 993
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 995
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "unknow"

    if-eqz v2, :cond_1

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    .line 997
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "get"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "ro.board.platform"

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1000
    move-object v4, v2

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1004
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DataCenter [getPlatform] Exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DataCenter"

    invoke-static {v5, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1008
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1009
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    return-object v3
.end method

.method private getRomVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "DEVICE_INFO_ROM_VERSION"

    .line 247
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "unknow"

    if-eqz v2, :cond_2

    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    const-string v2, "/"

    .line 255
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 257
    array-length v2, p1

    const/4 v4, 0x5

    if-lt v2, v4, :cond_1

    const/4 v2, 0x4

    .line 258
    aget-object p1, p1, v2

    .line 260
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    .line 261
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    .line 265
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 266
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, v1

    :goto_0
    return-object v3
.end method

.method private getScreenDpi(Landroid/content/Context;)I
    .locals 3

    const-string v0, "DEVICE_INFO_SCREEN_DPI"

    .line 1382
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getIntCacheInfo(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    if-nez p1, :cond_0

    return v1

    .line 1390
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1391
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1392
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1394
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setIntCacheInfo(Ljava/lang/String;I)V

    :cond_1
    return v1
.end method

.method private getScreenInch(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    const-string v0, "DEVICE_INFO_SCREEN_INCH"

    .line 1298
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1300
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "unknow"

    if-eqz v2, :cond_4

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 1310
    :try_start_0
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1313
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1314
    invoke-virtual {p1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1316
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_1

    .line 1317
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 1318
    invoke-virtual {p1, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1319
    iget p1, v6, Landroid/graphics/Point;->x:I

    .line 1320
    iget v6, v6, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 1322
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v7, :cond_2

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-lt v6, v7, :cond_2

    .line 1323
    const-class v6, Landroid/view/Display;

    const-string v7, "getRawHeight"

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1324
    const-class v7, Landroid/view/Display;

    const-string v9, "getRawWidth"

    new-array v10, v8, [Ljava/lang/Class;

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v9, v8, [Ljava/lang/Object;

    .line 1325
    invoke-virtual {v7, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-array v8, v8, [Ljava/lang/Object;

    .line 1326
    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move p1, v7

    goto :goto_0

    .line 1329
    :cond_2
    iget p1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1330
    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    if-lez p1, :cond_3

    .line 1333
    iget v7, v2, Landroid/util/DisplayMetrics;->xdpi:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    if-lez v6, :cond_3

    iget v7, v2, Landroid/util/DisplayMetrics;->ydpi:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    int-to-float p1, p1

    .line 1334
    iget v7, v2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v7, p1, v7

    iget v8, v2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr p1, v8

    mul-float v7, v7, p1

    int-to-float p1, v6

    iget v6, v2, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v6, p1, v6

    iget v2, v2, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr p1, v2

    mul-float v6, v6, p1

    add-float/2addr v7, v6

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const/4 p1, 0x1

    invoke-direct {p0, v6, v7, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->formatDouble(DI)D

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1339
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "DataCenter [getScreenInch] Exception="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "DataCenter"

    invoke-static {v6, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move-wide v6, v4

    :goto_1
    cmpl-double p1, v4, v6

    if-eqz p1, :cond_4

    .line 1344
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 1345
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, v1

    :goto_2
    return-object v3
.end method

.method private getScreenPixel(Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    const-string v0, "DEVICE_INFO_SCREEN_PIXEL"

    .line 1407
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1409
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "unknow"

    if-eqz v2, :cond_3

    if-nez p1, :cond_0

    return-object v3

    .line 1417
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1418
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1419
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1421
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getScreenInch(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 1424
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    if-nez v5, :cond_1

    .line 1427
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1430
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-wide v8, v6

    :goto_0
    if-lez v4, :cond_2

    if-lez v2, :cond_2

    const-wide/16 v10, 0x0

    cmpl-double p1, v8, v10

    if-lez p1, :cond_2

    mul-int v4, v4, v4

    mul-int v2, v2, v2

    add-int/2addr v4, v2

    int-to-double v4, v4

    .line 1435
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v4, v8

    goto :goto_1

    :cond_2
    move-wide v4, v6

    :goto_1
    cmpl-double p1, v6, v4

    if-eqz p1, :cond_3

    .line 1439
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 1440
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move-object v3, v1

    :goto_2
    return-object v3
.end method

.method private getScreenResolution(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "DEVICE_INFO_SCREEN_RESOLUTION"

    .line 1262
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1264
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "unknow"

    if-eqz v2, :cond_2

    if-nez p1, :cond_0

    return-object v3

    .line 1270
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1273
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1274
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1279
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1280
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, v1

    :goto_0
    return-object v3
.end method

.method private getSdkInt()I
    .locals 1

    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2344
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2345
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method private getSupported32Abis()Ljava/lang/String;
    .locals 6

    const-string v0, "DEVICE_INFO_SUPPORTED_32_BIT_ABIS"

    .line 896
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 898
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 900
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getSdkInt()I

    move-result v2

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 903
    :try_start_0
    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 905
    array-length v3, v2

    if-lez v3, :cond_0

    const/4 v3, 0x0

    .line 907
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 908
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 913
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [getSupported32Abis] Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DataCenter"

    invoke-static {v4, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 918
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 919
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "unknow"

    :cond_2
    return-object v1
.end method

.method private getSupported64Abis()Ljava/lang/String;
    .locals 6

    const-string v0, "DEVICE_INFO_SUPPORTED_64_BIT_ABIS"

    .line 937
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 939
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 942
    :try_start_0
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 944
    array-length v3, v2

    if-lez v3, :cond_0

    const/4 v3, 0x0

    .line 945
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 946
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 951
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [getSupported64Abis] Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DataCenter"

    invoke-static {v4, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 955
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 956
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "unknow"

    :cond_2
    return-object v1
.end method

.method private getSupportedAbis()Ljava/lang/String;
    .locals 6

    const-string v0, "DEVICE_INFO_SUPPORTED_ABIS"

    .line 855
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 857
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 859
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getSdkInt()I

    move-result v2

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 862
    :try_start_0
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 864
    array-length v3, v2

    if-lez v3, :cond_0

    const/4 v3, 0x0

    .line 866
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 867
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 872
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [getSupportedAbis] Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DataCenter"

    invoke-static {v4, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 877
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 878
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "unknow"

    :cond_2
    return-object v1
.end method

.method private getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "DataCenter"

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 2310
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 2311
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    const-string v4, ""

    aput-object v4, v3, v7

    .line 2312
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2315
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [getSystemProperty] Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2316
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2319
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataCenter [getSystemProperty] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private getTotalInternalMemorySize()Ljava/lang/String;
    .locals 9

    const-string v0, "DEVICE_INFO_TOTAL_INTERNAL_MEMORY"

    .line 575
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 577
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getSdkInt()I

    move-result v2

    const/16 v3, 0x12

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    if-lt v2, v3, :cond_0

    .line 583
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 584
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v6

    .line 586
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    mul-long v2, v2, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_0

    long-to-double v2, v2

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    .line 590
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v6

    div-double/2addr v2, v6

    div-double/2addr v2, v6

    goto :goto_0

    :cond_0
    move-wide v2, v4

    :goto_0
    cmpl-double v6, v4, v2

    if-eqz v6, :cond_1

    .line 595
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 596
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "unknow"

    :cond_2
    return-object v1
.end method

.method private getTotalMemory()Ljava/lang/String;
    .locals 13

    const-string v0, "DataCenter [getTotalMemory] Exception2="

    const-string v1, "DataCenter"

    const-string v2, "DataCenter [getTotalMemory] start"

    .line 479
    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DEVICE_INFO_TOTAL_MEMORY"

    .line 481
    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 483
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "/proc/meminfo"

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    .line 491
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 492
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v9, 0x2000

    invoke-direct {v4, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 495
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "\\s+"

    .line 496
    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 498
    array-length v8, v5

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 499
    aget-object v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_0
    move-wide v8, v6

    .line 515
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v4

    .line 518
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    :catch_1
    move-exception v5

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_2

    :catchall_0
    move-exception v2

    goto/16 :goto_6

    :catch_3
    move-exception v4

    move-object v12, v5

    move-object v5, v4

    move-object v4, v12

    .line 508
    :goto_1
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DataCenter [getTotalMemory] Exception="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_1

    .line 515
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v4

    .line 518
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :catch_5
    move-exception v4

    move-object v12, v5

    move-object v5, v4

    move-object v4, v12

    .line 504
    :goto_2
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DataCenter [getTotalMemory] IOException="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_1

    .line 515
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_6
    move-exception v4

    .line 518
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_4
    move-wide v8, v6

    :goto_5
    cmp-long v0, v6, v8

    if-eqz v0, :cond_3

    .line 525
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 526
    invoke-direct {p0, v2, v3}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catchall_1
    move-exception v2

    move-object v5, v4

    :goto_6
    if-eqz v5, :cond_2

    .line 515
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v3

    .line 518
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 522
    :cond_2
    :goto_7
    throw v2

    .line 530
    :cond_3
    :goto_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v3, "unknow"

    :cond_4
    return-object v3
.end method

.method private getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2430
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    goto :goto_1

    .line 2434
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2435
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "SDK_UNI_UPDATE_URL"

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2436
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2437
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "EB"

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https://unisdk.update.easebar.com/ngdevice/"

    goto :goto_0

    :cond_1
    const-string v0, "https://unisdk.update.netease.com/ngdevice/"

    goto :goto_0

    .line 2441
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v3, ""

    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ngdevice/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2444
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    .line 2448
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    return-object v1
.end method

.method private getWebviewInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "DEVICE_INFO_WEBVIEW_INFO"

    .line 1587
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1589
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "unknow"

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    return-object v3

    .line 1595
    :cond_0
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 1596
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 1597
    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 1599
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    return-object v3
.end method

.method private getXdpi_Ydpi(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "DEVICE_INFO_XDPI_YDPI"

    .line 1458
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1460
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "unknow"

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    return-object v3

    .line 1466
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1467
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1469
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1471
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    return-object v3
.end method

.method private initGPUInfo(Landroid/content/Context;)V
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "DEVICE_INFO_GL_VERSION"

    const-string v2, "DEVICE_INFO_GL_VENDOR"

    const-string v3, "DEVICE_INFO_GL_RENDERER"

    const-string v4, "DataCenter"

    const-string v5, "DataCenter [initGPUInfo] start"

    .line 1124
    invoke-static {v4, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1131
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->detect(Landroid/content/Context;)Z

    move-result v5

    .line 1133
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    const-string v7, "DataCenter [initGPUInfo] mIsEmulator="

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_1

    return-void

    :cond_1
    const/16 v5, 0xd

    new-array v5, v5, [I

    .line 1147
    fill-array-data v5, :array_0

    const/4 v6, 0x5

    new-array v12, v6, [I

    .line 1156
    fill-array-data v12, :array_1

    .line 1162
    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Ljavax/microedition/khronos/egl/EGL10;

    .line 1163
    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v13, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v14

    .line 1165
    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v14, v6, :cond_2

    const-string v0, "DataCenter [initGPUInfo] eglGetDisplay failed"

    .line 1166
    invoke-static {v4, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v15, 0x2

    new-array v6, v15, [I

    .line 1174
    invoke-interface {v13, v14, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v0, "DataCenter [initGPUInfo] eglInitialize failed"

    .line 1175
    invoke-static {v4, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v11, 0x1

    new-array v10, v11, [I

    const/4 v9, 0x0

    const/16 v16, 0x0

    move-object v6, v13

    move-object v7, v14

    move-object v8, v5

    move-object/from16 v17, v10

    move/from16 v10, v16

    const/16 v16, 0x1

    move-object/from16 v11, v17

    .line 1180
    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v0, "DataCenter [initGPUInfo] eglChooseConfig failed"

    .line 1181
    invoke-static {v4, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const/16 v18, 0x0

    .line 1184
    aget v10, v17, v18

    if-gtz v10, :cond_5

    return-void

    .line 1190
    :cond_5
    new-array v11, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object v6, v13

    move-object v7, v14

    move-object v8, v5

    move-object v9, v11

    move-object v5, v11

    move-object/from16 v11, v17

    .line 1192
    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v0, "DataCenter [initGPUInfo] eglChooseConfig#2 failed"

    .line 1193
    invoke-static {v4, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1198
    :cond_6
    aget-object v5, v5, v18

    const/4 v6, 0x3

    new-array v6, v6, [I

    const/16 v7, 0x3098

    aput v7, v6, v18

    aput v15, v6, v16

    const/16 v7, 0x3038

    aput v7, v6, v15

    .line 1201
    invoke-interface {v13}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v7

    .line 1203
    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v7, v8, :cond_8

    const-string v7, "DataCenter [initGPUInfo] mEGLContext= EGL_NO_CONTEXT"

    .line 1204
    invoke-static {v4, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v13, v14, v5, v7, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v7

    .line 1206
    invoke-interface {v13, v14, v5, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v5

    .line 1208
    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v5, v6, :cond_7

    .line 1209
    invoke-interface {v13, v14, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DataCenter [initGPUInfo] mEGLSurface="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", call eglDestroyContext"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1214
    :cond_7
    invoke-interface {v13, v14, v5, v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DataCenter [initGPUInfo] egl error="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v13}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1220
    :cond_8
    invoke-virtual {v7}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v5

    check-cast v5, Ljavax/microedition/khronos/opengles/GL10;

    const/16 v6, 0x1f01

    .line 1222
    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1f00

    .line 1223
    invoke-interface {v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1f02

    .line 1224
    invoke-interface {v5, v8}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v5

    .line 1226
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v8

    if-nez v8, :cond_9

    return-void

    .line 1232
    :cond_9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 1233
    invoke-direct {v1, v3, v6}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    invoke-interface {v8, v3, v6}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    :cond_a
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1238
    invoke-direct {v1, v2, v7}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    invoke-interface {v8, v2, v7}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    :cond_b
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1243
    invoke-direct {v1, v0, v5}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    invoke-interface {v8, v0, v5}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DataCenter [initGPUInfo] onSurfaceCreated glRenderer="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", glVendor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", glVersion="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1250
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [initGPUInfo] Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3025
        0x0
        0x3026
        0x0
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3057
        0x64
        0x3056
        0x64
        0x3038
    .end array-data
.end method

.method private initSensorsInfo(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method private initSuccessCallBack(ILjava/lang/String;)V
    .locals 5

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [initCallBack]"

    .line 2831
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2833
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "DataCenter [initCallBack] param error"

    .line 2836
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2840
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [initCallBack] code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2843
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "methodId"

    const-string v4, "device_module_init"

    .line 2844
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "code"

    .line 2845
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "msg"

    .line 2846
    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2847
    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2849
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataCenter [initCallBack] Exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2850
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez p1, :cond_1

    const/4 p2, 0x1

    .line 2854
    iput-boolean p2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mInitSuccess:Z

    .line 2860
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "DataCenter [initCallBack] mPostDataInInit="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mPostDataInInit:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 2862
    iget-boolean p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mPostDataInInit:Z

    if-eqz p1, :cond_2

    const-string p1, "DataCenter [initCallBack] call postDeviceData"

    .line 2863
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2864
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->postDeviceData()V

    :cond_2
    return-void
.end method

.method private isCPUInfo64()Z
    .locals 9

    const-string v0, "DataCenter [isCPUInfo64] Exception2 = "

    const-string v1, "DataCenter [isCPUInfo64] Exception = "

    const-string v2, "DataCenter"

    .line 352
    new-instance v3, Ljava/io/File;

    const-string v4, "/proc/cpuinfo"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 359
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 360
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x200

    invoke-direct {v3, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 361
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 363
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "arch64"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "DataCenter [isCPUInfo64] /proc/cpuinfo contains is arch64"

    .line 364
    invoke-static {v2, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 388
    :goto_0
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_0
    :try_start_5
    const-string v4, "DataCenter [isCPUInfo64] /proc/cpuinfo is not arch64"

    .line 368
    invoke-static {v2, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 378
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 388
    :goto_2
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_8

    :catch_3
    move-exception v1

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :catchall_0
    move-exception v4

    goto :goto_3

    :catchall_1
    move-exception v3

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_3

    :catchall_2
    move-exception v3

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    .line 372
    :goto_3
    :try_start_8
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DataCenter [isCPUInfo64] /proc/cpuinfo error = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v3, :cond_1

    .line 378
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    .line 382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_4
    if-eqz v5, :cond_4

    .line 388
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_8

    :catch_5
    move-exception v1

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catchall_3
    move-exception v4

    if-eqz v3, :cond_2

    .line 378
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_6

    :catch_6
    move-exception v3

    .line 382
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_6
    if-eqz v5, :cond_3

    .line 388
    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_7

    :catch_7
    move-exception v1

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 395
    :cond_3
    :goto_7
    throw v4

    :cond_4
    :goto_8
    const/4 v0, 0x0

    return v0
.end method

.method private isLibc64()Z
    .locals 6

    .line 405
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libc.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "DataCenter"

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eqz v1, :cond_0

    .line 408
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->readELFHeadrIndentArray(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    aget-byte v0, v0, v5

    if-ne v0, v4, :cond_0

    const-string v0, "DataCenter [isLibc64] /system/lib/libc.so is 64bit"

    .line 411
    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 416
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib64/libc.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->readELFHeadrIndentArray(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 421
    array-length v1, v0

    if-le v1, v5, :cond_1

    aget-byte v0, v0, v5

    if-ne v0, v4, :cond_1

    const-string v0, "DataCenter [isLibc64] /system/lib64/libc.so is 64bit"

    .line 422
    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isRooted()Ljava/lang/String;
    .locals 5

    const-string v0, "DEVICE_INFO_IS_ROOT"

    .line 1487
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1489
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 1494
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/bin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1499
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [isRooted] Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DataCenter"

    invoke-static {v4, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1503
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 1505
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportAccelerometer()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_ACCELEROMETER"

    .line 1638
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1640
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1644
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 1648
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 1650
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportAmbientTemperature()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_AMBIENT_TEMPERATURE"

    .line 1958
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1960
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1964
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 1968
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 1970
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportGameRotationVector()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_GAME_ROTATION_VECTOR"

    .line 2017
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2019
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2023
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 2027
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 2029
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportGeomagneticRotationVector()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_GEOMAGNETIC_ROTATION_VECTOR"

    .line 2163
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2165
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2169
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 2173
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 2175
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportGravity()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_GRAVITY"

    .line 1841
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1843
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1847
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 1851
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 1853
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportGyroscope()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_GYROSCOPE"

    .line 1725
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1727
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1731
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 1735
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 1737
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportGyroscopeUncalibrated()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_GYROSCOPE_UNCALIBRATED"

    .line 2047
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2049
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2053
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 2057
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 2059
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportHCE(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "DEVICE_INFO_IS_SUPPORT_FEATURE_NFC_HOST_CARD_EMULATION"

    .line 1555
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1557
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "unknow"

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    return-object v3

    .line 1565
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "android.hardware.nfc.hce"

    .line 1566
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    .line 1568
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 1570
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    return-object v3
.end method

.method private isSupportHeartRate()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_HEART_RATE"

    .line 2192
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2194
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2198
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 2202
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 2204
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportLight()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_LIGHT"

    .line 1754
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1756
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1760
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 1764
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 1766
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportLinearAcceleration()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_LINEAR_ACCELERATION"

    .line 1871
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1873
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1877
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 1881
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 1883
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportMagneticField()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_MAGNETIC_FIELD"

    .line 1667
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1669
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1673
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 1677
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 1679
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportMagneticFieldUncalibrated()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_MAGNETIC_FIELD_UNCALIBRATED"

    .line 1988
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1990
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1994
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 1998
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 2000
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportNFC(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "DEVICE_INFO_IS_SUPPORT_FEATURE_NFC"

    .line 1522
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1524
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "unknow"

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    return-object v3

    .line 1532
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "android.hardware.nfc"

    .line 1533
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    .line 1535
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 1537
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    return-object v3
.end method

.method private isSupportOrientation()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_ORIENTATION"

    .line 1696
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1698
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1702
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 1706
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 1708
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportPickUpGesture()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_PICK_UP_GESTURE"

    .line 2284
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2286
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2290
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 2294
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 2296
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportPressure()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_PRESSURE"

    .line 1783
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1785
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1789
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 1793
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 1795
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportProximity()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_PROXIMITY"

    .line 1812
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1814
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1818
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 1822
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 1824
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportRelativeHumidity()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_RELATIVE_HUMIDITY"

    .line 1929
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1931
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1935
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 1939
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 1941
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportRotationVector()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_ROTATION_VECTOR"

    .line 1900
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1902
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1906
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 1910
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 1912
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportSignificantMotion()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_SIGNIFICANT_MOTION"

    .line 2076
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2078
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2082
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 2086
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 2088
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportStepCounter()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_STEP_COUNTER"

    .line 2134
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2136
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2140
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 2144
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 2146
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportStepDetector()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_STEP_DETECTOR"

    .line 2105
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2111
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 2115
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 2117
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportTiltDetector()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_TILT_DETECTOR"

    .line 2223
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2225
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2229
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 2233
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 2235
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private isSupportWakeGesture()Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_IS_SUPPORT_WAKE_GESTURE"

    .line 2253
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2255
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2259
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 2263
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 2265
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "unknow"

    :cond_1
    return-object v1
.end method

.method private postDeviceData()V
    .locals 4

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [postDeviceData] start"

    .line 3177
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DEVICE_HAS_POST_DATA"

    .line 3179
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mHasPostData:Ljava/lang/String;

    .line 3181
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataCenter [postDeviceData] mHasPostData="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mHasPostData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3183
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mHasPostData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mHasPostData:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3185
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "SDK_DUMP_URL"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3186
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3187
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "EB"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "https://appdump.nie.easebar.com/device"

    goto :goto_0

    :cond_1
    const-string v1, "https://appdump.nie.netease.com/device"

    .line 3192
    :cond_2
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "null or empty url, post device data will not go on"

    .line 3193
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3197
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataCenter [postDeviceData] url="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3199
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getDeviceData()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$5;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$5;-><init>(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)V

    invoke-static {v1, v0, v2}, Lcom/netease/ntunisdk/base/utils/NetUtil;->wpost_http_https(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;)V

    :cond_4
    return-void
.end method

.method private readELFHeadrIndentArray(Ljava/io/File;)[B
    .locals 6

    const-string v0, "DataCenter [readELFHeadrIndentArray] Exception="

    const-string v1, "DataCenter"

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 435
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 439
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x10

    :try_start_1
    new-array v4, p1, [B

    const/4 v5, 0x0

    .line 443
    invoke-virtual {v3, v4, v5, p1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v5, p1, :cond_0

    .line 460
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v4

    :cond_0
    :try_start_3
    const-string p1, "DataCenter [readELFHeadrIndentArray] Error: e_indent lenght should be 16, but actual is "

    .line 449
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 460
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v3, v2

    .line 453
    :goto_2
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DataCenter [readELFHeadrIndentArray] Throwable="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_2

    .line 460
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catchall_2
    move-exception p1

    if-eqz v3, :cond_1

    .line 460
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 467
    :cond_1
    :goto_3
    throw p1

    :cond_2
    :goto_4
    return-object v2
.end method

.method private setBooleanCacheInfo(Ljava/lang/String;Z)V
    .locals 1

    .line 2406
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2407
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2408
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2409
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private setIntCacheInfo(Ljava/lang/String;I)V
    .locals 2

    .line 2358
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [getDevicePerformanceScoreByCpuName] sharedPreferences == null"

    .line 2359
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2363
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2365
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2366
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method private setLongCacheInfo(Ljava/lang/String;J)V
    .locals 1

    .line 2460
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2461
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2462
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2463
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2330
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2331
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2332
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2333
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultScore()Ljava/lang/String;
    .locals 9

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [getDefaultScore]"

    .line 3325
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3327
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getTotalMemory()Ljava/lang/String;

    move-result-object v1

    .line 3331
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "0"

    if-eqz v2, :cond_0

    return-object v3

    .line 3336
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v4, "DataCenter [getDefaultScore] totalMemoryInt="

    .line 3337
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x1b58

    cmp-long v6, v1, v4

    if-ltz v6, :cond_1

    const-string v3, "5999"

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0xfa0

    cmp-long v8, v1, v6

    if-ltz v8, :cond_2

    cmp-long v6, v1, v4

    if-gez v6, :cond_2

    const-string v3, "4500"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3350
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [getDefaultScore] Exception="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3351
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v3
.end method

.method public getDevicePerformanceScore()V
    .locals 4

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [getDevicePerformanceScore] get my phone score"

    .line 2872
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getRoBoardPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "___"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getHardware()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2877
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "DataCenter [getDevicePerformanceScore] param error"

    .line 2878
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2882
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataCenter [getDevicePerformanceScore] get my phone score, platform="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2884
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getDevicePerformanceScore(Ljava/lang/String;)V

    return-void
.end method

.method public getDevicePerformanceScore(Ljava/lang/String;)V
    .locals 10

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [getDevicePerformanceScore] start"

    .line 2897
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_1

    .line 2905
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getRoBoardPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "___"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getHardware()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2907
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    .line 2909
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DataCenter [getDevicePerformanceScore] deviceInfo="

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    .line 2913
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEVICE_INFO_"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEVICE_INFO_RANGE"

    .line 2915
    invoke-direct {p0, v4}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEVICE_INFO_CPU_NAME"

    .line 2917
    invoke-direct {p0, v5}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2919
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DataCenter [getDevicePerformanceScore] get score from cache, score="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", scoreRange="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", cpu="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2921
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "-1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "unknow"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_0

    .line 3027
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "DataCenter [getDevicePerformanceScore] cpu="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", score="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3030
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "methodId"

    const-string v9, "device_performance_score"

    .line 3031
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "code"

    const/4 v9, 0x0

    .line 3032
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "cpu"

    .line 3033
    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "score"

    .line 3034
    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "score_range"

    .line 3035
    invoke-virtual {v7, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "msg"

    const-string v9, "success"

    .line 3036
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3037
    move-object v8, v2

    check-cast v8, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V

    .line 3039
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "DEVICE_INFO_PERFORMANCE_SCORE"

    .line 3040
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v1, v7}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "DEVICE_INFO_PERFORMANCE_SCORE_"

    .line 3043
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DEVICE_INFO_PERFORMANCE_SCORE_RANGE"

    .line 3045
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 3047
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v5, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3052
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataCenter [getDevicePerformanceScore] Exception2="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 2925
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2927
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string p1, "null or empty url, device service will not go on."

    .line 2928
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2932
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?gameid="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    const-string v5, "JF_GAMEID"

    invoke-interface {v3, v5}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2933
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "DataCenter [getDevicePerformanceScore] url="

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2935
    new-instance v0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;-><init>(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/base/GamerInterface;)V

    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/utils/NetUtil;->wget(Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;)V

    return-void

    :cond_5
    const-string p1, "DataCenter [getDevicePerformanceScore] sdkmgr is null"

    .line 3057
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_1
    const-string p1, "DataCenter [getDevicePerformanceScore] param error"

    .line 2900
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getDevicePerformanceScoreRange()V
    .locals 6

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [getDevicePerformanceScoreRange] start"

    .line 3068
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3070
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "DEVICE_INFO_RANGE"

    .line 3074
    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3076
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DataCenter [getDevicePerformanceScoreRange] get scoreRange from cache, scoreRange="

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3078
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3080
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "SDK_UNI_UPDATE_URL"

    invoke-interface {v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3081
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3082
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "EB"

    invoke-interface {v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "https://unisdk.update.easebar.com/ngdevice/"

    goto :goto_0

    :cond_0
    const-string v2, "https://unisdk.update.netease.com/ngdevice/"

    goto :goto_0

    .line 3086
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v4, ""

    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ngdevice/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3089
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "null or empty url, get device performance will not go on."

    .line 3090
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3094
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "score_range.json?gameid="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v4, "JF_GAMEID"

    invoke-interface {v2, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3096
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DataCenter [getDevicePerformanceScoreRange] url="

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3098
    new-instance v0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;

    invoke-direct {v0, p0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;-><init>(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Lcom/netease/ntunisdk/base/GamerInterface;)V

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/utils/NetUtil;->wget(Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;)V

    return-void

    .line 3153
    :cond_4
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "methodId"

    const-string v5, "device_performance_score_range"

    .line 3154
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "code"

    const/4 v5, 0x0

    .line 3155
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "score_range"

    .line 3156
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "msg"

    const-string v5, "success"

    .line 3157
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3158
    move-object v4, v1

    check-cast v4, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V

    const-string v3, "DEVICE_INFO_PERFORMANCE_SCORE_RANGE"

    .line 3160
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 3163
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [getDevicePerformanceScoreRange] Exception2="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3164
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_5
    const-string v1, "DataCenter [getDevicePerformanceScoreRange] sdkmgr is null="

    .line 3168
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initDeviceInfos(Landroid/content/Context;)V
    .locals 6

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [initDeviceInfos] start"

    .line 2472
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2474
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "init fail"

    const/4 v3, -0x1

    if-eqz p1, :cond_4

    if-nez v1, :cond_0

    goto :goto_0

    .line 2482
    :cond_0
    iget-boolean v4, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mHasInit:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const-string p1, "DataCenter [initDeviceInfos] has init"

    .line 2483
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2485
    iget-boolean p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mInitSuccess:Z

    if-eqz p1, :cond_1

    const-string p1, "init success"

    .line 2486
    invoke-direct {p0, v5, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->initSuccessCallBack(ILjava/lang/String;)V

    return-void

    .line 2489
    :cond_1
    invoke-direct {p0, v3, v2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->initSuccessCallBack(ILjava/lang/String;)V

    return-void

    .line 2494
    :cond_2
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_3

    const-string v2, "DataCenter [initDeviceInfos] init sharedPreferences"

    .line 2495
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "unisdk_devices_infos_file"

    .line 2496
    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    :cond_3
    const/4 v0, 0x1

    .line 2499
    iput-boolean v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mHasInit:Z

    .line 2501
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;-><init>(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;Lcom/netease/ntunisdk/base/GamerInterface;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p1, "GetDeviceInfoThread"

    .line 2826
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2827
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_4
    :goto_0
    const-string p1, "DataCenter [initDeviceInfos] param error"

    .line 2477
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2478
    invoke-direct {p0, v3, v2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->initSuccessCallBack(ILjava/lang/String;)V

    return-void
.end method

.method public setmPostDataInInit(Z)V
    .locals 0

    .line 3358
    iput-boolean p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mPostDataInInit:Z

    return-void
.end method
