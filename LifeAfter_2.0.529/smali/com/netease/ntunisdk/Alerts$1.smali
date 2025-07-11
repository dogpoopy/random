.class Lcom/netease/ntunisdk/Alerts$1;
.super Ljava/lang/Object;
.source "Alerts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/Alerts;->alert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cancel_listener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$cancel_text:Ljava/lang/String;

.field final synthetic val$ok_listener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$ok_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/netease/ntunisdk/Alerts$1;->val$cancel_text:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/ntunisdk/Alerts$1;->val$cancel_listener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/netease/ntunisdk/Alerts$1;->val$ok_text:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntunisdk/Alerts$1;->val$ok_listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/netease/ntunisdk/Alerts$1;->val$cancel_text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/netease/ntunisdk/Alerts$1;->val$cancel_listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    const/4 v1, -0x2

    .line 43
    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/Alerts$1;->val$cancel_text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/Alerts$1;->val$ok_text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/netease/ntunisdk/Alerts$1;->val$ok_listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    .line 46
    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    :goto_0
    return-void
.end method
