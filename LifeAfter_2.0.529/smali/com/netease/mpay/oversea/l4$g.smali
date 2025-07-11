.class Lcom/netease/mpay/oversea/l4$g;
.super Ljava/lang/Object;
.source "InheritPasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/l4;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/l4$l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/netease/mpay/oversea/l4;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/l4;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/l4$g;->b:Lcom/netease/mpay/oversea/l4;

    iput-object p2, p0, Lcom/netease/mpay/oversea/l4$g;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/l4$g;->a:Landroid/app/Activity;

    const-string v0, "guide_transfer_code"

    const-string v1, "set_pw"

    invoke-virtual {p1, p2, v0, v1}, Lcom/netease/mpay/oversea/cb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
