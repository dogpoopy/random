.class Lcom/netease/ntunisdk/UniAlertDialog$3;
.super Ljava/lang/Object;
.source "UniAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/UniAlertDialog;->alertImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/UniAlertDialog;

.field final synthetic val$alert:Landroid/app/AlertDialog;

.field final synthetic val$cancel_listener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$negative:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/UniAlertDialog;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;Landroid/widget/TextView;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/netease/ntunisdk/UniAlertDialog$3;->this$0:Lcom/netease/ntunisdk/UniAlertDialog;

    iput-object p2, p0, Lcom/netease/ntunisdk/UniAlertDialog$3;->val$cancel_listener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/netease/ntunisdk/UniAlertDialog$3;->val$alert:Landroid/app/AlertDialog;

    iput-object p4, p0, Lcom/netease/ntunisdk/UniAlertDialog$3;->val$negative:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 100
    iget-object p1, p0, Lcom/netease/ntunisdk/UniAlertDialog$3;->val$cancel_listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/netease/ntunisdk/UniAlertDialog$3;->val$alert:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/UniAlertDialog$3;->val$alert:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 105
    iget-object p1, p0, Lcom/netease/ntunisdk/UniAlertDialog$3;->val$negative:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
