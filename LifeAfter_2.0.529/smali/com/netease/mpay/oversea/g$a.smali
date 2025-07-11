.class public final Lcom/netease/mpay/oversea/g$a;
.super Lcom/netease/mpay/oversea/g;
.source "ApiCallException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/j;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/g;-><init>(Lcom/netease/mpay/oversea/j;)V

    const/16 v0, 0x2712

    .line 2
    iput v0, p0, Lcom/netease/mpay/oversea/g;->a:I

    .line 3
    sget-object v0, Lcom/netease/mpay/oversea/d;->c:Lcom/netease/mpay/oversea/d;

    iput-object v0, p1, Lcom/netease/mpay/oversea/j;->d:Lcom/netease/mpay/oversea/d;

    return-void
.end method
