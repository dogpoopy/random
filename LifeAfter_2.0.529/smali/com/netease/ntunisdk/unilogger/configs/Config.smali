.class public Lcom/netease/ntunisdk/unilogger/configs/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;
    }
.end annotation


# instance fields
.field public carrierLimit:J

.field private configCallBack:Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;

.field private configJson:Lorg/json/JSONObject;

.field public expire:I

.field public fileLimit:J

.field private hadRequestRegion:Z

.field private isRemote:Z

.field private keysMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private resultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;",
            ">;"
        }
    .end annotation
.end field

.field public wifiOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->isRemote:Z

    .line 23
    iput-boolean v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->wifiOnly:Z

    const/16 v1, 0x1e

    .line 24
    iput v1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->expire:I

    const-wide/32 v1, 0xa00000

    .line 25
    iput-wide v1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->fileLimit:J

    .line 26
    iput-wide v1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->carrierLimit:J

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configCallBack:Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;

    .line 28
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->keysMap:Ljava/util/HashMap;

    .line 29
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    .line 30
    iput-object v1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    .line 31
    iput-boolean v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->hadRequestRegion:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/unilogger/configs/Config;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->isRemote:Z

    return p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/unilogger/configs/Config;)Lorg/json/JSONObject;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    return-object p0
.end method

