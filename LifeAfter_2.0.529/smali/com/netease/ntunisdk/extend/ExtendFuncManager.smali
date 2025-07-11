.class public Lcom/netease/ntunisdk/extend/ExtendFuncManager;
.super Ljava/lang/Object;
.source "ExtendFuncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/extend/ExtendFuncManager$ExtendFuncInterface;
    }
.end annotation


# static fields
.field private static final CLASSES_NAME:[Ljava/lang/String;

.field private static instance:Lcom/netease/ntunisdk/extend/ExtendFuncManager;


# instance fields
.field private final instSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/netease/ntunisdk/extend/ExtendFuncManager$ExtendFuncInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final methodIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/extend/ExtendFuncManager$ExtendFuncInterface;",
            ">;"
        }
    .end annotation
.end field

.field private sdkBase:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "GotoPermission"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "RestartApp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "HasPackageInstalled"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AppStoreComment"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "MediaFileSelector"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GameMode"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BatteryInfo"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "HotspotInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "BaseSupportDeviceInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "NetworkCardInfo"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "NetworkCardManager"

    aput-object v2, v0, v1

    .line 17
    sput-object v0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->CLASSES_NAME:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->methodIdMap:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->instSet:Ljava/util/HashSet;

    .line 68
    sget-object v0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->CLASSES_NAME:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.netease.ntunisdk.extend."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 72
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/ntunisdk/extend/ExtendFuncManager$ExtendFuncInterface;

    .line 73
    invoke-interface {v4}, Lcom/netease/ntunisdk/extend/ExtendFuncManager$ExtendFuncInterface;->getMethodIds()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 74
    invoke-interface {v4}, Lcom/netease/ntunisdk/extend/ExtendFuncManager$ExtendFuncInterface;->getMethodIds()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 75
    iget-object v9, p0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->methodIdMap:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 77
    :cond_0
    iget-object v5, p0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->instSet:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    .line 81
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private extendFunCallNotMethod(Lorg/json/JSONObject;)V
    .locals 2

    .line 126
    :try_start_0
    sget-object v0, Lcom/netease/ntunisdk/ExtendCode;->NO_EXIST_METHOD:Lcom/netease/ntunisdk/ExtendCode;

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/ExtendCode;->formatResult(Lorg/json/JSONObject;Lcom/netease/ntunisdk/ExtendCode;)V

    .line 127
    iget-object v0, p0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->sdkBase:Lcom/netease/ntunisdk/base/SdkBase;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->sdkBase:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 131
    sget-object v0, Lcom/netease/ntunisdk/ExtendCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/ExtendCode;

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/ExtendCode;->formatResult(Lorg/json/JSONObject;Lcom/netease/ntunisdk/ExtendCode;)V

    .line 132
    iget-object v0, p0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->sdkBase:Lcom/netease/ntunisdk/base/SdkBase;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/netease/ntunisdk/extend/ExtendFuncManager;
    .locals 1

    .line 58
    sget-object v0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->instance:Lcom/netease/ntunisdk/extend/ExtendFuncManager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;

    invoke-direct {v0}, Lcom/netease/ntunisdk/extend/ExtendFuncManager;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->instance:Lcom/netease/ntunisdk/extend/ExtendFuncManager;

    .line 61
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->instance:Lcom/netease/ntunisdk/extend/ExtendFuncManager;

    return-object v0
.end method


# virtual methods
.method public extendFunc(Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->methodIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->methodIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->methodIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/extend/ExtendFuncManager$ExtendFuncInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/extend/ExtendFuncManager$ExtendFuncInterface;->extendFunc(Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p1, "channel"

    .line 91
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 93
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->extendFunCallNotMethod(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs extendFunc(Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 7

    .line 100
    iget-object v0, p0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->methodIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->methodIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->methodIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->methodIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/netease/ntunisdk/extend/ExtendFuncManager$ExtendFuncInterface;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/netease/ntunisdk/extend/ExtendFuncManager$ExtendFuncInterface;->extendFunc(Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "channel"

    .line 104
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 106
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->extendFunCallNotMethod(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public init(Lcom/netease/ntunisdk/base/SdkBase;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->sdkBase:Lcom/netease/ntunisdk/base/SdkBase;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    .locals 8

    .line 113
    iget-object v0, p0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->instSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/netease/ntunisdk/extend/ExtendFuncManager$ExtendFuncInterface;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 114
    invoke-interface/range {v2 .. v7}, Lcom/netease/ntunisdk/extend/ExtendFuncManager$ExtendFuncInterface;->onActivityResult(IILandroid/content/Intent;Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume(Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/netease/ntunisdk/extend/ExtendFuncManager;->instSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/extend/ExtendFuncManager$ExtendFuncInterface;

    .line 120
    invoke-interface {v1, p1, p2}, Lcom/netease/ntunisdk/extend/ExtendFuncManager$ExtendFuncInterface;->onResume(Lcom/netease/ntunisdk/base/SdkBase;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method
