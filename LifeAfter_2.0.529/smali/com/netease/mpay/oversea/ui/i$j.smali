.class public Lcom/netease/mpay/oversea/ui/i$j;
.super Lcom/netease/mpay/oversea/ui/i$g;
.source "FinishActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netease/mpay/oversea/s9;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/ui/i$p;->g:Lcom/netease/mpay/oversea/ui/i$p;

    invoke-direct {p0, v0, p2}, Lcom/netease/mpay/oversea/ui/i$g;-><init>(Lcom/netease/mpay/oversea/ui/i$p;Lcom/netease/mpay/oversea/s9;)V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/i$j;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/i$j;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/i$j;->d:Ljava/lang/String;

    return-object p0
.end method
