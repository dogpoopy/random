.class Lcom/netease/ntunisdk/Alerts$2;
.super Ljava/lang/Object;
.source "Alerts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/Alerts;->alert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$alert:Landroid/app/AlertDialog;

.field final synthetic val$ok_listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/netease/ntunisdk/Alerts$2;->val$ok_listener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p2, p0, Lcom/netease/ntunisdk/Alerts$2;->val$alert:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lcom/netease/ntunisdk/Alerts$2;->val$ok_listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/netease/ntunisdk/Alerts$2;->val$alert:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/Alerts$2;->val$alert:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
