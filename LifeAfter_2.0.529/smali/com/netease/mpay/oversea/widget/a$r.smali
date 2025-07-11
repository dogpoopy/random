.class Lcom/netease/mpay/oversea/widget/a$r;
.super Ljava/lang/Object;
.source "Alerter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic e:Lcom/netease/mpay/oversea/widget/a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/widget/a;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/a$r;->e:Lcom/netease/mpay/oversea/widget/a;

    iput-object p2, p0, Lcom/netease/mpay/oversea/widget/a$r;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/oversea/widget/a$r;->b:Landroid/content/DialogInterface$OnClickListener;

    iput-object p4, p0, Lcom/netease/mpay/oversea/widget/a$r;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/oversea/widget/a$r;->d:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/a$r;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/a$r;->b:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/widget/a$r;->e:Lcom/netease/mpay/oversea/widget/a;

    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/a;->a(Lcom/netease/mpay/oversea/widget/a;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/widget/a$r;->e:Lcom/netease/mpay/oversea/widget/a;

    invoke-static {v2}, Lcom/netease/mpay/oversea/widget/a;->b(Lcom/netease/mpay/oversea/widget/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/widget/a$r;->e:Lcom/netease/mpay/oversea/widget/a;

    invoke-static {v3}, Lcom/netease/mpay/oversea/widget/a;->c(Lcom/netease/mpay/oversea/widget/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/cb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/a$r;->b:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x2

    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/a$r;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/a$r;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/a$r;->d:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/widget/a$r;->e:Lcom/netease/mpay/oversea/widget/a;

    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/a;->a(Lcom/netease/mpay/oversea/widget/a;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/widget/a$r;->e:Lcom/netease/mpay/oversea/widget/a;

    invoke-static {v2}, Lcom/netease/mpay/oversea/widget/a;->b(Lcom/netease/mpay/oversea/widget/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/widget/a$r;->e:Lcom/netease/mpay/oversea/widget/a;

    invoke-static {v3}, Lcom/netease/mpay/oversea/widget/a;->d(Lcom/netease/mpay/oversea/widget/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/cb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/a$r;->d:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    :goto_0
    return-void
.end method
