.class Lcom/netease/mpay/oversea/sa$i;
.super Ljava/lang/Object;
.source "SwitchView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/sa;->a(Lcom/netease/mpay/oversea/t8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/sa;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/sa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/sa$i;->a:Lcom/netease/mpay/oversea/sa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/sa$i;->a:Lcom/netease/mpay/oversea/sa;

    invoke-static {p1}, Lcom/netease/mpay/oversea/sa;->k(Lcom/netease/mpay/oversea/sa;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/sa$i;->a:Lcom/netease/mpay/oversea/sa;

    invoke-static {p2}, Lcom/netease/mpay/oversea/sa;->l(Lcom/netease/mpay/oversea/sa;)Landroid/app/Activity;

    move-result-object p2

    const-string v0, "delete_confirmed"

    invoke-virtual {p1, p2, v0}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
