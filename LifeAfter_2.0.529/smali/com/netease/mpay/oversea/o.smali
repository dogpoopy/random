.class public Lcom/netease/mpay/oversea/o;
.super Lcom/netease/mpay/oversea/x2;
.source "ApiResultEvent.java"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/netease/mpay/oversea/g6;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/x2;-><init>()V

    const/16 v0, 0xb

    .line 2
    iput v0, p0, Lcom/netease/mpay/oversea/x2;->a:I

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/o;->b:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/netease/mpay/oversea/o;->c:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/netease/mpay/oversea/o;->d:Lcom/netease/mpay/oversea/g6;

    return-void
.end method
