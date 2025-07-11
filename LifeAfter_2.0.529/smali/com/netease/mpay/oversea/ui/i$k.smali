.class public Lcom/netease/mpay/oversea/ui/i$k;
.super Lcom/netease/mpay/oversea/ui/i$g;
.source "FinishActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field public d:Lcom/netease/mpay/oversea/j;

.field private e:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/i$p;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p1}, Lcom/netease/mpay/oversea/ui/i$g;-><init>(Lcom/netease/mpay/oversea/ui/i$p;Lcom/netease/mpay/oversea/s9;Ljava/lang/String;)V

    .line 2
    iput-object p4, p0, Lcom/netease/mpay/oversea/ui/i$k;->d:Lcom/netease/mpay/oversea/j;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/ui/i$k;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/i$k;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/mpay/oversea/ui/i$k;->e:Z

    return p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/i$k;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/ui/i$k;->e:Z

    return p1
.end method
