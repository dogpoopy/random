.class Lcom/netease/ntunisdk/base/view/Alerter$2;
.super Ljava/lang/Object;
.source "Alerter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/view/Alerter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZZLcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic b:Lcom/netease/ntunisdk/base/view/Alerter;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/view/Alerter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter$2;->b:Lcom/netease/ntunisdk/base/view/Alerter;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/view/Alerter$2;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 98
    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter$2;->a:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/netease/ntunisdk/base/view/Alerter$2;->b:Lcom/netease/ntunisdk/base/view/Alerter;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/view/Alerter;->a(Lcom/netease/ntunisdk/base/view/Alerter;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter$2;->b:Lcom/netease/ntunisdk/base/view/Alerter;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/view/Alerter;->dismiss()V

    return-void
.end method
