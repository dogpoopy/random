.class Lcom/netease/mpay/oversea/widget/a$u$a;
.super Ljava/lang/Object;
.source "Alerter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/widget/a$u;->a(Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a$u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/widget/a$v;

.field final synthetic b:Lcom/netease/mpay/oversea/widget/a$u;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/widget/a$u;Lcom/netease/mpay/oversea/widget/a$v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/a$u$a;->b:Lcom/netease/mpay/oversea/widget/a$u;

    iput-object p2, p0, Lcom/netease/mpay/oversea/widget/a$u$a;->a:Lcom/netease/mpay/oversea/widget/a$v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/widget/a$u$a;->a:Lcom/netease/mpay/oversea/widget/a$v;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/netease/mpay/oversea/widget/a$v;->a()V

    :cond_0
    return-void
.end method
