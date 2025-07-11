.class public Lcom/netease/mpay/oversea/ui/i$h;
.super Lcom/netease/mpay/oversea/ui/i$k;
.source "FinishActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field private f:I


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/s9;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/j;

    const/16 v1, 0x2713

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    const/16 v1, 0x66

    invoke-direct {p0, p1, v0, v1}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;I)V

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V
    .locals 6

    .line 2
    sget-object v2, Lcom/netease/mpay/oversea/ui/i$p;->a:Lcom/netease/mpay/oversea/ui/i$p;

    const/4 v1, 0x0

    const/16 v5, 0x66

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/i$p;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;I)V

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;I)V
    .locals 6

    .line 3
    sget-object v2, Lcom/netease/mpay/oversea/ui/i$p;->a:Lcom/netease/mpay/oversea/ui/i$p;

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/i$p;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/i$p;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/mpay/oversea/ui/i$k;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/i$p;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    .line 5
    iput p5, p0, Lcom/netease/mpay/oversea/ui/i$h;->f:I

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/i$h;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/mpay/oversea/ui/i$h;->f:I

    return p0
.end method
