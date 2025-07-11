.class public Lcom/appsflyer/internal/AFe1tSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final AFKeystoreWrapper:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/appsflyer/internal/AFe1tSDK;->AFKeystoreWrapper:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 23
    :cond_1
    check-cast p1, Lcom/appsflyer/internal/AFe1tSDK;

    .line 25
    iget-wide v2, p0, Lcom/appsflyer/internal/AFe1tSDK;->AFKeystoreWrapper:J

    iget-wide v4, p1, Lcom/appsflyer/internal/AFe1tSDK;->AFKeystoreWrapper:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 30
    iget-wide v0, p0, Lcom/appsflyer/internal/AFe1tSDK;->AFKeystoreWrapper:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method
