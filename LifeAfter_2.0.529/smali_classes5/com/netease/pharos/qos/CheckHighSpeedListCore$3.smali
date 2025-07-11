.class Lcom/netease/pharos/qos/CheckHighSpeedListCore$3;
.super Ljava/lang/Object;
.source "CheckHighSpeedListCore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/qos/CheckHighSpeedListCore;->sort()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/netease/pharos/config/CheckResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;


# direct methods
.method constructor <init>(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore$3;->this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/netease/pharos/config/CheckResult;Lcom/netease/pharos/config/CheckResult;)I
    .locals 5

    .line 275
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 270
    check-cast p1, Lcom/netease/pharos/config/CheckResult;

    check-cast p2, Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {p0, p1, p2}, Lcom/netease/pharos/qos/CheckHighSpeedListCore$3;->compare(Lcom/netease/pharos/config/CheckResult;Lcom/netease/pharos/config/CheckResult;)I

    move-result p1

    return p1
.end method
