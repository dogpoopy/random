.class public Lcom/netease/pharos/netlag/UDPCostComputer;
.super Ljava/lang/Object;
.source "UDPCostComputer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/pharos/netlag/UDPCostComputer$CallBack;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private filterArrays([JI)[J
    .locals 9

    if-eqz p2, :cond_4

    .line 115
    array-length v0, p1

    if-ne p2, v0, :cond_0

    goto :goto_3

    .line 116
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 117
    new-array p2, v0, [J

    .line 119
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-wide v4, p1, v2

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    if-lt v3, v0, :cond_2

    goto :goto_2

    .line 122
    :cond_2
    aput-wide v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object p2

    :cond_4
    :goto_3
    return-object p1
.end method

.method private getResult(I[JI)Lorg/json/JSONObject;
    .locals 28

    move/from16 v0, p1

    .line 66
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 67
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 68
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    .line 74
    invoke-direct {v6, v7, v8}, Lcom/netease/pharos/netlag/UDPCostComputer;->filterArrays([JI)[J

    move-result-object v7

    const-wide/16 v9, 0x3e8

    if-eqz v7, :cond_3

    .line 75
    array-length v11, v7

    if-lez v11, :cond_3

    .line 76
    invoke-static {v7}, Ljava/util/Arrays;->sort([J)V

    .line 77
    invoke-static {v7}, Lcom/netease/pharos/netlag/UDPCostComputer;->std([J)D

    move-result-wide v9

    .line 78
    array-length v11, v7

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    aget-wide v13, v7, v11

    const/4 v11, 0x0

    .line 79
    aget-wide v15, v7, v11

    .line 80
    array-length v4, v7

    div-int/lit8 v4, v4, 0x2

    aget-wide v4, v7, v4

    .line 82
    array-length v11, v7

    const/4 v12, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    :goto_0
    if-ge v12, v11, :cond_1

    aget-wide v20, v7, v12

    sub-long v22, v20, v4

    move-wide/from16 v24, v4

    .line 83
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    long-to-double v4, v4

    cmpg-double v22, v4, v9

    if-gez v22, :cond_0

    add-long v17, v17, v20

    add-int/lit8 v19, v19, 0x1

    :cond_0
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v4, v24

    goto :goto_0

    :cond_1
    move-wide/from16 v24, v4

    if-nez v19, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    move/from16 v12, v19

    :goto_1
    int-to-long v4, v12

    .line 89
    div-long v4, v17, v4

    move-wide v6, v4

    move-wide v4, v15

    move-wide/from16 v11, v24

    move-wide/from16 v26, v9

    move-wide v9, v13

    move-wide/from16 v13, v26

    goto :goto_2

    :cond_3
    const-wide/16 v4, 0x0

    move v8, v0

    move-wide v13, v4

    move-wide v4, v9

    move-wide v6, v4

    move-wide v11, v6

    :goto_2
    const-string v15, "rtt"

    .line 98
    invoke-virtual {v1, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v15, "max"

    .line 99
    invoke-virtual {v2, v15, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v9, "min"

    .line 100
    invoke-virtual {v2, v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "mid"

    .line 101
    invoke-virtual {v2, v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "std"

    .line 102
    invoke-virtual {v2, v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "total"

    .line 103
    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "send"

    .line 104
    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "recv"

    sub-int/2addr v0, v8

    .line 105
    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "loss"

    .line 106
    invoke-virtual {v3, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "pkg"

    .line 107
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static std([J)D
    .locals 13

    .line 15
    array-length v0, p0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 18
    aget-wide v7, p0, v4

    long-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    int-to-double v7, v0

    .line 20
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    :goto_1
    if-ge v1, v0, :cond_1

    .line 23
    aget-wide v9, p0, v1

    long-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v9, v5

    aget-wide v11, p0, v1

    long-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v11, v5

    mul-double v9, v9, v11

    add-double/2addr v2, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 25
    :cond_1
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public compute(Ljava/util/ArrayList;Ljava/util/HashMap;I)Lorg/json/JSONObject;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;>;I)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;

    .line 31
    iget-object v2, v1, Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;->ip:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    mul-int/lit8 v3, p3, 0x2

    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v5, p3, v3

    .line 34
    new-array v6, p3, [J

    :goto_1
    if-ge v4, v5, :cond_0

    add-int v7, p3, v4

    .line 36
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v7, v9

    aput-wide v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    :goto_2
    if-ge v5, p3, :cond_1

    const-wide/16 v7, -0x1

    .line 39
    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 42
    :cond_1
    :try_start_0
    invoke-direct {p0, p3, v6, v3}, Lcom/netease/pharos/netlag/UDPCostComputer;->getResult(I[JI)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "NetLag "

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;->ip:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "],result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, v1, Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    nop

    goto/16 :goto_0

    :cond_2
    return-object v0
.end method
