.class Lcom/netease/mpay/oversea/ga$a;
.super Ljava/lang/Object;
.source "ServerApiWithLoginCallback.java"

# interfaces
.implements Lcom/netease/mpay/oversea/widget/a$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ga;->a(ILcom/netease/mpay/oversea/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ga;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ga;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ga$a;->a:Lcom/netease/mpay/oversea/ga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ga$a;->a:Lcom/netease/mpay/oversea/ga;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ga;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/i9;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ga$a;->a:Lcom/netease/mpay/oversea/ga;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ga;->a(Lcom/netease/mpay/oversea/ga;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ga$a;->a:Lcom/netease/mpay/oversea/ga;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ga;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ga$a$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/ga$a$a;-><init>(Lcom/netease/mpay/oversea/ga$a;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/ui/q;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/q$f;)V

    :goto_0
    return-void
.end method
