.class public Lcom/netease/androidcrashhandler/unknownCrash/ShutdownBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownBroadcastReceiver.java"


# static fields
.field private static final ACTION_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field private static final TAG:Ljava/lang/String; = "Shutdown"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    invoke-static {}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->getInstance()Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->setNormalExit()V

    const-string p1, "Shutdown"

    const-string p2, "ShutdownBroadcastReceiver onReceive(), Do thing!"

    .line 16
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
