.class Lcom/netease/mpay/oversea/t9$f;
.super Lcom/netease/mpay/oversea/f1;
.source "SecondConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/t9;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Landroid/app/Activity;

.field final synthetic f:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic g:Landroid/app/AlertDialog;

.field final synthetic h:Lcom/netease/mpay/oversea/t9;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/t9;Landroid/widget/EditText;Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/t9$f;->h:Lcom/netease/mpay/oversea/t9;

    iput-object p2, p0, Lcom/netease/mpay/oversea/t9$f;->d:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/netease/mpay/oversea/t9$f;->e:Landroid/app/Activity;

    iput-object p4, p0, Lcom/netease/mpay/oversea/t9$f;->f:Landroid/content/DialogInterface$OnClickListener;

    iput-object p5, p0, Lcom/netease/mpay/oversea/t9$f;->g:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/t9$f;->d:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/t9$f;->e:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    .line 4
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/t9$f;->f:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/t9$f;->g:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/t9$f;->h:Lcom/netease/mpay/oversea/t9;

    invoke-static {p1}, Lcom/netease/mpay/oversea/t9;->a(Lcom/netease/mpay/oversea/t9;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 11
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/t9$f;->e:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/t9$f;->h:Lcom/netease/mpay/oversea/t9;

    invoke-static {v1}, Lcom/netease/mpay/oversea/t9;->a(Lcom/netease/mpay/oversea/t9;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/t9$f;->h:Lcom/netease/mpay/oversea/t9;

    invoke-static {v2}, Lcom/netease/mpay/oversea/t9;->d(Lcom/netease/mpay/oversea/t9;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/cb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/t9$f;->g:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    return-void
.end method
