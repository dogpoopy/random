.class Lcom/netease/mrzhna/KeyMouseModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Client.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.netease.intent.ACTION_ENABLE_KEYMOUSE"

    .line 129
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 130
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnKeyMouseChange(Z)V

    goto :goto_0

    :cond_0
    const-string p2, "com.netease.intent.ACTION_DISABLE_KEYMOUSE"

    .line 132
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 133
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnKeyMouseChange(Z)V

    :cond_1
    :goto_0
    return-void
.end method
