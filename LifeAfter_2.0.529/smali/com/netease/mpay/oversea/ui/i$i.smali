.class public Lcom/netease/mpay/oversea/ui/i$i;
.super Lcom/netease/mpay/oversea/ui/i$g;
.source "FinishActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/ui/i$p;->d:Lcom/netease/mpay/oversea/ui/i$p;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/ui/i$g;-><init>(Lcom/netease/mpay/oversea/ui/i$p;Lcom/netease/mpay/oversea/s9;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/i$i;->d:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/i$i;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/ui/i$i;->d:Z

    return-void
.end method
