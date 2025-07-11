.class public Lcom/netease/neox/PushNotificationReceiver;
.super Lcom/netease/pushclient/PushClientReceiver;
.source "PushNotificationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/netease/pushclient/PushClientReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetNewDevId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-static {p2}, Lcom/netease/neox/NativeInterface;->NativeOnRegisterPushService(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveNotifyMessage(Landroid/content/Context;Lcom/netease/push/utils/NotifyMessage;)V
    .locals 4

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notification"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 27
    invoke-virtual {p2, v0}, Lcom/netease/push/utils/NotifyMessage;->setIcon(I)V

    .line 28
    invoke-super {p0, p1, p2}, Lcom/netease/pushclient/PushClientReceiver;->onReceiveNotifyMessage(Landroid/content/Context;Lcom/netease/push/utils/NotifyMessage;)V

    return-void
.end method
