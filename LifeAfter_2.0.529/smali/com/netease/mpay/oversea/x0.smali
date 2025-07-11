.class public Lcom/netease/mpay/oversea/x0;
.super Lcom/netease/mpay/oversea/x2;
.source "CloseEvent.java"


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/x2;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/x0;->b:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/netease/mpay/oversea/x2;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/x0;->b:Z

    return-void
.end method
