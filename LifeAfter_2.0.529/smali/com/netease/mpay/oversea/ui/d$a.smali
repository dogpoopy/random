.class Lcom/netease/mpay/oversea/ui/d$a;
.super Ljava/lang/Object;
.source "ChannelLoginApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/widget/a$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/d;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/r4;

.field final synthetic b:Lcom/netease/mpay/oversea/j;

.field final synthetic c:Lcom/netease/mpay/oversea/y5;

.field final synthetic d:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/r4;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/y5;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/d$a;->a:Lcom/netease/mpay/oversea/r4;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/d$a;->b:Lcom/netease/mpay/oversea/j;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/d$a;->c:Lcom/netease/mpay/oversea/y5;

    iput-object p4, p0, Lcom/netease/mpay/oversea/ui/d$a;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/i9;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/d$a;->a:Lcom/netease/mpay/oversea/r4;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/d$a;->b:Lcom/netease/mpay/oversea/j;

    iget-object v1, v1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/d$a;->c:Lcom/netease/mpay/oversea/y5;

    iget v2, v2, Lcom/netease/mpay/oversea/y5;->n:I

    const/16 v3, 0x3ee

    invoke-virtual {v0, v3, v1, v2}, Lcom/netease/mpay/oversea/r4;->onFailure(ILjava/lang/String;I)V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/d$a;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/d$a;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
