.class Lcom/netease/mpay/oversea/ui/q$a;
.super Ljava/lang/Object;
.source "PermissionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/q;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/q;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/q$a;->a:Lcom/netease/mpay/oversea/ui/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    new-instance p1, Lcom/netease/mpay/oversea/pa;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/q$a;->a:Lcom/netease/mpay/oversea/ui/q;

    iget-object v0, p2, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {p2}, Lcom/netease/mpay/oversea/ui/q;->a(Lcom/netease/mpay/oversea/ui/q;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/pa;->e()Lcom/netease/mpay/oversea/e9;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/e9;->b()Lcom/netease/mpay/oversea/f9;

    move-result-object p2

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h9;->e()Z

    move-result v0

    iput-boolean v0, p2, Lcom/netease/mpay/oversea/f9;->a:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p2, Lcom/netease/mpay/oversea/f9;->c:Z

    .line 5
    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/e9;->a(Lcom/netease/mpay/oversea/f9;)V

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object p1

    iget-boolean p2, p2, Lcom/netease/mpay/oversea/f9;->c:Z

    iput-boolean p2, p1, Lcom/netease/mpay/oversea/h9;->c:Z

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/q$a;->a:Lcom/netease/mpay/oversea/ui/q;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/q;->b(Lcom/netease/mpay/oversea/ui/q;)V

    return-void
.end method
