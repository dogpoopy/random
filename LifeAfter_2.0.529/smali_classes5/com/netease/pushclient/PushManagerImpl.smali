.class public final Lcom/netease/pushclient/PushManagerImpl;
.super Ljava/lang/Object;
.source "PushManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/pushclient/PushManagerImpl$HmsCallback;,
        Lcom/netease/pushclient/PushManagerImpl$TaskSubmitter;,
        Lcom/netease/pushclient/PushManagerImpl$PushManagerCallback;
    }
.end annotation


# static fields
.field public static EB:Ljava/lang/String;

.field private static EBUploadUrl:Ljava/lang/String;

.field private static EBgate:Ljava/lang/String;

.field private static PERMISSION_REQ_CODE:I

.field private static final TAG:Ljava/lang/String;

.field private static aid:Ljava/lang/String;

.field private static gate:Ljava/lang/String;

.field private static gateKey:Ljava/lang/String;

.field public static project:Ljava/lang/String;

.field private static roleid:Ljava/lang/String;

.field public static s_context:Landroid/content/Context;

.field private static s_initialized:Z

.field private static s_multiPackSupport:Z

.field private static s_permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sdkuid:Ljava/lang/String;

.field private static service:Ljava/lang/String;

.field public static subscriber:Ljava/lang/String;