.method private addUnitToResultMapByUnitname(Ljava/lang/String;)V
    .locals 2

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;-><init>(Lcom/netease/ntunisdk/unilogger/configs/Config;)V

    .line 154
    iget-boolean v1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->isRemote:Z

    iput-boolean v1, v0, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->isRemote:Z

    .line 155
    iget-object v1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private callback(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configCallBack:Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->isCallback:Z

    .line 513
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configCallBack:Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;

    iget-object v1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-boolean v2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->isRemote:Z

    invoke-interface {v0, p1, v1, v2}, Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;->onResult(Ljava/lang/String;Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;Z)V

    :cond_0
    return-void
.end method

.method private declared-synchronized checkAllFromMap()V
    .locals 5

    monitor-enter p0

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 397
    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-object v2, v2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->orMap:Ljava/util/HashMap;

    .line 398
    iget-object v3, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-object v3, v3, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->andMap:Ljava/util/HashMap;

    .line 400
    invoke-direct {p0, v1, v2, v3}, Lcom/netease/ntunisdk/unilogger/configs/Config;->checkIsEmpty(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/unilogger/configs/Config;->checkOrMapHit(Ljava/util/HashMap;)I

    move-result v2

    .line 405
    invoke-direct {p0, v3}, Lcom/netease/ntunisdk/unilogger/configs/Config;->checkAndMapHit(Ljava/util/HashMap;)I

    move-result v3

    .line 407
    invoke-direct {p0, v1, v2, v3}, Lcom/netease/ntunisdk/unilogger/configs/Config;->checkFinalHit(Ljava/lang/String;II)V

    goto :goto_0

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/configs/ConfigUtil;->writeUnitResultToFile(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 413
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config [checkAllFromMap] Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isRemote="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->isRemote:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->w_inner(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private checkAndMapHit(Ljava/util/HashMap;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 462
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    .line 466
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 467
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v1, v4, :cond_2

    goto :goto_1

    .line 471
    :cond_2
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method private checkFinalHit(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-ne v0, p3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v2, p2, :cond_8

    if-ne v2, p3, :cond_8

    .line 497
    iget-object p2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-boolean p2, p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->writeEnable:Z

    if-ne p2, v2, :cond_1

    iget-object p2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-boolean p2, p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->uploadEnable:Z

    if-eq p2, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 501
    :cond_2
    iget-object p2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iput-boolean v2, p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->writeEnable:Z

    .line 502
    iget-object p2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iput-boolean v2, p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->uploadEnable:Z

    .line 504
    iget-object p2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-boolean p2, p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->isCallback:Z

    if-eqz p2, :cond_3

    if-eqz v1, :cond_8

    .line 505
    :cond_3
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/unilogger/configs/Config;->callback(Ljava/lang/String;)V

    goto :goto_2

    .line 484
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-boolean p2, p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->writeEnable:Z

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-boolean p2, p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->uploadEnable:Z

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 488
    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iput-boolean v1, p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->writeEnable:Z

    .line 489
    iget-object p2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iput-boolean v1, p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->uploadEnable:Z

    .line 491
    iget-object p2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-boolean p2, p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->isCallback:Z

    if-eqz p2, :cond_7

    if-eqz v2, :cond_8

    .line 492
    :cond_7
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/unilogger/configs/Config;->callback(Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method

.method private checkIsEmpty(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 420
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_3

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p2

    if-nez p2, :cond_3

    .line 422
    iget-object p2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-boolean p2, p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->writeEnable:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-boolean p2, p2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->uploadEnable:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 426
    :goto_1
    iget-object p3, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iput-boolean v1, p3, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->writeEnable:Z

    .line 427
    iget-object p3, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iput-boolean v1, p3, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->uploadEnable:Z

    .line 429
    iget-object p3, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-boolean p3, p3, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->isCallback:Z

    if-eqz p3, :cond_2

    if-eqz p2, :cond_4

    .line 430
    :cond_2
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/unilogger/configs/Config;->callback(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_2
    return v0
.end method

.method private checkOrMapHit(Ljava/util/HashMap;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 441
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    .line 445
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 446
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v1, v4, :cond_2

    goto :goto_1

    .line 450
    :cond_2
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method private containValueFromJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 358
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 359
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_1
    return p1
.end method

.method private containValueFromUnitConfigKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 335
    invoke-virtual {p4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 337
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 339
    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 343
    invoke-direct {p0, p2, v1}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)I

    move-result v1

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Config [containValueFromUnitConfigKey] unitName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " desValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", srcKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isRemote="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->isRemote:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 346
    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    invoke-direct {p0, p1, p3, v1}, Lcom/netease/ntunisdk/unilogger/configs/Config;->updataResultToMap(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private fillResultMap()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->keysMap:Ljava/util/HashMap;

    const-string v1, "local_ip"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-direct {p0}, Lcom/netease/ntunisdk/unilogger/configs/Config;->handleLocalIp()V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->keysMap:Ljava/util/HashMap;

    const-string v1, "udid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->udid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->udid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->keysMap:Ljava/util/HashMap;

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->uid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 176
    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->uid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->keysMap:Ljava/util/HashMap;

    const-string v1, "roleid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->roleId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 180
    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->roleId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->keysMap:Ljava/util/HashMap;

    const-string v1, "gameid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->gameId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 184
    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->gameId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_5
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->keysMap:Ljava/util/HashMap;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 188
    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 191
    :cond_6
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->keysMap:Ljava/util/HashMap;

    const-string v1, "model"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 192
    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->model:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 195
    :cond_7
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->keysMap:Ljava/util/HashMap;

    const-string v1, "os_ver"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 196
    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->osVer:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 199
    :cond_8
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->keysMap:Ljava/util/HashMap;

    const-string v1, "sdk_version"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 200
    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->sdkVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 203
    :cond_9
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->keysMap:Ljava/util/HashMap;

    const-string v1, "region"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 204
    invoke-direct {p0}, Lcom/netease/ntunisdk/unilogger/configs/Config;->handleRegion()V

    .line 207
    :cond_a
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->keysMap:Ljava/util/HashMap;

    const-string v1, "unisdk_version"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 208
    invoke-direct {p0}, Lcom/netease/ntunisdk/unilogger/configs/Config;->handleUnisdkVersion()V

    .line 211
    :cond_b
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->keysMap:Ljava/util/HashMap;

    const-string v1, "channel_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 212
    invoke-direct {p0}, Lcom/netease/ntunisdk/unilogger/configs/Config;->handleChannelId()V

    .line 215
    :cond_c
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->keysMap:Ljava/util/HashMap;

    const-string v1, "channel_version"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 216
    invoke-direct {p0}, Lcom/netease/ntunisdk/unilogger/configs/Config;->handleChannelVersion()V

    :cond_d
    :goto_0
    return-void
.end method

.method private handleChannelId()V
    .locals 3

    .line 271
    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->channelId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "channel_id"

    if-nez v0, :cond_0

    .line 272
    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->channelId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 276
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->getChannelIdFromAssetsFile()Ljava/lang/String;

    move-result-object v0

    .line 277
    sput-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->channelId:Ljava/lang/String;

    .line 278
    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method private handleChannelVersion()V
    .locals 3

    .line 283
    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->channelVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "channel_version"

    if-nez v0, :cond_0

    .line 284
    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->channelVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 288
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->getChannelVersionFromAssetsFile()Ljava/lang/String;

    move-result-object v0

    .line 289
    sput-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->channelVersion:Ljava/lang/String;

    .line 290
    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method private handleLocalIp()V
    .locals 4

    .line 221
    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->localIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "local_ip"

    if-nez v0, :cond_0

    .line 222
    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->localIp:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 225
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->getLocalIpFromModuleDeviceinfo()Ljava/lang/String;

    move-result-object v0

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Config [startEveryModuleConfigKey] localIp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isRemote="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->isRemote:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 228
    sput-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->localIp:Ljava/lang/String;

    .line 229
    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method private handleRegion()V
    .locals 3

    .line 234
    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->region:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->region:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    const-string v2, "region"

    invoke-virtual {p0, v0, v2, v1}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 238
    :cond_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->hadRequestRegion:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->hadRequestRegion:Z

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config [startEveryModuleConfigKey] WhoamiRequest \u8bf7\u6c42\u56fd\u5bb6\u4fe1\u606f, isRemote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->isRemote:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 241
    new-instance v0, Lcom/netease/ntunisdk/unilogger/network/WhoamiRequest;

    invoke-direct {v0}, Lcom/netease/ntunisdk/unilogger/network/WhoamiRequest;-><init>()V

    .line 242
    new-instance v1, Lcom/netease/ntunisdk/unilogger/configs/Config$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/unilogger/configs/Config$1;-><init>(Lcom/netease/ntunisdk/unilogger/configs/Config;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/unilogger/network/BaseRequest;->registerNetCallback(Lcom/netease/ntunisdk/unilogger/network/NetCallback;)V

    .line 253
    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/network/NetworkProxy;->addToUploadQueue(Lcom/netease/ntunisdk/unilogger/network/BaseRequest;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private handleUnisdkVersion()V
    .locals 3

    .line 259
    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->unisdkVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "unisdk_version"

    if-nez v0, :cond_0

    .line 260
    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->unisdkVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 264
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->getUniSDKBaseVersionReflexUniSDK()Ljava/lang/String;

    move-result-object v0

    .line 265
    sput-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->unisdkVersion:Ljava/lang/String;

    .line 266
    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method private init(Lorg/json/JSONObject;Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    .line 50
    iput-object p2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configCallBack:Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;

    return-void
.end method

.method private initResultMap()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 127
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/unilogger/configs/Config;->addUnitToResultMapByUnitname(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/unilogger/configs/Config;->setDefaultInfoToResultMapByUnitname(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 132
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "wifi_only"

    .line 134
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "expire"

    .line 135
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "file_limit"

    .line 136
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "carrier_limit"

    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "queue_size"

    .line 138
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "upload_url"

    .line 139
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 141
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/unilogger/configs/Config;->addUnitToResultMapByUnitname(Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    invoke-direct {p0, v1, v2}, Lcom/netease/ntunisdk/unilogger/configs/Config;->setDefaultInfoToResultMapByUnitname(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private parseActionParamsFromConfig()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    const-string v1, "wifi_only"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->wifiOnly:Z

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    const-string v1, "expire"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->expire:I

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    const-string v1, "file_limit"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->fileLimit:J

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    const-string v1, "carrier_limit"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->carrierLimit:J

    .line 117
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config [parseActionParamsFromConfig] wifiOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->wifiOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", expire="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->expire:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fileLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->fileLimit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", carrierLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->carrierLimit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isRemote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->isRemote:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private setDefaultInfoToResultMapByUnitname(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "and"

    const-string v1, "or"

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 65
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 67
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 72
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    iget-object v5, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->keysMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v5, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-object v5, v5, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->orMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 81
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 83
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->keysMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-object v1, v1, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->andMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Config [parseConfigByKey] Exception="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isRemote="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->isRemote:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->w_inner(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private showMsg()V
    .locals 7

    const-string v0, ", isRemote="

    .line 527
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 528
    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 529
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", orMap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    iget-object v5, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-object v5, v5, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->orMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "null"

    if-eqz v5, :cond_0

    :try_start_1
    iget-object v5, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-object v5, v5, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->orMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, v6

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", andMap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    iget-object v5, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-object v5, v5, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->andMap:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-object v6, v5, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->andMap:Ljava/util/HashMap;

    :cond_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", writeEnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    .line 532
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-boolean v5, v5, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->writeEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", uploadEnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    .line 533
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-boolean v3, v3, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->uploadEnable:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " "

    .line 534
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 536
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Config [showMsg] resultMap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->isRemote:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 539
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Config [showMsg] Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->isRemote:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->w_inner(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private start()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/netease/ntunisdk/unilogger/configs/Config;->parseActionParamsFromConfig()V

    .line 55
    invoke-direct {p0}, Lcom/netease/ntunisdk/unilogger/configs/Config;->initResultMap()V

    .line 56
    invoke-direct {p0}, Lcom/netease/ntunisdk/unilogger/configs/Config;->fillResultMap()V

    return-void
.end method

.method private updataResultToMap(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    const-string v0, "local_ip"

    .line 375
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "udid"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "uid"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "roleid"

    .line 376
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "gameid"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "package"

    .line 381
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "model"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "os_ver"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "region"

    .line 382
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "sdk_version"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "unisdk_version"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "channel_id"

    .line 383
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "channel_version"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-object v0, v0, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->andMap:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 385
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-object p1, p1, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->andMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 377
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-object v0, v0, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->orMap:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-object p1, p1, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->orMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 389
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 390
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Config [updataResultToMap] Exception="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isRemote="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->isRemote:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->w_inner(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->configJson:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public declared-synchronized containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    monitor-enter p0

    .line 308
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 310
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 312
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "wifi_only"

    .line 314
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "expire"

    .line 315
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "file_limit"

    .line 316
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "carrier_limit"

    .line 317
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "queue_size"

    .line 318
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "upload_url"

    .line 319
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 322
    invoke-direct {p0, v1, p1, p2, v2}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromUnitConfigKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 325
    :cond_1
    invoke-direct {p0}, Lcom/netease/ntunisdk/unilogger/configs/Config;->checkAllFromMap()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 328
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Config [containValueFromConfigKey] Exception="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isRemote="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->isRemote:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->w_inner(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getUnitResult(Ljava/lang/String;)Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;
    .locals 1

    .line 518
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->resultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized parseConfig(Lorg/json/JSONObject;Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;Z)V
    .locals 0

    monitor-enter p0

    .line 43
    :try_start_0
    iput-boolean p3, p0, Lcom/netease/ntunisdk/unilogger/configs/Config;->isRemote:Z

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/unilogger/configs/Config;->init(Lorg/json/JSONObject;Lcom/netease/ntunisdk/unilogger/configs/ConfigCallBack;)V

    .line 45
    invoke-direct {p0}, Lcom/netease/ntunisdk/unilogger/configs/Config;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
