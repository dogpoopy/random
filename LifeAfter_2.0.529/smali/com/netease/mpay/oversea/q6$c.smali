.class Lcom/netease/mpay/oversea/q6$c;
.super Lcom/netease/mpay/oversea/f1;
.source "NewGuestDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/q6;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic e:Landroid/app/AlertDialog;

.field final synthetic f:Lcom/netease/mpay/oversea/q6;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/q6;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/q6$c;->f:Lcom/netease/mpay/oversea/q6;

    iput-object p2, p0, Lcom/netease/mpay/oversea/q6$c;->d:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/netease/mpay/oversea/q6$c;->e:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/q6$c;->d:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/q6$c;->e:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/q6$c;->e:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