.field private static usePlatform:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NGPush_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/netease/pushclient/PushManagerImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 60
    sput-object v0, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    const/4 v0, 0x1

    .line 61
    sput-boolean v0, Lcom/netease/pushclient/PushManagerImpl;->s_multiPackSupport:Z

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netease/pushclient/PushManagerImpl;->s_permissions:Ljava/util/List;

    const/4 v0, 0x0

    .line 64
    sput-boolean v0, Lcom/netease/pushclient/PushManagerImpl;->s_initialized:Z

    const/16 v0, 0x3e7

    .line 66
    sput v0, Lcom/netease/pushclient/PushManagerImpl;->PERMISSION_REQ_CODE:I

    const-string v0, ""

    .line 74
    sput-object v0, Lcom/netease/pushclient/PushManagerImpl;->gate:Ljava/lang/String;

    .line 75
    sput-object v0, Lcom/netease/pushclient/PushManagerImpl;->gateKey:Ljava/lang/String;

    .line 77
    sput-object v0, Lcom/netease/pushclient/PushManagerImpl;->EB:Ljava/lang/String;

    const-string v0, "https://gate.push.x.easebar.com"

    .line 78
    sput-object v0, Lcom/netease/pushclient/PushManagerImpl;->EBgate:Ljava/lang/String;

    const-string v0, "https://sigma-statistics-push.proxima.nie.easebar.com"

    .line 79
    sput-object v0, Lcom/netease/pushclient/PushManagerImpl;->EBUploadUrl:Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/netease/pushclient/PushManagerImpl$1;

    invoke-direct {v0}, Lcom/netease/pushclient/PushManagerImpl$1;-><init>()V

    sput-object v0, Lcom/netease/pushclient/PushManagerImpl;->usePlatform:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string p1, ""

    .line 1218
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "SendRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1222
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestBody="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 1226
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1228
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1230
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1231
    sget-object p3, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sb="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/netease/pushclient/PushManagerImpl;->string2MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1233
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "strAuth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 1236
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "timestamp"

    .line 1237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "project_code"

    .line 1238
    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->project:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    const-string v2, "android"

    .line 1239
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "auth"

    .line 1240
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "POST"

    const/4 v1, 0x0

    .line 1241
    invoke-static {p0, p3, p2, v1, v0}, Lcom/netease/pushclient/NetUtil;->doHttp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 1242
    sget-object p2, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1245
    sget-object p2, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "err="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-static {p0, p1}, Lcom/netease/pushclient/PushManagerImpl;->setServiceType(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .line 58
    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->onInitSuccessFinal()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->gate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->gateKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-static {p0, p1, p2, p3}, Lcom/netease/pushclient/PushManagerImpl;->SendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->service:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->aid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->sdkuid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->roleid:Ljava/lang/String;

    return-object v0
.end method

.method public static checkNotifySetting()Z
    .locals 11

    .line 1021
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1022
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "isNotificationEnabled!!!!"

    invoke-static {v0, v2}, Lcom/netease/push/utils/PushLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 1025
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getImportance()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 1029
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    return v3

    .line 1032
    :cond_1
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "isNotificationEnabled2!!!!"

    invoke-static {v0, v2}, Lcom/netease/push/utils/PushLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    const-string v2, "appops"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 1034
    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1035
    sget-object v4, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1036
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1040
    :try_start_0
    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "checkOpNoThrow"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    .line 1041
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v8, "OP_POST_NOTIFICATION"

    .line 1043
    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1045
    const-class v8, Ljava/lang/Integer;

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-array v7, v7, [Ljava/lang/Object;

    .line 1046
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v3

    aput-object v4, v7, v10

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catch_0
    move-exception v0

    .line 1048
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return v1
.end method

.method public static checkNotifySettingContext(Landroid/content/Context;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1058
    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "isNotificationEnabled!!!!"

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const-string v1, "notification"

    .line 1061
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getImportance()I

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1065
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    return v3

    .line 1068
    :cond_1
    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "isNotificationEnabled2!!!!"

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appops"

    .line 1069
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 1070
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1071
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 1072
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1076
    :try_start_0
    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "checkOpNoThrow"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    .line 1077
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v7, "OP_POST_NOTIFICATION"

    .line 1079
    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 1081
    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-array v6, v6, [Ljava/lang/Object;

    .line 1082
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    aput-object p0, v6, v9

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :catch_0
    move-exception p0

    .line 1084
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return v0
.end method

.method private static checkPushServiceType(Landroid/content/Context;)V
    .locals 9

    .line 590
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "checkPushServiceType"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-static {p0}, Lcom/netease/pushclient/PushManagerImpl;->readConfig(Landroid/content/Context;)V

    .line 595
    invoke-static {p0}, Lcom/netease/push/utils/DeviceInfo;->isMIUI(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ClassNotFoundException:"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->usePlatform:Ljava/util/Map;

    const-string v4, "miui"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    invoke-static {v4}, Lcom/netease/pushclient/PushManagerImpl;->getAppID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-static {v4}, Lcom/netease/pushclient/PushManagerImpl;->getAppKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    const-string v6, "com.xiaomi.push.service.XMPushService"

    .line 600
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    .line 602
    sget-object v7, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 605
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v6, :cond_0

    .line 606
    invoke-static {p0, v4}, Lcom/netease/pushclient/PushManagerImpl;->setServiceType(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 611
    :cond_0
    invoke-static {p0}, Lcom/netease/push/utils/DeviceInfo;->isHuawei(Landroid/content/Context;)Z

    move-result v0

    const-string v4, "huawei"

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->usePlatform:Ljava/util/Map;

    const-string v5, "hms"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    invoke-static {v4}, Lcom/netease/pushclient/PushManagerImpl;->getAppID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    sget-object v6, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HMS appid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    const-string v6, "com.huawei.hms.support.api.push.PushReceiver"

    .line 616
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v6, 0x1

    goto :goto_1

    :catch_1
    move-exception v6

    .line 618
    sget-object v7, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 621
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v6, :cond_1

    .line 622
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "2.5.2.300\u7248\u672c\u5f00\u59cb\uff0c\u5fc5\u987b\u628a\u534e\u4e3aappid\u914d\u7f6e\u5728androidmanifest#com.huawei.hms.client.appid\u91cc\u9762"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-static {p0, v5}, Lcom/netease/pushclient/PushManagerImpl;->setServiceType(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 628
    :cond_1
    invoke-static {p0}, Lcom/netease/push/utils/DeviceInfo;->isHuawei(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->usePlatform:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 629
    invoke-static {v4}, Lcom/netease/pushclient/PushManagerImpl;->getAppID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_2
    const-string v5, "com.huawei.android.pushagent.PushEventReceiver"

    .line 632
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v5, 0x1

    goto :goto_2

    :catch_2
    move-exception v5

    .line 634
    sget-object v6, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 637
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v5, :cond_2

    .line 638
    invoke-static {p0, v4}, Lcom/netease/pushclient/PushManagerImpl;->setServiceType(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 644
    :cond_2
    invoke-static {}, Lcom/netease/inner/pushclient/oppo/OPPO;->getInst()Lcom/netease/inner/pushclient/oppo/OPPO;

    move-result-object v0

    sget-object v4, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/netease/inner/pushclient/oppo/OPPO;->checkSupportOPPOPush(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->usePlatform:Ljava/util/Map;

    const-string v4, "oppo"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 645
    invoke-static {v4}, Lcom/netease/pushclient/PushManagerImpl;->getAppID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 646
    invoke-static {v4}, Lcom/netease/pushclient/PushManagerImpl;->getAppKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_3
    const-string v6, "com.netease.inner.pushclient.oppo.MessageReceiver"

    .line 649
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v6, 0x1

    goto :goto_3

    :catch_3
    move-exception v6

    .line 651
    sget-object v7, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 654
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v6, :cond_3

    .line 655
    invoke-static {p0, v4}, Lcom/netease/pushclient/PushManagerImpl;->setServiceType(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 661
    :cond_3
    invoke-static {p0}, Lcom/netease/push/utils/DeviceInfo;->isFlyme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->usePlatform:Ljava/util/Map;

    const-string v4, "flyme"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 662
    invoke-static {v4}, Lcom/netease/pushclient/PushManagerImpl;->getAppID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_4
    const-string v5, "com.meizu.cloud.pushsdk.NotificationService"

    .line 665
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v5, 0x1

    goto :goto_4

    :catch_4
    move-exception v5

    .line 667
    sget-object v6, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 670
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v5, :cond_4

    .line 671
    invoke-static {p0, v4}, Lcom/netease/pushclient/PushManagerImpl;->setServiceType(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 677
    :cond_4
    invoke-static {p0}, Lcom/netease/push/utils/DeviceInfo;->isVivo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->usePlatform:Ljava/util/Map;

    const-string v4, "vivo"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_5
    const-string v0, "com.netease.inner.pushclient.vivo.MessageReceiver"

    .line 681
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    const/4 v0, 0x1

    goto :goto_5

    :catch_5
    move-exception v0

    .line 683
    sget-object v5, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_5

    .line 687
    invoke-static {p0, v4}, Lcom/netease/pushclient/PushManagerImpl;->setServiceType(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 694
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "string"

    const-string v6, "default_web_client_id"

    invoke-virtual {v0, v6, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 695
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "firebase_database_url"

    invoke-virtual {v4, v7, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    :try_start_6
    const-string v5, "com.google.firebase.iid.FirebaseInstanceIdReceiver"

    .line 698
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v5, "com.netease.inner.pushclient.firebase.MyFirebaseInstanceIDService"

    .line 699
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    const/4 v5, 0x1

    goto :goto_6

    :catch_6
    move-exception v5

    .line 701
    sget-object v6, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_6
    if-eqz v0, :cond_6

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    .line 704
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->usePlatform:Ljava/util/Map;

    const-string v4, "fcm"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 705
    invoke-static {p0, v4}, Lcom/netease/pushclient/PushManagerImpl;->setServiceType(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    :cond_6
    const-string v0, "gcm"

    .line 714
    invoke-static {v0}, Lcom/netease/pushclient/PushManagerImpl;->getSenderID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_7
    const-string v5, "com.google.android.gms.gcm.GoogleCloudMessaging"

    .line 717
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v5, "com.netease.inner.pushclient.gcm.PushClient"

    .line 718
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    const/4 v1, 0x1

    goto :goto_7

    :catch_7
    move-exception v3

    .line 720
    sget-object v5, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    :goto_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v1, :cond_7

    .line 724
    invoke-static {}, Lcom/netease/inner/pushclient/gcm/GCM;->getInst()Lcom/netease/inner/pushclient/gcm/GCM;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/netease/inner/pushclient/gcm/GCM;->isGooglePlayServicesAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 726
    invoke-static {p0, v0}, Lcom/netease/pushclient/PushManagerImpl;->setServiceType(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    :cond_7
    const-string v0, "niepush"

    .line 731
    invoke-static {p0, v0}, Lcom/netease/pushclient/PushManagerImpl;->setServiceType(Landroid/content/Context;Ljava/lang/String;)V

    :goto_8
    return-void
.end method

.method public static clearContext()V
    .locals 1

    .line 958
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 959
    sput-object v0, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static createPushChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V
    .locals 2

    .line 1094
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    .line 1095
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "createPushChannel"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1097
    new-instance v1, Landroid/app/NotificationChannelGroup;

    invoke-direct {v1, p0, p1}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1098
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    .line 1100
    new-instance p1, Landroid/app/NotificationChannel;

    const/4 v1, 0x3

    invoke-direct {p1, p2, p3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1101
    invoke-virtual {p1, p0}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    .line 1105
    new-instance p0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    const/4 p2, 0x6

    invoke-virtual {p0, p2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    .line 1106
    invoke-static {p7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 1107
    invoke-virtual {p1, p2, p0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    :cond_0
    if-eqz p5, :cond_1

    .line 1111
    invoke-virtual {p1, p4}, Landroid/app/NotificationChannel;->enableLights(Z)V

    :cond_1
    if-eqz p4, :cond_2

    .line 1114
    invoke-virtual {p1, p4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 1116
    :cond_2
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_0

    .line 1118
    :cond_3
    sget-object p0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string p1, "Build.VERSION.SDK_INT < Build.VERSION_CODES.O, createPushChannel fail"

    invoke-static {p0, p1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static enableLight(Z)V
    .locals 2

    .line 498
    sget-boolean v0, Lcom/netease/pushclient/PushManagerImpl;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 499
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/netease/inner/pushclient/PushManager;->enableLight(Landroid/content/Context;Z)Z

    :cond_0
    return-void
.end method

.method public static enableMultiPackSupport(Z)V
    .locals 0

    .line 358
    sput-boolean p0, Lcom/netease/pushclient/PushManagerImpl;->s_multiPackSupport:Z

    return-void
.end method

.method public static enableRepeatProtect(Z)V
    .locals 2

    .line 507
    sget-boolean v0, Lcom/netease/pushclient/PushManagerImpl;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 508
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/netease/inner/pushclient/PushManager;->enableRepeatProtect(Landroid/content/Context;Z)Z

    :cond_0
    return-void
.end method

.method public static enableSound(Z)V
    .locals 2

    .line 480
    sget-boolean v0, Lcom/netease/pushclient/PushManagerImpl;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 481
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/netease/inner/pushclient/PushManager;->enableSound(Landroid/content/Context;Z)Z

    :cond_0
    return-void
.end method

.method public static enableVibrate(Z)V
    .locals 2

    .line 489
    sget-boolean v0, Lcom/netease/pushclient/PushManagerImpl;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 490
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/netease/inner/pushclient/PushManager;->enableVibrate(Landroid/content/Context;Z)Z

    :cond_0
    return-void
.end method

.method public static getAppID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 547
    sget-boolean v0, Lcom/netease/pushclient/PushManagerImpl;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 548
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/netease/inner/pushclient/PushManager;->getAppID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getAppKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 561
    sget-boolean v0, Lcom/netease/pushclient/PushManagerImpl;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 562
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/netease/inner/pushclient/PushManager;->getAppKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 354
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    return-object v0
.end method

.method public static getDevId()Ljava/lang/String;
    .locals 1

    .line 473
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/pushclient/PushManagerImpl;->getDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDevId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 395
    :cond_0
    invoke-static {p0}, Lcom/netease/pushclient/PushManagerImpl;->getServiceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 396
    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDevId, ctx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", s_initialized:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/netease/pushclient/PushManagerImpl;->s_initialized:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", serviceType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "gcm"

    .line 398
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, ","

    if-eqz v4, :cond_2

    .line 399
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/netease/inner/pushclient/PushManager;->getRegistrationID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    :cond_1
    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gcm devid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v3, "miui"

    .line 405
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 406
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/netease/inner/pushclient/PushManager;->getRegistrationID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    :cond_3
    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "miui devid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v3, "huawei"

    .line 412
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 413
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/netease/inner/pushclient/PushManager;->getRegistrationID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    :cond_5
    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "huawei devid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "hms"

    .line 419
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 420
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/netease/inner/pushclient/PushManager;->getRegistrationID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    :cond_7
    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "huawei hms devid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "flyme"

    .line 426
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 427
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/netease/inner/pushclient/PushManager;->getRegistrationID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    :cond_9
    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flyme devid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v3, "fcm"

    .line 433
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 434
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/netease/inner/pushclient/PushManager;->getRegistrationID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    :cond_b
    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "firebase devid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v3, "oppo"

    .line 440
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 441
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/netease/inner/pushclient/PushManager;->getRegistrationID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    :cond_d
    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oppo devid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_e
    const-string v3, "vivo"

    .line 447
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 448
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/netease/inner/pushclient/PushManager;->getRegistrationID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    :cond_f
    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vivo devid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_10
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    .line 457
    invoke-static {p0, v1}, Lcom/netease/push/utils/PushSetting;->getCurUseNiepush(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 459
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/inner/pushclient/PushManager;->getDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 460
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-boolean v0, Lcom/netease/pushclient/PushManagerImpl;->s_multiPackSupport:Z

    if-eqz v0, :cond_11

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "niepush"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_11
    move-object v0, p0

    .line 464
    sget-object p0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "niepush devid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    sget-object p0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s_multiPackSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/netease/pushclient/PushManagerImpl;->s_multiPackSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_12
    sget-object p0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "devid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.5.8"

    return-object v0
.end method

.method public static getSenderID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 531
    sget-boolean v0, Lcom/netease/pushclient/PushManagerImpl;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 532
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/netease/inner/pushclient/PushManager;->getSenderID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getServiceType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 582
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/inner/pushclient/PushManager;->getServiceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemLanguage()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 1302
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 1303
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    goto :goto_0

    .line 1306
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 1310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1314
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1317
    :cond_1
    :goto_1
    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StrUtil [getSystemLanguage] final System Language="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static goToNotificationSetting()V
    .locals 5

    .line 969
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNotifySetting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->checkNotifySetting()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    :try_start_0
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->checkNotifySetting()Z

    move-result v0

    if-nez v0, :cond_5

    .line 972
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 974
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "android.settings.APP_NOTIFICATION_SETTINGS"

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_0

    .line 975
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.provider.extra.APP_PACKAGE"

    .line 976
    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 978
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v3, :cond_1

    .line 980
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app_package"

    .line 981
    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app_uid"

    .line 982
    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 983
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v2, 0x13

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    if-ne v1, v2, :cond_2

    .line 984
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 985
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const/high16 v1, 0x10000000

    .line 989
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 990
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_3

    .line 991
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package"

    .line 992
    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 993
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-gt v1, v2, :cond_4

    const-string v1, "android.intent.action.VIEW"

    .line 994
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.setting.InstalledAppDetails"

    .line 995
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings.ApplicationPkgName"

    .line 996
    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    :cond_4
    :goto_0
    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1002
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method private static hasPermissionDeclared(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 908
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 910
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x1000

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 913
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_2

    .line 915
    array-length p0, v0

    if-lez p0, :cond_2

    .line 916
    array-length p0, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_2

    aget-object v3, v0, v2

    .line 917
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 923
    sget-object p1, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasPermissionDeclared exception:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 6

    .line 224
    invoke-static {p0}, Lcom/netease/push/utils/PushLog;->init(Landroid/content/Context;)V

    .line 225
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->init(Landroid/content/Context;)V

    .line 226
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init, context:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdkVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "verCode:48"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sput-object p0, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    .line 230
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s_context:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 234
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.netease.push.action.service.PUSHSERVICE3"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 236
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 237
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 238
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 249
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.netease.push.action.service.PUSHSERVICE2"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 251
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 252
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 253
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x0

    .line 259
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const/16 v5, 0x2b

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 261
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 262
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 263
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v1, 0x0

    :cond_5
    if-nez v1, :cond_6

    const-string v0, "The intent-filter for service com.netease.pushservice.PushService in AndroidManifest should be:com.netease.push.action.service.PUSHSERVICE3"

    .line 271
    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {v0}, Lcom/netease/pushclient/PushManagerImpl;->onInitFailed(Ljava/lang/String;)V

    .line 273
    invoke-static {p0}, Lcom/netease/pushclient/PushManagerImpl;->killProcess(Landroid/content/Context;)V

    .line 277
    :cond_6
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 278
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 279
    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "targetSdkVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "osVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :try_start_0
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 284
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_7

    .line 285
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "ngpush_gate"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/netease/pushclient/PushManagerImpl;->gate:Ljava/lang/String;

    .line 286
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "ngpush_gateKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/netease/pushclient/PushManagerImpl;->gateKey:Ljava/lang/String;

    .line 287
    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "set project:"

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "ngpush_project"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/pushclient/PushManagerImpl;->project:Ljava/lang/String;

    .line 289
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "project:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->project:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 295
    :cond_7
    :goto_1
    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->readLibraryConfig()V

    .line 296
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->EB:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->EB:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 297
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->EBgate:Ljava/lang/String;

    sput-object v0, Lcom/netease/pushclient/PushManagerImpl;->gate:Ljava/lang/String;

    .line 298
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->EBUploadUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/pushclient/UploadUtil;->setUrl(Ljava/lang/String;)V

    .line 300
    :cond_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v1, "eventType"

    const-string v2, "init"

    .line 302
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "project"

    .line 303
    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->project:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "udid"

    .line 304
    invoke-static {p0}, Lcom/netease/pushclient/UnisdkDeviceUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "mobileModel"

    .line 307
    invoke-static {}, Lcom/netease/pushclient/UnisdkDeviceUtil;->getMobileModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "osVersion"

    .line 308
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "platform"

    const-string v1, "ad"

    .line 309
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "timezone"

    .line 310
    invoke-static {}, Lcom/netease/pushclient/UnisdkDeviceUtil;->getTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "timestamp"

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "sdkversion"

    const-string v1, "1.5.8"

    .line 312
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "unisdk_deviceid"

    .line 313
    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netease/pushclient/UnisdkDeviceUtil;->getUnisdkDeviceId(Landroid/content/Context;Lcom/netease/pushclient/UnisdkDeviceUtil$GaidCallback;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 316
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 318
    :goto_2
    invoke-static {v0}, Lcom/netease/pushclient/UploadUtil;->SendRequest(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 321
    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->initImpl()V

    .line 322
    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->onInitSuccess()V

    return-void
.end method

.method private static initImpl()V
    .locals 7

    .line 327
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "initImpl"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/inner/pushclient/PushManager;->init(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "com.netease.pushclient.NativePushManager"

    .line 332
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "init"

    new-array v4, v1, [Ljava/lang/Class;

    .line 333
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 334
    sget-object v4, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    aput-object v4, v3, v6

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 336
    sget-object v3, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :goto_0
    sput-boolean v1, Lcom/netease/pushclient/PushManagerImpl;->s_initialized:Z

    .line 341
    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/pushclient/PushManagerImpl;->getServiceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 342
    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/pushclient/PushManagerImpl;->checkPushServiceType(Landroid/content/Context;)V

    .line 343
    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/pushclient/PushManagerImpl;->getServiceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 344
    sget-object v3, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oldServiceType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    sget-object v3, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newServiceType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "need to get new Devid"

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/netease/push/utils/PushSetting;->setDevId(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static killProcess(Landroid/content/Context;)V
    .locals 5

    .line 188
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 189
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 192
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 194
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 195
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 196
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 197
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v0, v3, :cond_1

    .line 198
    iget-object v1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, ""

    .line 202
    :goto_0
    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mainProcessName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 204
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void

    .line 207
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 208
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 209
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 210
    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 214
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 215
    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_2

    .line 219
    :cond_6
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 p0, 0x0

    .line 220
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static ntlogin()V
    .locals 2

    .line 1124
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/pushclient/PushManagerImpl$3;

    invoke-direct {v1}, Lcom/netease/pushclient/PushManagerImpl$3;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1152
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static onInitFailed(Ljava/lang/String;)V
    .locals 6

    .line 176
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitFailed, reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.netease.pushclient.PushManager"

    .line 179
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onInitFailed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 180
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 181
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 183
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static onInitSuccess()V
    .locals 3

    .line 113
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 114
    invoke-static {v0}, Lcom/netease/pushclient/PushManagerImpl;->getServiceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hms"

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "checkHms"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/netease/inner/pushclient/huawei/Huawei;->getInst()Lcom/netease/inner/pushclient/huawei/Huawei;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    new-instance v2, Lcom/netease/pushclient/PushManagerImpl$2;

    invoke-direct {v2}, Lcom/netease/pushclient/PushManagerImpl$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/netease/inner/pushclient/huawei/Huawei;->checkHms(Landroid/content/Context;Lcom/netease/pushclient/PushManagerImpl$HmsCallback;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "oppo"

    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "niepush"

    if-eqz v1, :cond_2

    .line 148
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "checkSupportOPPOPush"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/netease/inner/pushclient/oppo/OPPO;->getInst()Lcom/netease/inner/pushclient/oppo/OPPO;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/inner/pushclient/oppo/OPPO;->checkSupportOPPOPush(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "checkSupportOPPOPush true"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->onInitSuccessFinal()V

    goto :goto_0

    .line 153
    :cond_1
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "checkSupportOPPOPush false"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/netease/pushclient/PushManagerImpl;->setServiceType(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->onInitSuccessFinal()V

    goto :goto_0

    :cond_2
    const-string v1, "vivo"

    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "checkSupportVIVOPush"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/netease/inner/pushclient/vivo/Vivo;->getInst()Lcom/netease/inner/pushclient/vivo/Vivo;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/inner/pushclient/vivo/Vivo;->checkSupportVIVOPush(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "checkSupportVIVOPush true"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->onInitSuccessFinal()V

    goto :goto_0

    .line 163
    :cond_3
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "checkSupportVIVOPush false"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/netease/pushclient/PushManagerImpl;->setServiceType(Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->onInitSuccessFinal()V

    goto :goto_0

    .line 168
    :cond_4
    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->onInitSuccessFinal()V

    goto :goto_0

    .line 171
    :cond_5
    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->onInitSuccessFinal()V

    :goto_0
    return-void
.end method

.method private static onInitSuccessFinal()V
    .locals 4

    .line 101
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onInitSuccess"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.netease.pushclient.PushManager"

    .line 104
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 105
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 106
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method private static readConfig(Landroid/content/Context;)V
    .locals 5

    .line 737
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "readConfig"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "miui"

    const-string v1, ""

    .line 738
    invoke-static {v0, v1}, Lcom/netease/pushclient/PushManagerImpl;->setAppID(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "huawei"

    .line 739
    invoke-static {v2, v1}, Lcom/netease/pushclient/PushManagerImpl;->setAppID(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "flyme"

    .line 740
    invoke-static {v3, v1}, Lcom/netease/pushclient/PushManagerImpl;->setAppID(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "oppo"

    .line 741
    invoke-static {v4, v1}, Lcom/netease/pushclient/PushManagerImpl;->setAppID(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-static {v0, v1}, Lcom/netease/pushclient/PushManagerImpl;->setAppKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-static {v2, v1}, Lcom/netease/pushclient/PushManagerImpl;->setAppKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-static {v3, v1}, Lcom/netease/pushclient/PushManagerImpl;->setAppKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-static {v4, v1}, Lcom/netease/pushclient/PushManagerImpl;->setAppKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gcm"

    .line 746
    invoke-static {v0, v1}, Lcom/netease/pushclient/PushManagerImpl;->setSenderID(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-static {p0}, Lcom/netease/pushclient/PushManagerImpl;->readJsonConfig(Landroid/content/Context;)V

    .line 748
    invoke-static {p0}, Lcom/netease/pushclient/PushManagerImpl;->readMetadataConfig(Landroid/content/Context;)V

    return-void
.end method

.method private static readConfigFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 894
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0

    .line 895
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    .line 897
    new-array v1, v1, [B

    .line 898
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 899
    new-instance p0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 902
    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config file not found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", err:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/netease/push/utils/PushLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private static readConfigMetadata(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 823
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 827
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "ngpush_default"

    .line 828
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_2

    :cond_1
    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    .line 832
    :goto_0
    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load meta-data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    :cond_2
    :goto_1
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readConfigMetadata, name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static readJsonConfig(Landroid/content/Context;)V
    .locals 9

    .line 839
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "readJsonConfig"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ngpush.miui"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 843
    invoke-static {p0, v1}, Lcom/netease/pushclient/PushManagerImpl;->readConfigFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "APPID"

    const-string v4, ", err:"

    const-string v5, "parse config file:"

    if-eqz v2, :cond_1

    .line 846
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 848
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "miui"

    if-nez v7, :cond_0

    .line 849
    :try_start_1
    invoke-static {v8, v2}, Lcom/netease/pushclient/PushManagerImpl;->setAppID(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "APPKEY"

    .line 851
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 852
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 853
    invoke-static {v8, v2}, Lcom/netease/pushclient/PushManagerImpl;->setAppKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 856
    sget-object v6, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ngpush.huawei"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 862
    invoke-static {p0, v1}, Lcom/netease/pushclient/PushManagerImpl;->readConfigFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 865
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 866
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 867
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "huawei"

    .line 868
    invoke-static {v3, v2}, Lcom/netease/pushclient/PushManagerImpl;->setAppID(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 871
    sget-object v3, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".ngpush.gcm"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 877
    invoke-static {p0, v0}, Lcom/netease/pushclient/PushManagerImpl;->readConfigFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 880
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "SENDERID"

    .line 881
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 882
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "gcm"

    .line 883
    invoke-static {v1, p0}, Lcom/netease/pushclient/PushManagerImpl;->setSenderID(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 886
    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private static readLibraryConfig()V
    .locals 7

    const-string v0, "EB"

    const-string v1, "ntunisdk_config"

    .line 1382
    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 1386
    :try_start_0
    invoke-virtual {v2, v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1389
    :catch_0
    sget-object v5, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v6, "fail to read ntunisdk_config, try ntunisdk.cfg"

    invoke-static {v5, v6}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    :goto_0
    if-nez v5, :cond_0

    :try_start_1
    const-string v1, "ntunisdk.cfg"

    .line 1395
    invoke-virtual {v2, v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_1
    if-nez v5, :cond_2

    .line 1398
    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "ntunisdk_config/ntunisdk.cfg null"

    invoke-static {v2, v3}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    .line 1414
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    return-void

    .line 1401
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_4

    if-eqz v5, :cond_3

    .line 1414
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_3
    return-void

    .line 1405
    :cond_4
    :try_start_5
    new-array v2, v2, [B

    .line 1406
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    .line 1408
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v3, v2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_6

    .line 1414
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    nop

    goto :goto_2

    .line 1410
    :catch_4
    :try_start_7
    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "ntunisdk_config/ntunisdk.cfg config not found"

    invoke-static {v2, v3}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v5, :cond_5

    .line 1414
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    :cond_5
    move-object v3, v4

    :cond_6
    :goto_2
    if-nez v3, :cond_7

    .line 1421
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is null"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1424
    :cond_7
    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "\uff1a"

    .line 1428
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "\u201c"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "\u201d"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1429
    :cond_8
    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5305\u542b\u4e2d\u6587\u7279\u6b8a\u5b57\u7b26"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    :cond_9
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 1436
    :try_start_9
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 1437
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_7

    if-nez v2, :cond_a

    return-void

    .line 1441
    :cond_a
    :try_start_a
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_3

    .line 1443
    :catch_6
    :try_start_b
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "no tag:EB"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-eqz v4, :cond_b

    .line 1446
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EB--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    sput-object v4, Lcom/netease/pushclient/PushManagerImpl;->EB:Ljava/lang/String;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_4

    .line 1450
    :catch_7
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "ntunisdk_config/ntunisdk.cfg config parse to json error"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_4
    return-void

    :goto_5
    if-eqz v5, :cond_c

    .line 1414
    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 1418
    :catch_8
    :cond_c
    throw v0
.end method

.method private static readMetadataConfig(Landroid/content/Context;)V
    .locals 6

    .line 752
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "readMetadataConfig"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 757
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 759
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load meta-data, err:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    return-void

    .line 765
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ngpush_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "miui"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_appid"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 766
    invoke-static {p0, v0}, Lcom/netease/pushclient/PushManagerImpl;->readConfigMetadata(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 767
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 768
    invoke-static {v2, v0}, Lcom/netease/pushclient/PushManagerImpl;->setAppID(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_appkey"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 771
    invoke-static {p0, v0}, Lcom/netease/pushclient/PushManagerImpl;->readConfigMetadata(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 772
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 773
    invoke-static {v2, v0}, Lcom/netease/pushclient/PushManagerImpl;->setAppKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "huawei"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 778
    invoke-static {p0, v0}, Lcom/netease/pushclient/PushManagerImpl;->readConfigMetadata(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 779
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 780
    invoke-static {v2, v0}, Lcom/netease/pushclient/PushManagerImpl;->setAppID(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "com.huawei.hms.client.appid"

    .line 783
    invoke-static {p0, v0}, Lcom/netease/pushclient/PushManagerImpl;->readConfigMetadata(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 784
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 785
    invoke-static {v2, v0}, Lcom/netease/pushclient/PushManagerImpl;->setAppID(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "flyme"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 790
    invoke-static {p0, v0}, Lcom/netease/pushclient/PushManagerImpl;->readConfigMetadata(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 792
    invoke-static {v2, v0}, Lcom/netease/pushclient/PushManagerImpl;->setAppID(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 795
    invoke-static {p0, v0}, Lcom/netease/pushclient/PushManagerImpl;->readConfigMetadata(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 796
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 797
    invoke-static {v2, v0}, Lcom/netease/pushclient/PushManagerImpl;->setAppKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "gcm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_senderid"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    invoke-static {p0, v0}, Lcom/netease/pushclient/PushManagerImpl;->readConfigMetadata(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 803
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 804
    invoke-static {v2, v0}, Lcom/netease/pushclient/PushManagerImpl;->setSenderID(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "oppo"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 809
    invoke-static {p0, v0}, Lcom/netease/pushclient/PushManagerImpl;->readConfigMetadata(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 810
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 811
    invoke-static {v2, v0}, Lcom/netease/pushclient/PushManagerImpl;->setAppID(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 814
    invoke-static {p0, v0}, Lcom/netease/pushclient/PushManagerImpl;->readConfigMetadata(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 815
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 816
    invoke-static {v2, p0}, Lcom/netease/pushclient/PushManagerImpl;->setAppKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static reportNotificationOpened(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1324
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1325
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1326
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "ngpush_project"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/pushclient/PushManagerImpl;->project:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1330
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1332
    :cond_0
    :goto_0
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",reqId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "project="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->project:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ngpushDeviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/netease/pushclient/PushManagerImpl;->getDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/netease/pushclient/PushManagerImpl;->getDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extendJson="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/netease/pushclient/PushManagerImpl;->getDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 1338
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 1342
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1344
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1345
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    :cond_2
    const-string p2, "eventType"

    const-string v0, "clickMsg"

    .line 1347
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "project"

    .line 1348
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->project:Ljava/lang/String;

    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "reqId"

    .line 1349
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ngpushDeviceId"

    .line 1350
    invoke-static {p0}, Lcom/netease/pushclient/PushManagerImpl;->getDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "packageName"

    .line 1351
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1352
    invoke-static {p0}, Lcom/netease/pushclient/PushManagerImpl;->getDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "registerId"

    .line 1353
    aget-object p1, p1, v4

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "notificationState"

    .line 1354
    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->checkNotifySetting()Z

    move-result p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "msgType"

    const-string p2, "1"

    .line 1355
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "channelType"

    .line 1356
    invoke-static {p0}, Lcom/netease/pushclient/PushManagerImpl;->getServiceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "platform"

    const-string p1, "ad"

    .line 1357
    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "timezone"

    .line 1358
    invoke-static {}, Lcom/netease/pushclient/UnisdkDeviceUtil;->getTimeZone()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "sdkversion"

    const-string p1, "1.5.8"

    .line 1359
    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "timestamp"

    .line 1360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    long-to-int p2, p1

    invoke-virtual {v1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1372
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1374
    :goto_1
    invoke-static {v1}, Lcom/netease/pushclient/UploadUtil;->SendRequest(Lorg/json/JSONObject;)Ljava/lang/String;

    :cond_3
    :goto_2
    return-void
.end method

.method public static setAppID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 541
    sget-boolean v0, Lcom/netease/pushclient/PushManagerImpl;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 542
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/netease/inner/pushclient/PushManager;->setAppID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static setAppKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 555
    sget-boolean v0, Lcom/netease/pushclient/PushManagerImpl;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 556
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/netease/inner/pushclient/PushManager;->setAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static setEnableStartOtherService(Z)V
    .locals 3

    .line 1457
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushMangerImpl setEnableStartOtherService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    sget-boolean v0, Lcom/netease/pushclient/PushManagerImpl;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 1459
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/netease/inner/pushclient/PushManager;->setEnableStartOtherService(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public static setNiepushMode(I)V
    .locals 3

    .line 575
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNiepushMode, s_context:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 577
    invoke-static {v0, p0}, Lcom/netease/push/utils/PushSetting;->setNiepushMode2(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public static setNotUsePushPlatform(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "miui"

    .line 1280
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1281
    sget-object p0, Lcom/netease/pushclient/PushManagerImpl;->usePlatform:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "huawei"

    .line 1282
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1283
    sget-object p0, Lcom/netease/pushclient/PushManagerImpl;->usePlatform:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v0, "hms"

    .line 1284
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1285
    sget-object p0, Lcom/netease/pushclient/PushManagerImpl;->usePlatform:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v0, "oppo"

    .line 1286
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1287
    sget-object p0, Lcom/netease/pushclient/PushManagerImpl;->usePlatform:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v0, "vivo"

    .line 1288
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1289
    sget-object p0, Lcom/netease/pushclient/PushManagerImpl;->usePlatform:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string v0, "flyme"

    .line 1290
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1291
    sget-object p0, Lcom/netease/pushclient/PushManagerImpl;->usePlatform:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const-string v0, "fcm"

    .line 1292
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1293
    sget-object p0, Lcom/netease/pushclient/PushManagerImpl;->usePlatform:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_0
    return-void
.end method

.method public static setPushAddr(Ljava/lang/String;)V
    .locals 3

    .line 568
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPushAddr, s_context:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", addr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 570
    invoke-static {v0, p0}, Lcom/netease/push/utils/PushSetting;->setPushAddr(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setRepeatProtectInterval(I)V
    .locals 2

    .line 516
    sget-boolean v0, Lcom/netease/pushclient/PushManagerImpl;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 517
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/netease/inner/pushclient/PushManager;->setRepeatProtectInterval(Landroid/content/Context;I)Z

    :cond_0
    return-void
.end method

.method public static setSenderID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 525
    sget-boolean v0, Lcom/netease/pushclient/PushManagerImpl;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 526
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/netease/inner/pushclient/PushManager;->setSenderID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private static setServiceType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 586
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netease/inner/pushclient/PushManager;->setServiceType(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static startService()V
    .locals 2

    .line 369
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "startService"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    sget-boolean v0, Lcom/netease/pushclient/PushManagerImpl;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 371
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/inner/pushclient/PushManager;->startService(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static stopService()V
    .locals 2

    .line 376
    sget-object v0, Lcom/netease/pushclient/PushManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopService"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    sget-boolean v0, Lcom/netease/pushclient/PushManagerImpl;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 378
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManagerImpl;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/inner/pushclient/PushManager;->stopService(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static string2MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "MD5"

    .line 1256
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 1263
    array-length v1, p0

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1265
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 1266
    aget-char v4, p0, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1267
    :cond_0
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 1268
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1269
    :goto_1
    array-length v1, p0

    if-ge v2, v1, :cond_2

    .line 1270
    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x10

    if-ge v1, v3, :cond_1

    const-string v3, "0"

    .line 1272
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1273
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1275
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 1258
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1259
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static subscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1156
    sput-object p0, Lcom/netease/pushclient/PushManagerImpl;->service:Ljava/lang/String;

    .line 1157
    sput-object p1, Lcom/netease/pushclient/PushManagerImpl;->aid:Ljava/lang/String;

    .line 1158
    sput-object p2, Lcom/netease/pushclient/PushManagerImpl;->sdkuid:Ljava/lang/String;

    .line 1159
    sput-object p3, Lcom/netease/pushclient/PushManagerImpl;->roleid:Ljava/lang/String;

    .line 1160
    sput-object p4, Lcom/netease/pushclient/PushManagerImpl;->subscriber:Ljava/lang/String;

    .line 1162
    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lcom/netease/pushclient/PushManagerImpl$4;

    invoke-direct {p1}, Lcom/netease/pushclient/PushManagerImpl$4;-><init>()V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1214
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static terminatePush()V
    .locals 1

    .line 383
    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->stopService()V

    .line 384
    invoke-static {}, Lcom/netease/pushservice/PushServiceHelper;->getInstance()Lcom/netease/pushservice/PushServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pushservice/PushServiceHelper;->stop()V

    return-void
.end method
