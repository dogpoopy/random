.class Lcom/netease/mpay/oversea/ui/d$d$a;
.super Ljava/lang/Object;
.source "ChannelLoginApi.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/d$d;->b(ILcom/netease/mpay/oversea/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netease/mpay/oversea/j;

.field final synthetic c:Lcom/netease/mpay/oversea/ui/d$d;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/d$d;ILcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/d$d$a;->c:Lcom/netease/mpay/oversea/ui/d$d;

    iput p2, p0, Lcom/netease/mpay/oversea/ui/d$d$a;->a:I

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/d$d$a;->b:Lcom/netease/mpay/oversea/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/d$d$a;->c:Lcom/netease/mpay/oversea/ui/d$d;

    iget-object p2, p1, Lcom/netease/mpay/oversea/ui/d$d;->d:Lcom/netease/mpay/oversea/UnBindCallback;

    if-eqz p2, :cond_0

    .line 2
    iget p2, p0, Lcom/netease/mpay/oversea/ui/d$d$a;->a:I

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/ui/d$d;->a(Lcom/netease/mpay/oversea/ui/d$d;I)I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/d$d$a;->c:Lcom/netease/mpay/oversea/ui/d$d;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/d$d;->d:Lcom/netease/mpay/oversea/UnBindCallback;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/d$d$a;->b:Lcom/netease/mpay/oversea/j;

    iget-object v0, v0, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/netease/mpay/oversea/UnBindCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
