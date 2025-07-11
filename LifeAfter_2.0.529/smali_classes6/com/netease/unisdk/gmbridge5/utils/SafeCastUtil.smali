.class public Lcom/netease/unisdk/gmbridge5/utils/SafeCastUtil;
.super Ljava/lang/Object;
.source "SafeCastUtil.java"


# static fields
.field private static final G:J = 0x40000000L

.field private static final K:J = 0x400L

.field private static final M:J = 0x100000L

.field private static final T:J = 0x10000000000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert2UnitStr(J)Ljava/lang/String;
    .locals 7
    .param p0, "value"    # J

    .line 24
    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    .line 25
    .local v1, "dividers":[J
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TB"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "GB"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "MB"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "KB"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "B"

    aput-object v3, v0, v2

    .line 26
    .local v0, "units":[Ljava/lang/String;
    const-wide/16 v2, 0x1

    cmp-long v4, p0, v2

    if-gez v4, :cond_0

    .line 27
    const-string v2, "0"

    return-object v2

    .line 30
    :cond_0
    const/4 v2, 0x0

    .line 31
    .local v2, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 32
    aget-wide v4, v1, v3

    .line 33
    .local v4, "divider":J
    cmp-long v6, p0, v4

    if-ltz v6, :cond_1

    .line 34
    aget-object v6, v0, v3

    invoke-static {p0, p1, v4, v5, v6}, Lcom/netease/unisdk/gmbridge5/utils/SafeCastUtil;->format(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    goto :goto_1

    .line 31
    .end local v4    # "divider":J
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    .end local v3    # "i":I
    :cond_2
    :goto_1
    return-object v2

    :array_0
    .array-data 8
        0x10000000000L
        0x40000000
        0x100000
        0x400
        0x1
    .end array-data
.end method

.method private static format(JJLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # J
    .param p2, "divider"    # J
    .param p4, "unit"    # Ljava/lang/String;

    .line 42
    const-wide/16 v0, 0x1

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    long-to-double v0, p0

    long-to-double v2, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    goto :goto_0

    :cond_0
    long-to-double v0, p0

    .line 43
    .local v0, "result":D
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    const-string v3, "%.1f %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static str2int(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 17
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .local v0, "e":Ljava/lang/Exception;
    return p1
.end method
