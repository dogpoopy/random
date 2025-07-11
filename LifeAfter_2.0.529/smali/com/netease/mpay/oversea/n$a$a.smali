.class Lcom/netease/mpay/oversea/n$a$a;
.super Ljava/lang/Object;
.source "ApiRefresh.java"

# interfaces
.implements Lcom/netease/mpay/oversea/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/n$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n$a$a;->a:Lcom/netease/mpay/oversea/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/thirdapi/e;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "refresh failed:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/mpay/oversea/n$a$a;->a:Lcom/netease/mpay/oversea/n$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/n$a;->a:Lcom/netease/mpay/oversea/n;

    iget-object v0, v0, Lcom/netease/mpay/oversea/n;->c:Lcom/netease/mpay/oversea/y5;

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onFailed"

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/netease/mpay/oversea/n$a$a;->a:Lcom/netease/mpay/oversea/n$a;

    iget-object p3, p3, Lcom/netease/mpay/oversea/n$a;->a:Lcom/netease/mpay/oversea/n;

    iget-object v0, p3, Lcom/netease/mpay/oversea/n;->c:Lcom/netease/mpay/oversea/y5;

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/y5;->j:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/n$a$a$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/n$a$a$a;-><init>(Lcom/netease/mpay/oversea/n$a$a;)V

    invoke-static {p3, p1, p2, v0}, Lcom/netease/mpay/oversea/n;->a(Lcom/netease/mpay/oversea/n;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/q5;)V

    return-void
.end method
