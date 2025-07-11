.class public Lcom/netease/inner/pushclient/NativePushManager;
.super Ljava/lang/Object;
.source "NativePushManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static nativePushManager:Lcom/netease/inner/pushclient/NativePushManager;


# instance fields
.field public final PUSH_NAME_PREFIX:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNativePushHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/inner/pushclient/NativePushData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NGPush_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/netease/inner/pushclient/NativePushManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_inner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/netease/inner/pushclient/NativePushManager;

    invoke-direct {v0}, Lcom/netease/inner/pushclient/NativePushManager;-><init>()V

    sput-object v0, Lcom/netease/inner/pushclient/NativePushManager;->nativePushManager:Lcom/netease/inner/pushclient/NativePushManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    const-string v0, "nn_"

    .line 46
    iput-object v0, p0, Lcom/netease/inner/pushclient/NativePushManager;->PUSH_NAME_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/netease/inner/pushclient/NativePushManager;
    .locals 1

    .line 56
    sget-object v0, Lcom/netease/inner/pushclient/NativePushManager;->nativePushManager:Lcom/netease/inner/pushclient/NativePushManager;

    return-object v0
.end method

.method private patchPlaceholder()V
    .locals 2

    .line 49
    sget-object v0, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private stopPushWithPushName(Ljava/lang/String;)Z
    .locals 3

    .line 409
    sget-object v0, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPushWithPushName pushName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/inner/pushclient/NativePushData;

    .line 414
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/netease/inner/pushclient/NativePushData;->stopAlarm(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getAllAlarms()[Ljava/lang/String;
    .locals 5

    .line 458
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/push/utils/PushSetting;->getNativePushNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 459
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllAlarms, nativePushNameSet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 463
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x3

    .line 464
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 465
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .line 60
    sget-object v0, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init, ctx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    .line 62
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/push/utils/PushSetting;->getNativePushNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p1

    .line 63
    sget-object v0, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativePushNameSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public newAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 80
    invoke-virtual/range {v0 .. v5}, Lcom/netease/inner/pushclient/NativePushManager;->newAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public newAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 84
    invoke-virtual/range {v0 .. v9}, Lcom/netease/inner/pushclient/NativePushManager;->newAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public newAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nn_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 89
    sget-object v6, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "newAlarm alarmID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title:"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", msg:"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ext:"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pushName:"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, v0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/push/utils/PushSetting;->getNativePushNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 91
    sget-object v6, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nativePushNameSet:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {v1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, v0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v10}, Lcom/netease/push/utils/PushSetting;->getNativeNotification(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/inner/pushclient/NativePushData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v6, v0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v6, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 98
    :cond_0
    iget-object v1, v0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v10}, Lcom/netease/push/utils/PushSetting;->rmNativePushName(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 105
    :cond_2
    iget-object v1, v0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/inner/pushclient/NativePushData;

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v1 .. v9}, Lcom/netease/inner/pushclient/NativePushData;->setMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 103
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/inner/pushclient/NativePushData;

    invoke-virtual {v1, p2, p3, v4, v5}, Lcom/netease/inner/pushclient/NativePushData;->setMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 108
    :cond_4
    new-instance v11, Lcom/netease/inner/pushclient/NativePushData;

    invoke-direct {v11, v10}, Lcom/netease/inner/pushclient/NativePushData;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, v11

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 112
    invoke-virtual/range {v1 .. v9}, Lcom/netease/inner/pushclient/NativePushData;->setMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 110
    :cond_6
    :goto_2
    invoke-virtual {v11, p2, p3, v4, v5}, Lcom/netease/inner/pushclient/NativePushData;->setMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_3
    iget-object v1, v0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    const/4 v1, 0x1

    return v1
.end method

.method public removeAlarm(Ljava/lang/String;)Z
    .locals 3

    .line 426
    sget-object v0, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeAlarm alarmID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0, p1}, Lcom/netease/inner/pushclient/NativePushManager;->stopPush(Ljava/lang/String;)Z

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nn_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 429
    sget-object v0, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/netease/push/utils/PushSetting;->rmNativePushName(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public removeAllAlarms()Z
    .locals 5

    .line 440
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/push/utils/PushSetting;->getNativePushNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 441
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAllAlarms, nativePushNameSet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x3

    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 445
    sget-object v2, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0, v1}, Lcom/netease/inner/pushclient/NativePushManager;->stopPush(Ljava/lang/String;)Z

    goto :goto_0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 449
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/push/utils/PushSetting;->rmAllNativePushNames(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method

.method public setAlarmTime(Ljava/lang/String;II)Z
    .locals 6

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 120
    invoke-virtual/range {v0 .. v5}, Lcom/netease/inner/pushclient/NativePushManager;->setAlarmTime(Ljava/lang/String;IIILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setAlarmTime(Ljava/lang/String;IIILjava/lang/String;)Z
    .locals 4

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nn_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v2, "setAlarmTime"

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pushName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alarmID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sget-object p1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hour:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object p1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minute:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object p1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "second:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object p1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tz:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/inner/pushclient/NativePushData;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/netease/inner/pushclient/NativePushData;->setTime(IIILjava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setAlarmTime(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 124
    invoke-virtual/range {v0 .. v5}, Lcom/netease/inner/pushclient/NativePushManager;->setAlarmTime(Ljava/lang/String;IIILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setMonthRepeat(Ljava/lang/String;I)Z
    .locals 4

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nn_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMonthRepeat alarmID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", monthMode:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pushName:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return p1

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/inner/pushclient/NativePushData;

    invoke-virtual {p1, p2}, Lcom/netease/inner/pushclient/NativePushData;->setMonthRepeat(I)V

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public setMonthRepeatBackwards(Ljava/lang/String;I)Z
    .locals 4

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nn_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMonthRepeatBackwards alarmID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", monthMode:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pushName:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return p1

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/inner/pushclient/NativePushData;

    invoke-virtual {p1, p2}, Lcom/netease/inner/pushclient/NativePushData;->setMonthRepeatBackwards(I)V

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public setOnce(Ljava/lang/String;III)Z
    .locals 4

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nn_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOnce alarmID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", year:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", month:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", day:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pushName:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/inner/pushclient/NativePushData;

    invoke-virtual {p1, p2, p3, p4}, Lcom/netease/inner/pushclient/NativePushData;->setOnce(III)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setOnceUnixtime(Ljava/lang/String;J)Z
    .locals 4

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nn_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOnceUnixtime alarmID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ut:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", pushName:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/inner/pushclient/NativePushData;

    invoke-virtual {p1, p2, p3}, Lcom/netease/inner/pushclient/NativePushData;->setOnceUnixtime(J)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setWeekRepeat(Ljava/lang/String;I)Z
    .locals 4

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nn_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWeekRepeat alarmID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", weekMode:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pushName:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/16 v1, 0x7f

    if-gt p2, v1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/inner/pushclient/NativePushData;

    invoke-virtual {p1, p2}, Lcom/netease/inner/pushclient/NativePushData;->setWeekRepeat(I)V

    const/4 p1, 0x1

    :cond_1
    :goto_0
    return p1
.end method

.method public startAlarm(Lcom/netease/inner/pushclient/NativePushData;)Z
    .locals 13

    .line 323
    sget-object v0, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAlarm nativePushData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 325
    sget-object p1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v1, "nativePushData is null"

    invoke-static {p1, v1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 328
    :cond_0
    invoke-virtual {p1}, Lcom/netease/inner/pushclient/NativePushData;->getPushName()Ljava/lang/String;

    move-result-object v1

    .line 329
    sget-object v2, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pushName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v2, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/push/utils/PushSetting;->getNativePushNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 331
    sget-object v3, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nativePushNameSet:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 334
    iget-object v3, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/netease/push/utils/PushSetting;->getNativeNotification(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/inner/pushclient/NativePushData;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 336
    iget-object v4, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 338
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 339
    iget-object v3, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/netease/push/utils/PushSetting;->rmNativePushName(Landroid/content/Context;Ljava/lang/String;)V

    .line 342
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/netease/inner/pushclient/NativePushData;->getNotifyMessage()Lcom/netease/push/utils/NotifyMessageImpl;

    move-result-object v3

    .line 343
    iget-object v4, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 344
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/netease/inner/pushclient/NativePushData;

    iget-object v5, v3, Lcom/netease/push/utils/NotifyMessageImpl;->mTitle:Ljava/lang/String;

    iget-object v6, v3, Lcom/netease/push/utils/NotifyMessageImpl;->mMsg:Ljava/lang/String;

    iget-object v7, v3, Lcom/netease/push/utils/NotifyMessageImpl;->mExt:Ljava/lang/String;

    iget-object v8, v3, Lcom/netease/push/utils/NotifyMessageImpl;->mSound:Ljava/lang/String;

    iget-object v9, v3, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupId:Ljava/lang/String;

    iget-object v10, v3, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupName:Ljava/lang/String;

    iget-object v11, v3, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelId:Ljava/lang/String;

    iget-object v12, v3, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelName:Ljava/lang/String;

    invoke-virtual/range {v4 .. v12}, Lcom/netease/inner/pushclient/NativePushData;->setMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 347
    :cond_3
    iget-object v3, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :goto_1
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/inner/pushclient/NativePushData;

    .line 351
    iget-object v3, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lcom/netease/inner/pushclient/NativePushData;->createPushID(Landroid/content/Context;)V

    .line 352
    sget-object v3, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pushData.getPushName():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/inner/pushclient/NativePushData;->getPushName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1}, Lcom/netease/inner/pushclient/NativePushData;->getPushName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 354
    sget-object p1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v1, "invalid pushData: inconsistent pushName"

    invoke-static {p1, v1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 358
    :cond_4
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 360
    invoke-direct {p0, v1}, Lcom/netease/inner/pushclient/NativePushManager;->stopPushWithPushName(Ljava/lang/String;)Z

    .line 362
    :cond_5
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 363
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_6

    .line 364
    sget-object p1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v2, "exceed max alarm count!"

    invoke-static {p1, v2}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 368
    :cond_6
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 369
    iget-object v3, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/netease/push/utils/PushSetting;->setNativePushNames(Landroid/content/Context;Ljava/util/Set;)V

    .line 372
    :cond_7
    iget-object v3, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/netease/push/utils/PushSetting;->setNativeNotification(Landroid/content/Context;Lcom/netease/inner/pushclient/NativePushData;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 374
    sget-object p1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v3, "PushSetting.setNativeNotification error"

    invoke-static {p1, v3}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 377
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/netease/push/utils/PushSetting;->rmNativePushName(Landroid/content/Context;Ljava/lang/String;)V

    return v0

    .line 380
    :cond_8
    sget-object v0, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v1, "pushData.startAlarm"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/netease/inner/pushclient/NativePushData;->startAlarm(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method

.method public startAlarm(Ljava/lang/String;)Z
    .locals 6

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nn_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAlarm alarmID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", pushName:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 284
    sget-object p1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v0, "mNativePushHashMap does not contain pushName"

    invoke-static {p1, v0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 287
    :cond_0
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/inner/pushclient/NativePushData;

    .line 288
    iget-object v2, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/netease/inner/pushclient/NativePushData;->createPushID(Landroid/content/Context;)V

    .line 289
    sget-object v2, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nativePushData.getPushName():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/inner/pushclient/NativePushData;->getPushName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1}, Lcom/netease/inner/pushclient/NativePushData;->getPushName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 291
    sget-object p1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v0, "invalid nativePushData: inconsistent pushName"

    invoke-static {p1, v0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/push/utils/PushSetting;->getNativePushNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 295
    sget-object v3, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nativePushNameSet:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 298
    invoke-direct {p0, v0}, Lcom/netease/inner/pushclient/NativePushManager;->stopPushWithPushName(Ljava/lang/String;)Z

    .line 300
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 301
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_3

    .line 302
    sget-object p1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v2, "exceed max alarm count!"

    invoke-static {p1, v2}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 306
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v3, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/netease/push/utils/PushSetting;->setNativePushNames(Landroid/content/Context;Ljava/util/Set;)V

    .line 309
    :cond_4
    iget-object v3, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/netease/push/utils/PushSetting;->setNativeNotification(Landroid/content/Context;Lcom/netease/inner/pushclient/NativePushData;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 311
    sget-object p1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v3, "PushSetting.setNativeNotification error"

    invoke-static {p1, v3}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 314
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/netease/push/utils/PushSetting;->rmNativePushName(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 317
    :cond_5
    sget-object v0, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    const-string v1, "nativePushData.startAlarm"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/netease/inner/pushclient/NativePushData;->startAlarm(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method

.method public stopPush(Ljava/lang/String;)Z
    .locals 4

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nn_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    sget-object v1, Lcom/netease/inner/pushclient/NativePushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPush alarmID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", pushName:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 397
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mNativePushHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/inner/pushclient/NativePushData;

    goto :goto_0

    .line 399
    :cond_0
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/netease/push/utils/PushSetting;->getNativeNotification(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/inner/pushclient/NativePushData;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 402
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/netease/inner/pushclient/NativePushData;->stopAlarm(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
