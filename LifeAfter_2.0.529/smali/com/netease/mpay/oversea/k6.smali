.class public Lcom/netease/mpay/oversea/k6;
.super Ljava/lang/Object;
.source "MinorConfig.java"


# instance fields
.field public a:Z

.field public b:Lcom/netease/mpay/oversea/h8;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/h8;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/h8;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/k6;->b:Lcom/netease/mpay/oversea/h8;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/k6;->a:Z

    return-void
.end method
