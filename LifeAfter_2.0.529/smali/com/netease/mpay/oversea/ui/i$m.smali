.class public Lcom/netease/mpay/oversea/ui/i$m;
.super Lcom/netease/mpay/oversea/ui/i$k;
.source "FinishActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# instance fields
.field public f:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/ui/i$p;->c:Lcom/netease/mpay/oversea/ui/i$p;

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/netease/mpay/oversea/ui/i$k;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/i$p;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    .line 3
    iput p1, p0, Lcom/netease/mpay/oversea/ui/i$m;->f:I

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/ui/i$p;->c:Lcom/netease/mpay/oversea/ui/i$p;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/netease/mpay/oversea/ui/i$k;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/i$p;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    return-void
.end method
