.class public final Lcom/appsflyer/internal/AFi1gSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final AFInAppEventParameterName:Ljava/lang/String;

.field private final AFInAppEventType:I

.field private AFKeystoreWrapper:D

.field private final AFLogger:Ljava/util/concurrent/Executor;

.field private final e:[[F

.field private final registerClient:[J

.field private unregisterClient:J

.field private final valueOf:I

.field private final values:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/hardware/Sensor;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [[F

    .line 43
    iput-object v1, p0, Lcom/appsflyer/internal/AFi1gSDK;->e:[[F

    new-array v0, v0, [J

    .line 44
    iput-object v0, p0, Lcom/appsflyer/internal/AFi1gSDK;->registerClient:[J

    .line 56
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iput v0, p0, Lcom/appsflyer/internal/AFi1gSDK;->valueOf:I

    .line 57
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iput-object v0, p0, Lcom/appsflyer/internal/AFi1gSDK;->values:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p1, v1

    :cond_1
    iput-object p1, p0, Lcom/appsflyer/internal/AFi1gSDK;->AFInAppEventParameterName:Ljava/lang/String;

    .line 59
    iget p1, p0, Lcom/appsflyer/internal/AFi1gSDK;->valueOf:I

    iget-object v0, p0, Lcom/appsflyer/internal/AFi1gSDK;->values:Ljava/lang/String;

    iget-object v1, p0, Lcom/appsflyer/internal/AFi1gSDK;->AFInAppEventParameterName:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1f

    mul-int/lit8 p1, p1, 0x1f

    .line 2071
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x1f

    .line 2072
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr p1, v0

    .line 59
    iput p1, p0, Lcom/appsflyer/internal/AFi1gSDK;->AFInAppEventType:I

    .line 60
    iput-object p2, p0, Lcom/appsflyer/internal/AFi1gSDK;->AFLogger:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static AFInAppEventParameterName([F)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 93
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private AFInAppEventParameterName()Z
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1gSDK;->e:[[F

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private AFInAppEventType(Landroid/hardware/SensorEvent;)V
    .locals 12

    .line 110
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 111
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 114
    iget-object v4, p0, Lcom/appsflyer/internal/AFi1gSDK;->e:[[F

    const/4 v5, 0x0

    aget-object v6, v4, v5

    if-nez v6, :cond_0

    .line 116
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    aput-object p1, v4, v5

    .line 117
    iget-object p1, p0, Lcom/appsflyer/internal/AFi1gSDK;->registerClient:[J

    aput-wide v2, p1, v5

    return-void

    :cond_0
    const/4 v5, 0x1

    .line 119
    aget-object v4, v4, v5

    if-nez v4, :cond_1

    .line 121
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1gSDK;->e:[[F

    aput-object p1, v0, v5

    .line 123
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1gSDK;->registerClient:[J

    aput-wide v2, v0, v5

    .line 124
    invoke-static {v6, p1}, Lcom/appsflyer/internal/AFi1gSDK;->AFKeystoreWrapper([F[F)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/AFi1gSDK;->AFKeystoreWrapper:D

    return-void

    :cond_1
    const-wide/32 v7, 0x2faf080

    .line 128
    iget-wide v9, p0, Lcom/appsflyer/internal/AFi1gSDK;->unregisterClient:J

    sub-long v9, v0, v9

    cmp-long v11, v7, v9

    if-gtz v11, :cond_3

    .line 129
    iput-wide v0, p0, Lcom/appsflyer/internal/AFi1gSDK;->unregisterClient:J

    .line 130
    invoke-static {v4, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object p1, p0, Lcom/appsflyer/internal/AFi1gSDK;->registerClient:[J

    aput-wide v2, p1, v5

    return-void

    .line 134
    :cond_2
    invoke-static {v6, p1}, Lcom/appsflyer/internal/AFi1gSDK;->AFKeystoreWrapper([F[F)D

    move-result-wide v0

    .line 135
    iget-wide v6, p0, Lcom/appsflyer/internal/AFi1gSDK;->AFKeystoreWrapper:D

    cmpl-double v4, v0, v6

    if-lez v4, :cond_3

    .line 136
    iget-object v4, p0, Lcom/appsflyer/internal/AFi1gSDK;->e:[[F

    array-length v6, p1

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    aput-object p1, v4, v5

    .line 137
    iget-object p1, p0, Lcom/appsflyer/internal/AFi1gSDK;->registerClient:[J

    aput-wide v2, p1, v5

    .line 138
    iput-wide v0, p0, Lcom/appsflyer/internal/AFi1gSDK;->AFKeystoreWrapper:D

    :cond_3
    return-void
.end method

.method private AFInAppEventType(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 176
    iget v0, p0, Lcom/appsflyer/internal/AFi1gSDK;->valueOf:I

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/appsflyer/internal/AFi1gSDK;->values:Ljava/lang/String;

    .line 177
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/appsflyer/internal/AFi1gSDK;->AFInAppEventParameterName:Ljava/lang/String;

    .line 178
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static AFKeystoreWrapper([F[F)D
    .locals 8

    .line 81
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 84
    aget v4, p0, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic lambda$UmxkfM1JEonijbCSzfipw3GDwvo(Lcom/appsflyer/internal/AFi1gSDK;Landroid/hardware/SensorEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFi1gSDK;->values(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method private valueOf()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 191
    iget v1, p0, Lcom/appsflyer/internal/AFi1gSDK;->valueOf:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1gSDK;->values:Ljava/lang/String;

    const-string v2, "sN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1gSDK;->AFInAppEventParameterName:Ljava/lang/String;

    const-string v2, "sV"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1gSDK;->e:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 196
    invoke-static {v1}, Lcom/appsflyer/internal/AFi1gSDK;->AFInAppEventParameterName([F)Ljava/util/List;

    move-result-object v1

    const-string v2, "sVS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1gSDK;->e:[[F

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    .line 200
    invoke-static {v1}, Lcom/appsflyer/internal/AFi1gSDK;->AFInAppEventParameterName([F)Ljava/util/List;

    move-result-object v1

    const-string v2, "sVE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private synthetic values(Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFi1gSDK;->AFInAppEventType(Landroid/hardware/SensorEvent;)V

    return-void
.end method


# virtual methods
.method final AFInAppEventType(Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/appsflyer/internal/AFi1gSDK;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;Z)V"
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Lcom/appsflyer/internal/AFi1gSDK;->AFInAppEventParameterName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    invoke-direct {p0}, Lcom/appsflyer/internal/AFi1gSDK;->valueOf()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 2210
    iget-object p1, p0, Lcom/appsflyer/internal/AFi1gSDK;->e:[[F

    array-length p1, p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2211
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1gSDK;->e:[[F

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2213
    :cond_0
    iget-object p1, p0, Lcom/appsflyer/internal/AFi1gSDK;->registerClient:[J

    array-length p1, p1

    :goto_1
    const-wide/16 v0, 0x0

    if-ge p2, p1, :cond_1

    .line 2214
    iget-object v2, p0, Lcom/appsflyer/internal/AFi1gSDK;->registerClient:[J

    aput-wide v0, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x0

    .line 2216
    iput-wide p1, p0, Lcom/appsflyer/internal/AFi1gSDK;->AFKeystoreWrapper:D

    .line 2217
    iput-wide v0, p0, Lcom/appsflyer/internal/AFi1gSDK;->unregisterClient:J

    return-void

    .line 170
    :cond_2
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 171
    invoke-direct {p0}, Lcom/appsflyer/internal/AFi1gSDK;->valueOf()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 243
    :cond_0
    instance-of v0, p1, Lcom/appsflyer/internal/AFi1gSDK;

    if-eqz v0, :cond_1

    .line 244
    check-cast p1, Lcom/appsflyer/internal/AFi1gSDK;

    .line 245
    iget v0, p1, Lcom/appsflyer/internal/AFi1gSDK;->valueOf:I

    iget-object v1, p1, Lcom/appsflyer/internal/AFi1gSDK;->values:Ljava/lang/String;

    iget-object p1, p1, Lcom/appsflyer/internal/AFi1gSDK;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/appsflyer/internal/AFi1gSDK;->AFInAppEventType(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/appsflyer/internal/AFi1gSDK;->AFInAppEventType:I

    return v0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 101
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1gSDK;->AFLogger:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/-$$Lambda$AFi1gSDK$UmxkfM1JEonijbCSzfipw3GDwvo;

    invoke-direct {v1, p0, p1}, Lcom/appsflyer/internal/-$$Lambda$AFi1gSDK$UmxkfM1JEonijbCSzfipw3GDwvo;-><init>(Lcom/appsflyer/internal/AFi1gSDK;Landroid/hardware/SensorEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFi1gSDK;->AFInAppEventType(Landroid/hardware/SensorEvent;)V

    return-void
.end method
