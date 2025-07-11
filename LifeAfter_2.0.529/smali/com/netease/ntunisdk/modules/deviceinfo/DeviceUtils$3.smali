.class final Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$3;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getAppSize(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/modules/deviceinfo/AsyncCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/netease/ntunisdk/modules/deviceinfo/AsyncCallback;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/modules/deviceinfo/AsyncCallback;)V
    .locals 0

    .line 1440
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$3;->val$callback:Lcom/netease/ntunisdk/modules/deviceinfo/AsyncCallback;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1444
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u7f13\u5b58\u5927\u5c0f="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UNISDK DeviceUtils"

    invoke-static {v0, p2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6570\u636e\u5927\u5c0f="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7a0b\u5e8f\u5927\u5c0f="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1448
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "cacheSize"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "dataSize"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "appSize"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "totalSize"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$3;->val$callback:Lcom/netease/ntunisdk/modules/deviceinfo/AsyncCallback;

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/modules/deviceinfo/AsyncCallback;->onFinished(Ljava/lang/Object;)V

    return-void
.end method
