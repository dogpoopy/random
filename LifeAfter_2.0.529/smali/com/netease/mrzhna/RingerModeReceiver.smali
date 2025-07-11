.class Lcom/netease/mrzhna/RingerModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Client.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p2, "audio"

    .line 142
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p1

    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnRingerMode(I)V

    :cond_0
    return-void
.end method
