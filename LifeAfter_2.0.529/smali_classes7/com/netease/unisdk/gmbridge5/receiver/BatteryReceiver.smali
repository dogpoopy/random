.class public Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryReceiver.java"


# instance fields
.field private mBatteryChangeListener:Lcom/netease/unisdk/gmbridge5/receiver/IBatteryChangeListener;


# direct methods
.method public constructor <init>(Lcom/netease/unisdk/gmbridge5/receiver/IBatteryChangeListener;)V
    .locals 0
    .param p1, "batteryChangeListener"    # Lcom/netease/unisdk/gmbridge5/receiver/IBatteryChangeListener;

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;->mBatteryChangeListener:Lcom/netease/unisdk/gmbridge5/receiver/IBatteryChangeListener;

    .line 19
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 22
    if-nez p2, :cond_0

    .line 23
    return-void

    .line 25
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    new-instance v0, Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;

    invoke-direct {v0}, Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;-><init>()V

    .line 27
    .local v0, "batteryInfo":Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;
    const/4 v1, 0x0

    const-string v2, "level"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 28
    .local v2, "level":I
    const/16 v3, 0x64

    const-string v4, "scal"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 29
    .local v3, "scal":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v5, v2, 0x64

    div-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;->batteryLevel:Ljava/lang/String;

    .line 31
    const/4 v4, -0x1

    const-string v5, "status"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 32
    .local v4, "status":I
    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 34
    .local v1, "isCharging":Z
    :cond_2
    if-eqz v1, :cond_3

    const-string v5, "charging"

    goto :goto_0

    :cond_3
    const-string v5, "not charging"

    :goto_0
    iput-object v5, v0, Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;->batteryStatus:Ljava/lang/String;

    .line 36
    iget-object v5, p0, Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;->mBatteryChangeListener:Lcom/netease/unisdk/gmbridge5/receiver/IBatteryChangeListener;

    invoke-interface {v5, v0}, Lcom/netease/unisdk/gmbridge5/receiver/IBatteryChangeListener;->onBatteryChanged(Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;)V

    .line 38
    .end local v0    # "batteryInfo":Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;
    .end local v1    # "isCharging":Z
    .end local v2    # "level":I
    .end local v3    # "scal":I
    .end local v4    # "status":I
    :cond_4
    return-void
.end method
