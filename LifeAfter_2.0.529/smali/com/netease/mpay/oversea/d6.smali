.class public Lcom/netease/mpay/oversea/d6;
.super Lcom/netease/mpay/oversea/x2;
.source "LoginRespEvent.java"


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Z

.field public e:Lcom/netease/mpay/oversea/j;

.field public f:Lcom/netease/mpay/oversea/e6;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/e6;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/netease/mpay/oversea/x2;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/netease/mpay/oversea/d6;->b:I

    const/16 v0, 0xb

    .line 32
    iput v0, p0, Lcom/netease/mpay/oversea/x2;->a:I

    .line 33
    iput-object p1, p0, Lcom/netease/mpay/oversea/d6;->f:Lcom/netease/mpay/oversea/e6;

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/d6;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/oversea/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/x2;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/netease/mpay/oversea/d6;->b:I

    const/16 v0, 0xb

    .line 10
    iput v0, p0, Lcom/netease/mpay/oversea/x2;->a:I

    .line 11
    iput-object p1, p0, Lcom/netease/mpay/oversea/d6;->e:Lcom/netease/mpay/oversea/j;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/d6;->d:Z

    .line 13
    iget v0, p1, Lcom/netease/mpay/oversea/j;->a:I

    iput v0, p0, Lcom/netease/mpay/oversea/d6;->b:I

    .line 14
    iget-object p1, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/d6;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Lcom/netease/mpay/oversea/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/d6;->e:Lcom/netease/mpay/oversea/j;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/d6;->d:Z

    return v0
.end method
