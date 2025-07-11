.class public Lcom/netease/mpay/oversea/p5;
.super Ljava/lang/Object;
.source "LoginCache.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/p5;->d:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/p5;->d:Z

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/p5;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/p5;->c:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/netease/mpay/oversea/p5;->a:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcom/netease/mpay/oversea/p5;->b:Ljava/lang/String;

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/p5;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/netease/mpay/oversea/p5;->c:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/p5;->b()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/p5;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/netease/mpay/oversea/p5;->c:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/p5;->b()V

    return-void
.end method
