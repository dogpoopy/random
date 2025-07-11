.class Lcom/netease/mpay/oversea/ui/q$c;
.super Ljava/lang/Object;
.source "PermissionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/q;->m()V
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
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/q$c;->a:Lcom/netease/mpay/oversea/ui/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/q$c;->a:Lcom/netease/mpay/oversea/ui/q;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/q;->c(Lcom/netease/mpay/oversea/ui/q;)Lcom/netease/mpay/oversea/ui/q$f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/q$c;->a:Lcom/netease/mpay/oversea/ui/q;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/q;->c(Lcom/netease/mpay/oversea/ui/q;)Lcom/netease/mpay/oversea/ui/q$f;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/ui/q$f;->a(Z)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/q$c;->a:Lcom/netease/mpay/oversea/ui/q;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
