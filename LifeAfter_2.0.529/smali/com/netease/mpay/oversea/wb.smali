.class public Lcom/netease/mpay/oversea/wb;
.super Lcom/netease/mpay/oversea/x2;
.source "UserCenterConfigEvent.java"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/w2;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/netease/mpay/oversea/yb;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/x2;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/wb;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/yb;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/netease/mpay/oversea/wb;->e:Lcom/netease/mpay/oversea/yb;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "home"

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/wb;->f:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/netease/mpay/oversea/wb;->f:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/w2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/wb;->d:Ljava/util/HashMap;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/wb;->b:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "home"

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/wb;->b:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/wb;->b:Ljava/lang/String;

    const-string v0, "bind"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/wb;->c:Z

    :cond_1
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/wb;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/w2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/wb;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/wb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/netease/mpay/oversea/yb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/wb;->e:Lcom/netease/mpay/oversea/yb;

    return-object v0
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/wb;->f:Ljava/lang/String;

    const-string v1, "security_email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/wb;->f:Ljava/lang/String;

    const-string v1, "setting"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/wb;->f:Ljava/lang/String;

    const-string v1, "restore_account"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/wb;->c:Z

    return v0
.end method
