.class public Lcom/netease/push/utils/PushConstants;
.super Ljava/lang/Object;
.source "PushConstants.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final EVERYDAY:I = 0x7f

.field public static final FIREBASE:Ljava/lang/String; = "fcm"

.field public static final FLYME:Ljava/lang/String; = "flyme"

.field public static final FRIDAY:I = 0x10

.field public static final GCM:Ljava/lang/String; = "gcm"

.field public static final HUAWEI:Ljava/lang/String; = "huawei"

.field public static final HUAWEI_HMS:Ljava/lang/String; = "hms"

.field public static final MAX_ALARM_COUNT:I = 0x1f4

.field public static final MIUI:Ljava/lang/String; = "miui"

.field public static final MONDAY:I = 0x1

.field public static final NIEPUSH:Ljava/lang/String; = "niepush"

.field public static final NIEPUSH_MODE_ALWAYS_ON:I = 0x2

.field public static final NIEPUSH_MODE_DISABLED:I = 0x0

.field public static final NIEPUSH_MODE_WHEN_NEED:I = 0x1

.field public static final NOTIFICATION_EXT:Ljava/lang/String; = "ext"

.field public static final NOTIFICATION_ICON:Ljava/lang/String; = "icon"

.field public static final NOTIFICATION_MESSAGE:Ljava/lang/String; = "msg"

.field public static final NOTIFICATION_NOTIFYID:Ljava/lang/String; = "notify_id"

.field public static final NOTIFICATION_REQID:Ljava/lang/String; = "reqid"

.field public static final NOTIFICATION_SERVICE_TYPE:Ljava/lang/String; = "service_type"

.field public static final NOTIFICATION_TITLE:Ljava/lang/String; = "title"

.field public static final NOTIFICATION_URI:Ljava/lang/String; = "uri"

.field public static final OPPO:Ljava/lang/String; = "oppo"

.field public static final SATURDAY:I = 0x20

.field public static final SUNDAY:I = 0x40

.field private static final TAG:Ljava/lang/String;

.field public static final THURSDAY:I = 0x8

.field public static final TUESDAY:I = 0x2

.field public static final VIVO:Ljava/lang/String; = "vivo"

.field public static final WEDNESDAY:I = 0x4

.field public static final WEEKEND:I = 0x60

.field public static final WORKDAY:I = 0x1f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NGPush_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PushConstants"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/push/utils/PushConstants;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MONTH_DAY(I)I
    .locals 1

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    shl-int p0, v0, p0

    return p0
.end method

.method public static MONTH_DAY_RANGE(II)I
    .locals 2

    const/16 v0, 0x1f

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    shl-int p1, v1, p1

    sub-int/2addr p1, v1

    :goto_0
    sub-int/2addr p0, v1

    shl-int p0, v1, p0

    sub-int/2addr p0, v1

    sub-int/2addr p1, p0

    return p1
.end method

.method private patchPlaceholder()V
    .locals 2

    .line 51
    sget-object v0, Lcom/netease/push/utils/PushConstants;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder2;

    const-string v1, "PatchPlaceholder2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
