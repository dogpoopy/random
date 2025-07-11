.class public Lcom/netease/mpay/oversea/l4$j;
.super Ljava/lang/Object;
.source "InheritPasswordDialog.java"

# interfaces
.implements Lcom/netease/mpay/oversea/l4$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/l4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/netease/mpay/oversea/l4$j;
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/l4$j;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/l4$j;-><init>()V

    return-object v0
.end method


# virtual methods
.method a(Landroid/app/Dialog;)Lcom/netease/mpay/oversea/l4$j;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/netease/mpay/oversea/l4$j;->a:Landroid/app/Dialog;

    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/l4$j;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/l4$j;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/netease/mpay/oversea/l4$j;->b:Landroid/widget/TextView;

    .line 2
    iput-object v0, p0, Lcom/netease/mpay/oversea/l4$j;->a:Landroid/app/Dialog;

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/l4$j;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/l4$j;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
