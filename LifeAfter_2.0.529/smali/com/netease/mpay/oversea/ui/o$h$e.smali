.class Lcom/netease/mpay/oversea/ui/o$h$e;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/o$h;->a(ILcom/netease/mpay/oversea/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/o$h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/o$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h$e;->a:Lcom/netease/mpay/oversea/ui/o$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h$e;->a:Lcom/netease/mpay/oversea/ui/o$h;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/netease/mpay/oversea/ui/o;->f:Z

    .line 2
    iget-object p2, p1, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mpay/oversea/ui/o$h$e$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/ui/o$h$e$a;-><init>(Lcom/netease/mpay/oversea/ui/o$h$e;)V

    invoke-virtual {p2, p1, v0}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method
