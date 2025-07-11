.class public Lcom/netease/mpay/oversea/trackers/a$d;
.super Lcom/netease/mpay/oversea/trackers/a;
.source "TraceData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/trackers/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "login_start"

    const/16 v1, 0x270f

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
