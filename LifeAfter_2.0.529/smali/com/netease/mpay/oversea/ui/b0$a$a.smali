.class Lcom/netease/mpay/oversea/ui/b0$a$a;
.super Ljava/lang/Object;
.source "WebViewLoginHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/b0$a;->onPNLogin(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/oversea/ui/b0$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/b0$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/b0$a$a;->b:Lcom/netease/mpay/oversea/ui/b0$a;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/b0$a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/b0$a$a;->b:Lcom/netease/mpay/oversea/ui/b0$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/b0$a;->a:Lcom/netease/mpay/oversea/ui/b0;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    check-cast v0, Lcom/netease/mpay/oversea/ui/a0;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/a0;->n()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/b0$a$a;->b:Lcom/netease/mpay/oversea/ui/b0$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/b0$a;->a:Lcom/netease/mpay/oversea/ui/b0;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/b0$a$a;->b:Lcom/netease/mpay/oversea/ui/b0$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/b0$a;->a:Lcom/netease/mpay/oversea/ui/b0;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/b0$a$a;->b:Lcom/netease/mpay/oversea/ui/b0$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/b0$a;->a:Lcom/netease/mpay/oversea/ui/b0;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__pn_migrate_protocol:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/b0$a$a;->b:Lcom/netease/mpay/oversea/ui/b0$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/b0$a;->a:Lcom/netease/mpay/oversea/ui/b0;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    new-instance v5, Lcom/netease/mpay/oversea/ui/b0$a$a$a;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oversea/ui/b0$a$a$a;-><init>(Lcom/netease/mpay/oversea/ui/b0$a$a;)V

    new-instance v7, Lcom/netease/mpay/oversea/ui/b0$a$a$b;

    invoke-direct {v7, p0}, Lcom/netease/mpay/oversea/ui/b0$a$a$b;-><init>(Lcom/netease/mpay/oversea/ui/b0$a$a;)V

    invoke-static/range {v2 .. v7}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method
