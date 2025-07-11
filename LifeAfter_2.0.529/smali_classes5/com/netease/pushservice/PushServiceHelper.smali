.class public Lcom/netease/pushservice/PushServiceHelper;
.super Ljava/lang/Object;
.source "PushServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static s_pushServiceHelper:Lcom/netease/pushservice/PushServiceHelper;


# instance fields
.field private m_network:Lcom/netease/pushservice/Network;

.field private m_pushService:Lcom/netease/pushservice/PushService;

.field private m_recvTimeError:J

.field private m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

.field private m_taskSubmitter:Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;

.field private stopSend2gameIdFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NGPush_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/netease/pushservice/PushServiceHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/netease/pushservice/PushServiceHelper;

    invoke-direct {v0}, Lcom/netease/pushservice/PushServiceHelper;-><init>()V

    sput-object v0, Lcom/netease/pushservice/PushServiceHelper;->s_pushServiceHelper:Lcom/netease/pushservice/PushServiceHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/netease/pushservice/PushServiceInfo;

    invoke-direct {v0}, Lcom/netease/pushservice/PushServiceInfo;-><init>()V

    iput-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_network:Lcom/netease/pushservice/Network;

    .line 90
    iput-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    const-wide/16 v0, 0x3c

    .line 91
    iput-wide v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_recvTimeError:J

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/netease/pushservice/PushServiceHelper;->stopSend2gameIdFlag:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 82
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netease/pushservice/PushServiceHelper;Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/netease/pushservice/PushServiceHelper;->register(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/pushservice/PushServiceHelper;)Lcom/netease/pushservice/PushService;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    return-object p0
.end method

.method private broadcastRegid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 740
    invoke-static {}, Lcom/netease/inner/pushclient/PushClientReceiver;->createNewIDIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "devid"

    .line 741
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Channel"

    const-string v2, "niepush"

    .line 742
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 743
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    sget-object p2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcast createNewIDIntent regid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".permission.ngpush"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private checkFirstStart(Lcom/netease/push/utils/AppInfo;)V
    .locals 4

    .line 724
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "checkFirstStart"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appInfo.mbFirstStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/netease/push/utils/AppInfo;->mbFirstStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appInfo.mPackageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appInfo.mLastReceiveTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/netease/push/utils/AppInfo;->mLastReceiveTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 731
    :cond_0
    iget-boolean v0, p1, Lcom/netease/push/utils/AppInfo;->mbFirstStart:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 732
    iput-boolean v0, p1, Lcom/netease/push/utils/AppInfo;->mbFirstStart:Z

    .line 733
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    iget-object v2, p1, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/netease/push/utils/PushSetting;->setFirstStart(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 736
    :cond_1
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    iget-object p1, p1, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v1, v1, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/netease/pushservice/PushServiceHelper;->broadcastRegid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkProtobuf()Z
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.nano.MessageNano"

    .line 906
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 908
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassNotFoundException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static createActiveMethodIntent()Landroid/content/Intent;
    .locals 3

    .line 836
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netease.push.action.service.METHOD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "method_ver"

    const/4 v2, 0x1

    .line 837
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static createMethodIntent()Landroid/content/Intent;
    .locals 2

    .line 827
    invoke-static {}, Lcom/netease/pushservice/PushServiceHelper;->createActiveMethodIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x20

    .line 828
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static createServiceIntent()Landroid/content/Intent;
    .locals 2

    .line 821
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netease.push.action.service.PUSHSERVICE2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 822
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private enableLight(Ljava/lang/String;Z)V
    .locals 3

    .line 784
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "enableLight"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-static {v0, p1}, Lcom/netease/push/utils/PushSetting;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/push/utils/AppInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 789
    iget-boolean v0, p1, Lcom/netease/push/utils/AppInfo;->mbEnableLight:Z

    if-eq v0, p2, :cond_0

    .line 790
    iput-boolean p2, p1, Lcom/netease/push/utils/AppInfo;->mbEnableLight:Z

    :cond_0
    return-void
.end method

.method private enableRepeatProtect(Ljava/lang/String;Z)V
    .locals 3

    .line 795
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "enableRepeatProtect"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-static {v0, p1}, Lcom/netease/push/utils/PushSetting;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/push/utils/AppInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 801
    invoke-virtual {p1, p2}, Lcom/netease/push/utils/AppInfo;->enableRepeatProtect(Z)V

    :cond_0
    return-void
.end method

.method private enableSound(Ljava/lang/String;Z)V
    .locals 3

    .line 762
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "enableSound"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-static {v0, p1}, Lcom/netease/push/utils/PushSetting;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/push/utils/AppInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 767
    iget-boolean v0, p1, Lcom/netease/push/utils/AppInfo;->mbEnableSound:Z

    if-eq v0, p2, :cond_0

    .line 768
    iput-boolean p2, p1, Lcom/netease/push/utils/AppInfo;->mbEnableSound:Z

    :cond_0
    return-void
.end method

.method private enableVibrate(Ljava/lang/String;Z)V
    .locals 3

    .line 773
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "enableVibrate"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-static {v0, p1}, Lcom/netease/push/utils/PushSetting;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/push/utils/AppInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 778
    iget-boolean v0, p1, Lcom/netease/push/utils/AppInfo;->mbEnableVibrate:Z

    if-eq v0, p2, :cond_0

    .line 779
    iput-boolean p2, p1, Lcom/netease/push/utils/AppInfo;->mbEnableVibrate:Z

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/netease/pushservice/PushServiceHelper;
    .locals 1

    .line 100
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->s_pushServiceHelper:Lcom/netease/pushservice/PushServiceHelper;

    return-object v0
.end method

.method private onGetNewID(Ljava/lang/String;)V
    .locals 3

    .line 272
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetNewID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushManager.getContext():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iput-object p1, v0, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    .line 276
    iget-object p1, v0, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 279
    :cond_0
    iget-boolean p1, p0, Lcom/netease/pushservice/PushServiceHelper;->stopSend2gameIdFlag:Z

    if-eqz p1, :cond_1

    return-void

    .line 282
    :cond_1
    iget-object p1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/push/utils/PushSetting;->setDevId(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 284
    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/push/utils/PushSetting;->setDevId(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    .line 286
    iput-boolean p1, p0, Lcom/netease/pushservice/PushServiceHelper;->stopSend2gameIdFlag:Z

    .line 288
    iget-object p1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-static {p1}, Lcom/netease/push/utils/PushSetting;->getAppInfo(Landroid/content/Context;)Lcom/netease/push/utils/AppInfo;

    move-result-object p1

    .line 289
    invoke-direct {p0, p1}, Lcom/netease/pushservice/PushServiceHelper;->checkFirstStart(Lcom/netease/push/utils/AppInfo;)V

    .line 291
    invoke-virtual {p0}, Lcom/netease/pushservice/PushServiceHelper;->login()V

    return-void
.end method

.method private patchPlaceholder()V
    .locals 2

    .line 96
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private register(Ljava/lang/String;)V
    .locals 3

    .line 321
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "register"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_serviceInfo.mDevId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v2, v2, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-static {v0, p1}, Lcom/netease/push/utils/PushSetting;->getAllOtherNativeNotifications(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 330
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/inner/pushclient/NativePushData;

    .line 331
    iget-object v2, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-virtual {v1, v2, p1}, Lcom/netease/inner/pushclient/NativePushData;->startAlarm(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 339
    :cond_2
    new-instance v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;-><init>()V

    .line 340
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v1, v1, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->id:Ljava/lang/String;

    .line 341
    iput-object p1, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->service:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 342
    iput-wide v1, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->time:J

    .line 343
    sget-object p1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "sendData, REGISTER_TYPE"

    invoke-static {p1, v1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/netease/pushservice/PushServiceHelper;->getNetwork()Lcom/netease/pushservice/Network;

    move-result-object p1

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/netease/pushservice/Network;->sendData(BLcom/netease/push/proto/ProtoClientWrapper$DataMarshal;)V

    return-void
.end method

.method private setNewID()V
    .locals 8

    .line 237
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "setNewID"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Lcom/netease/pushservice/PushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 240
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 242
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 251
    iget-object v4, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-static {v4}, Lcom/netease/pushclient/UnisdkDeviceUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 252
    new-instance v5, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;

    invoke-direct {v5}, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;-><init>()V

    .line 253
    iput-object v0, v5, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->model:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    .line 254
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v6, v2

    const-string v1, "%d*%d"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->screen:Ljava/lang/String;

    const-string v1, "android"

    .line 255
    iput-object v1, v5, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->os:Ljava/lang/String;

    .line 256
    iput-object v3, v5, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->osver:Ljava/lang/String;

    .line 257
    iput-object v4, v5, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->mac:Ljava/lang/String;

    .line 258
    iput-boolean v2, v5, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->supportMpayCmd:Z

    .line 259
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v2, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-virtual {v1, v2}, Lcom/netease/pushservice/PushServiceInfo;->createUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->id:Ljava/lang/String;

    .line 260
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v2, "sendData, SET_NEW_ID_TYPE"

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "model:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->model:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->screen:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "os:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->os:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "osver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->osver:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mac:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->mac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/netease/pushservice/PushServiceHelper;->getNetwork()Lcom/netease/pushservice/Network;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lcom/netease/pushservice/Network;->sendData(BLcom/netease/push/proto/ProtoClientWrapper$DataMarshal;)V

    return-void
.end method

.method private setRepeatProtectInterval(Ljava/lang/String;I)V
    .locals 3

    .line 806
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "setRepeatProtectInterval"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-static {v0, p1}, Lcom/netease/push/utils/PushSetting;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/push/utils/AppInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 812
    invoke-virtual {p1, p2}, Lcom/netease/push/utils/AppInfo;->setRepeatProtectInterval(I)V

    :cond_0
    return-void
.end method

.method public static startActivePushService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 873
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "startActivePushService"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 874
    invoke-static {p0, v0}, Lcom/netease/push/utils/PushSetting;->getCurUseNiepush(Landroid/content/Context;Z)Z

    move-result v0

    .line 875
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "useNiepush:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 877
    sget-object p0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string p1, "need not niepush"

    invoke-static {p0, p1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 883
    :try_start_0
    const-class v0, Lcom/netease/pushservice/PushService;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 886
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 887
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 889
    :try_start_2
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageManager.NameNotFoundException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :goto_0
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method public static startPushService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 842
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "startPushService"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 843
    invoke-static {p0, v0}, Lcom/netease/push/utils/PushSetting;->getCurUseNiepush(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    sget-object p0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string p1, "need not niepush"

    invoke-static {p0, p1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 851
    :cond_0
    :try_start_0
    const-class v0, Lcom/netease/pushservice/PushService;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 856
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 857
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 859
    :try_start_2
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageManager.NameNotFoundException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "androidId"

    .line 865
    invoke-static {p0}, Lcom/netease/pushclient/UnisdkDeviceUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method


# virtual methods
.method public connect(Z)V
    .locals 5

    .line 650
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect, bSync:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect, this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect, m_network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/pushservice/PushServiceHelper;->m_network:Lcom/netease/pushservice/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushSetting;->getCurUseNiepush(Landroid/content/Context;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 654
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "useNiepush="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    sget-object p1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v0, "need not niepush"

    invoke-static {p1, v0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 659
    :cond_0
    invoke-direct {p0}, Lcom/netease/pushservice/PushServiceHelper;->checkProtobuf()Z

    move-result v0

    if-nez v0, :cond_1

    .line 660
    sget-object p1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v0, "missing jar in libs: protobuf-javanano-3.0.0-alpha-5.jar"

    invoke-static {p1, v0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 665
    invoke-virtual {p0}, Lcom/netease/pushservice/PushServiceHelper;->getNetwork()Lcom/netease/pushservice/Network;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/netease/pushservice/Network;->setEnable(Z)V

    .line 666
    invoke-virtual {p0}, Lcom/netease/pushservice/PushServiceHelper;->getNetwork()Lcom/netease/pushservice/Network;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-virtual {p1, v0}, Lcom/netease/pushservice/Network;->connectAuto(Landroid/content/Context;)V

    goto :goto_0

    .line 669
    :cond_2
    iget-object p1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_taskSubmitter:Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;

    new-instance v0, Lcom/netease/pushservice/PushServiceHelper$3;

    invoke-direct {v0, p0}, Lcom/netease/pushservice/PushServiceHelper$3;-><init>(Lcom/netease/pushservice/PushServiceHelper;)V

    invoke-virtual {p1, v0}, Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 681
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "disconnect..."

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_taskSubmitter:Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;

    new-instance v1, Lcom/netease/pushservice/PushServiceHelper$4;

    invoke-direct {v1, p0}, Lcom/netease/pushservice/PushServiceHelper$4;-><init>(Lcom/netease/pushservice/PushServiceHelper;)V

    invoke-virtual {v0, v1}, Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getNetwork()Lcom/netease/pushservice/Network;
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_network:Lcom/netease/pushservice/Network;

    return-object v0
.end method

.method public getNotificationServiceInfo()Lcom/netease/pushservice/PushServiceInfo;
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    return-object v0
.end method

.method public getPushService()Lcom/netease/pushservice/PushService;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    return-object v0
.end method

.method public getTaskSubmitter()Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_taskSubmitter:Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;

    return-object v0
.end method

.method public handlePush(Lcom/netease/push/proto/ProtoClientWrapper$Packet;)V
    .locals 26

    move-object/from16 v1, p0

    const-string v2, "ngpush"

    const-string v3, ""

    .line 365
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v4, "handlePush"

    invoke-static {v0, v4}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p1

    .line 371
    :try_start_0
    iget-object v0, v0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    invoke-static {v0}, Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;->unmarshalMessageInfo([B)Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 376
    iget-object v5, v1, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v5, v5, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    iget-object v6, v0, Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 377
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v3, "deviceID mismatch:"

    invoke-static {v2, v3}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got deviceID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " my deviceID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v3, v3, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 383
    :cond_0
    iget-object v5, v0, Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;->messages:[Lcom/netease/push/proto/ProtoClientWrapper$Message;

    array-length v6, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_e

    aget-object v9, v5, v8

    .line 385
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 388
    :try_start_1
    iget-object v0, v1, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-virtual {v0}, Lcom/netease/pushservice/PushService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v11, v1, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-virtual {v11}, Lcom/netease/pushservice/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x80

    invoke-virtual {v0, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v11, :cond_1

    .line 390
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v11, "ngpush_project"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    .line 393
    :goto_1
    new-instance v11, Lorg/json/JSONObject;

    iget-object v12, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->ext2:Ljava/lang/String;

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 394
    sget-object v12, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PushManagerImpl.project:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "eventType"

    const-string v13, "receiveMsg"

    .line 395
    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "project"

    .line 396
    invoke-virtual {v10, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "reqId"

    .line 397
    iget-object v12, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->reqid:Ljava/lang/String;

    invoke-virtual {v10, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "packageName"

    .line 398
    iget-object v12, v1, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-virtual {v12}, Lcom/netease/pushservice/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "notificationState"

    .line 401
    iget-object v12, v1, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-static {v12}, Lcom/netease/pushclient/PushManagerImpl;->checkNotifySettingContext(Landroid/content/Context;)Z

    move-result v12

    invoke-virtual {v10, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "msgType"

    const-string v12, "1"

    .line 402
    invoke-virtual {v10, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "channelType"

    const-string v12, "niepush"

    .line 403
    invoke-virtual {v10, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "platform"

    const-string v12, "ad"

    .line 404
    invoke-virtual {v10, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "timezone"

    .line 405
    invoke-static {}, Lcom/netease/pushclient/UnisdkDeviceUtil;->getTimeZone()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdkversion"

    const-string v12, "1.5.8"

    .line 406
    invoke-virtual {v10, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "timestamp"

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    long-to-int v12, v11

    invoke-virtual {v10, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 413
    :goto_2
    invoke-static {v10}, Lcom/netease/pushclient/UploadUtil;->SendRequest(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 415
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v10, "got a message"

    invoke-static {v0, v10}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "packagename:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->service:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "title:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "content:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->content:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ext:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->ext:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ext2:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->ext2:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "channelId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->channelId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "channelName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->channelName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "groupId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->groupId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "groupName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->groupName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "time:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->time:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notifyid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->notifyid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "message.packagename:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->packagename:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v0, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->service:Ljava/lang/String;

    .line 430
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 431
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v9, "packagename is empty"

    invoke-static {v0, v9}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move/from16 v16, v8

    :goto_4
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 435
    :cond_2
    iget-object v10, v1, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-static {v10, v0}, Lcom/netease/push/utils/PushSetting;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/push/utils/AppInfo;

    move-result-object v10

    if-nez v10, :cond_3

    .line 437
    sget-object v9, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "not registered packagename:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 441
    :cond_3
    iget-wide v12, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->time:J

    iget-wide v14, v10, Lcom/netease/push/utils/AppInfo;->mLastReceiveTime:J

    move/from16 v16, v8

    iget-wide v7, v1, Lcom/netease/pushservice/PushServiceHelper;->m_recvTimeError:J

    sub-long/2addr v14, v7

    cmp-long v7, v12, v14

    if-gtz v7, :cond_4

    .line 442
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v7, "message is out of date:"

    invoke-static {v0, v7}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appInfo.mLastReceiveTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v10, Lcom/netease/push/utils/AppInfo;->mLastReceiveTime:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "message.time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->time:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 448
    :cond_4
    iget-object v7, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->packagename:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->packagename:Ljava/lang/String;

    iget-object v8, v10, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 449
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v7, "packagename mismatch:"

    invoke-static {v0, v7}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->packagename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appInfo.mPackageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v10, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 455
    :cond_5
    invoke-virtual {v10, v9}, Lcom/netease/push/utils/AppInfo;->filterMessage(Lcom/netease/push/proto/ProtoClientWrapper$Message;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 456
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v7, "message is filtered"

    invoke-static {v0, v7}, Lcom/netease/push/utils/PushLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 460
    :cond_6
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 461
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 462
    iget-wide v10, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->time:J

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v12, v10, v7

    if-lez v12, :cond_8

    .line 463
    iget-wide v7, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->time:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 466
    :cond_7
    iget-wide v7, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->time:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_8
    :goto_5
    new-instance v7, Lcom/netease/push/utils/NotifyMessageImpl;

    iget-object v8, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->title:Ljava/lang/String;

    iget-object v10, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->content:Ljava/lang/String;

    iget-object v11, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->ext:Ljava/lang/String;

    iget v12, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->notifyid:I

    iget-object v13, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->reqid:Ljava/lang/String;

    iget-object v14, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->sound:Ljava/lang/String;

    iget-object v15, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->ext2:Ljava/lang/String;

    const-string v24, "niepush"

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move-object/from16 v25, v15

    invoke-direct/range {v17 .. v25}, Lcom/netease/push/utils/NotifyMessageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v8, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->channelId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 472
    iget-object v8, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->channelId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/netease/push/utils/NotifyMessageImpl;->setChannelId(Ljava/lang/String;)V

    .line 473
    iget-object v8, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->groupId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/netease/push/utils/NotifyMessageImpl;->setGroupId(Ljava/lang/String;)V

    .line 474
    iget-object v8, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->channelName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/netease/push/utils/NotifyMessageImpl;->setChannelName(Ljava/lang/String;)V

    .line 475
    iget-object v8, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->groupName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/netease/push/utils/NotifyMessageImpl;->setGroupName(Ljava/lang/String;)V

    .line 479
    :cond_9
    :try_start_2
    invoke-virtual {v7}, Lcom/netease/push/utils/NotifyMessageImpl;->writeToJsonString()Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 484
    invoke-static {}, Lcom/netease/inner/pushclient/PushClientReceiver;->createMessageIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v10, "message"

    .line 485
    invoke-virtual {v8, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    iget-wide v9, v9, Lcom/netease/push/proto/ProtoClientWrapper$Message;->time:J

    const-string v7, "lasttime"

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 487
    sget-object v7, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "service packageName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-virtual {v10}, Lcom/netease/pushservice/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    new-instance v7, Landroid/content/Intent;

    const-string v9, "com.netease.push.action.client.MESSAGE"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    iget-object v9, v1, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-virtual {v9}, Lcom/netease/pushservice/PushService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 493
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 494
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 495
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 496
    iget-object v7, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v9, "."

    .line 497
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 498
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 500
    :cond_b
    sget-object v9, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sendBroadcast receiverName:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    move-object v7, v3

    .line 505
    :goto_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 506
    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v0, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_7

    .line 508
    :cond_d
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    :goto_7
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v7, "handlePush, sendBroadcast"

    invoke-static {v0, v7}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, v1, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-virtual {v9}, Lcom/netease/pushservice/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".permission.ngpush"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Lcom/netease/pushservice/PushService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_8
    add-int/lit8 v8, v16, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 481
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeToJsonString exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    const/4 v10, 0x0

    .line 517
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 518
    new-instance v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;

    invoke-direct {v0}, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;-><init>()V

    .line 519
    iget-object v2, v1, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v2, v2, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->id:Ljava/lang/String;

    const-string v2, "48"

    .line 520
    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->ver:Ljava/lang/String;

    .line 521
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v2, v2, [Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->serviceInfos:[Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

    .line 523
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 524
    :cond_f
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 525
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 526
    new-instance v4, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

    invoke-direct {v4}, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;-><init>()V

    .line 527
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;->service:Ljava/lang/String;

    .line 528
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;->time:J

    .line 529
    sget-object v3, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "service:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;->service:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    sget-object v3, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "latest push time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;->time:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v3, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->serviceInfos:[Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

    aput-object v4, v3, v10

    add-int/lit8 v10, v10, 0x1

    .line 533
    iget-object v3, v1, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    iget-object v5, v4, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;->service:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/netease/push/utils/PushSetting;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/push/utils/AppInfo;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 535
    iget-wide v4, v4, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;->time:J

    iput-wide v4, v3, Lcom/netease/push/utils/AppInfo;->mLastReceiveTime:J

    goto :goto_9

    .line 538
    :cond_10
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v3, "sendData, GOT_TIME_TYPE"

    invoke-static {v2, v3}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/netease/pushservice/PushServiceHelper;->getNetwork()Lcom/netease/pushservice/Network;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Lcom/netease/pushservice/Network;->sendData(BLcom/netease/push/proto/ProtoClientWrapper$DataMarshal;)V

    :cond_11
    return-void

    :catch_2
    move-exception v0

    .line 373
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unmarshalMessageInfo exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public init(Lcom/netease/pushservice/PushService;)Z
    .locals 9

    .line 108
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->init(Landroid/content/Context;)V

    .line 112
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 122
    :cond_0
    new-instance v1, Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;

    invoke-direct {v1, p0}, Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;-><init>(Lcom/netease/pushservice/PushServiceHelper;)V

    iput-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_taskSubmitter:Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;

    .line 123
    invoke-static {}, Lcom/netease/pushservice/Network;->getInst()Lcom/netease/pushservice/Network;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_network:Lcom/netease/pushservice/Network;

    .line 124
    iput-object p1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    .line 125
    iget-object p1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-static {v1}, Lcom/netease/push/utils/PushSetting;->getDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    .line 126
    iget-object p1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-virtual {p1}, Lcom/netease/pushservice/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/push/utils/PushSetting;->getServiceType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    const-string v2, "gcm"

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushSetting;->getRegistrationID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    iget-object v2, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    const-string v3, "miui"

    invoke-static {v2, v3}, Lcom/netease/push/utils/PushSetting;->getRegistrationID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    iget-object v3, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    const-string v4, "huawei"

    invoke-static {v3, v4}, Lcom/netease/push/utils/PushSetting;->getRegistrationID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    iget-object v4, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    const-string v5, "hms"

    invoke-static {v4, v5}, Lcom/netease/push/utils/PushSetting;->getRegistrationID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    iget-object v5, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    const-string v6, "flyme"

    invoke-static {v5, v6}, Lcom/netease/push/utils/PushSetting;->getRegistrationID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 132
    sget-object v6, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "serviceType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    sget-object p1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "regid_niepush:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v7, v7, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object p1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "regid_gcm:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object p1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "regid_miui:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object p1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regid_huawei:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object p1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regid_huawei_hms:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object p1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regid_flyme:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-virtual {p1}, Lcom/netease/pushservice/PushService;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x30

    .line 142
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contextpkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contextver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-static {v1, p1}, Lcom/netease/push/utils/PushSetting;->getAllOtherNativeNotifications(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 185
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/inner/pushclient/NativePushData;

    .line 186
    sget-object v3, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startAlarm pushName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/netease/inner/pushclient/NativePushData;->getPushName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v3, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-virtual {v2, v3, p1}, Lcom/netease/inner/pushclient/NativePushData;->startAlarm(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 190
    :cond_1
    invoke-virtual {p0, v0}, Lcom/netease/pushservice/PushServiceHelper;->connect(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public login()V
    .locals 6

    .line 295
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;

    invoke-direct {v0}, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;-><init>()V

    .line 297
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v1, v1, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->id:Ljava/lang/String;

    const-string v1, "48"

    .line 298
    iput-object v1, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->ver:Ljava/lang/String;

    const-string v1, ""

    .line 299
    iput-object v1, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->key:Ljava/lang/String;

    const/4 v1, 0x1

    .line 300
    iput-boolean v1, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->supportMpayCmd:Z

    .line 310
    iget-object v2, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-static {v2}, Lcom/netease/push/utils/PushSetting;->getAppInfo(Landroid/content/Context;)Lcom/netease/push/utils/AppInfo;

    move-result-object v2

    .line 312
    new-instance v3, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

    invoke-direct {v3}, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;-><init>()V

    .line 313
    iget-object v4, v2, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;->service:Ljava/lang/String;

    .line 314
    iget-wide v4, v2, Lcom/netease/push/utils/AppInfo;->mLastReceiveTime:J

    iput-wide v4, v3, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;->time:J

    new-array v1, v1, [Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    .line 315
    iput-object v1, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->serviceInfos:[Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

    .line 316
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v2, "sendData, LOGIN_TYPE"

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/netease/pushservice/PushServiceHelper;->getNetwork()Lcom/netease/pushservice/Network;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/netease/pushservice/Network;->sendData(BLcom/netease/push/proto/ProtoClientWrapper$DataMarshal;)V

    return-void
.end method

.method public niepushRegister(Ljava/lang/String;)V
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_taskSubmitter:Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;

    new-instance v1, Lcom/netease/pushservice/PushServiceHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/pushservice/PushServiceHelper$1;-><init>(Lcom/netease/pushservice/PushServiceHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public notifyMessage(Ljava/lang/String;Lcom/netease/push/utils/NotifyMessageImpl;)V
    .locals 3

    .line 749
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "notifyMessage"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 753
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-static {v0, p1}, Lcom/netease/push/utils/PushSetting;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/push/utils/AppInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 755
    new-instance v0, Lcom/netease/push/utils/Notifier;

    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-direct {v0, v1}, Lcom/netease/push/utils/Notifier;-><init>(Landroid/content/Context;)V

    .line 756
    invoke-virtual {v0, p2, p1}, Lcom/netease/push/utils/Notifier;->notify(Lcom/netease/push/utils/NotifyMessageImpl;Lcom/netease/push/utils/AppInfo;)V

    :cond_0
    return-void
.end method

.method public onConnectSuccess()V
    .locals 3

    .line 225
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "onConnectSuccess"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "devid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v2, v2, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-virtual {v0}, Lcom/netease/pushservice/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v2, v2, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/netease/pushservice/PushServiceHelper;->broadcastRegid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/netease/pushservice/PushServiceHelper;->login()V

    goto :goto_0

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/netease/pushservice/PushServiceHelper;->setNewID()V

    :goto_0
    return-void
.end method

.method public onReceive(Lcom/netease/push/proto/ProtoClientWrapper$Packet;)V
    .locals 3

    .line 195
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p1, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->type:B

    invoke-static {v2}, Lcom/netease/push/proto/ProtoClientWrapper;->getTypeName(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-byte v0, p1, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->type:B

    const/16 v1, 0x32

    if-ne v1, v0, :cond_0

    .line 199
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "PUSH_TYPE from server"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/pushservice/PushServiceHelper;->handlePush(Lcom/netease/push/proto/ProtoClientWrapper$Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 203
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "handlePush exception"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x34

    .line 206
    iget-byte v1, p1, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->type:B

    if-ne v0, v1, :cond_1

    .line 207
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "NEW_ID_TYPE from server"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :try_start_1
    iget-object p1, p1, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    invoke-static {p1}, Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;->UnmarshalNewIdInfo([B)Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;

    move-result-object p1

    .line 210
    iget-object p1, p1, Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;->id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/netease/pushservice/PushServiceHelper;->onGetNewID(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 212
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetNewID exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x33

    .line 214
    iget-byte p1, p1, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->type:B

    if-ne v0, p1, :cond_2

    .line 215
    sget-object p1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v0, "RESET_TYPE from server"

    invoke-static {p1, v0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object p1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    invoke-virtual {p1}, Lcom/netease/pushservice/PushServiceInfo;->resetUUID()V

    .line 217
    invoke-direct {p0}, Lcom/netease/pushservice/PushServiceHelper;->setNewID()V

    goto :goto_0

    .line 219
    :cond_2
    sget-object p1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v0, "error cmd"

    invoke-static {p1, v0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public processCommand(Lcom/netease/pushservice/PushService;Landroid/content/Intent;)V
    .locals 5

    .line 544
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "processCommand"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "method"

    .line 550
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-virtual {p1}, Lcom/netease/pushservice/PushService;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 552
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "method:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    sget-object v1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushSetting;->getCurUseNiepush(Landroid/content/Context;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 555
    sget-object v2, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "useNiepush="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "setvibrate"

    .line 557
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "flag"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 558
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 559
    invoke-direct {p0, p1, p2}, Lcom/netease/pushservice/PushServiceHelper;->enableVibrate(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v2, "setrepeatprotect"

    .line 560
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 561
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 562
    invoke-direct {p0, p1, p2}, Lcom/netease/pushservice/PushServiceHelper;->enableRepeatProtect(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v2, "setrepeatprotectinterval"

    .line 563
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v0, 0x12c

    const-string v1, "norepeatinterval"

    .line 564
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 565
    invoke-direct {p0, p1, p2}, Lcom/netease/pushservice/PushServiceHelper;->setRepeatProtectInterval(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string p1, "networkconnect"

    .line 566
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 567
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 568
    invoke-virtual {p0, v4}, Lcom/netease/pushservice/PushServiceHelper;->connect(Z)V

    goto :goto_0

    :cond_4
    const-string p1, "networkdisconnect"

    .line 570
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 571
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 572
    invoke-virtual {p0}, Lcom/netease/pushservice/PushServiceHelper;->disconnect()V

    goto :goto_0

    .line 575
    :cond_5
    sget-object p1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not handled method:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 636
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/pushservice/PushServiceHelper$2;

    invoke-direct {v1, p0}, Lcom/netease/pushservice/PushServiceHelper$2;-><init>(Lcom/netease/pushservice/PushServiceHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 644
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 645
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_taskSubmitter:Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;

    invoke-virtual {v0}, Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;->shutdown()V

    const/4 v0, 0x0

    .line 646
    iput-object v0, p0, Lcom/netease/pushservice/PushServiceHelper;->m_taskSubmitter:Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;

    return-void
.end method

.method public unRegister(Ljava/lang/String;)V
    .locals 3

    .line 348
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "unRegister"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v0, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    sget-object p1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object p1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_pushService:Lcom/netease/pushservice/PushService;

    invoke-static {p1}, Lcom/netease/push/utils/PushSetting;->getAppInfo(Landroid/content/Context;)Lcom/netease/push/utils/AppInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 353
    new-instance v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;-><init>()V

    .line 354
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper;->m_serviceInfo:Lcom/netease/pushservice/PushServiceInfo;

    iget-object v1, v1, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->id:Ljava/lang/String;

    .line 355
    iget-object v1, p1, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->service:Ljava/lang/String;

    .line 356
    iget-wide v1, p1, Lcom/netease/push/utils/AppInfo;->mLastReceiveTime:J

    iput-wide v1, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->time:J

    .line 357
    sget-object p1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "sendData, UNREGISTER_TYPE"

    invoke-static {p1, v1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/netease/pushservice/PushServiceHelper;->getNetwork()Lcom/netease/pushservice/Network;

    move-result-object p1

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/netease/pushservice/Network;->sendData(BLcom/netease/push/proto/ProtoClientWrapper$DataMarshal;)V

    goto :goto_0

    .line 360
    :cond_0
    sget-object p1, Lcom/netease/pushservice/PushServiceHelper;->TAG:Ljava/lang/String;

    const-string v0, "appinfo is null"

    invoke-static {p1, v0}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
