.class Lcom/netease/mpay/oversea/q7$n;
.super Ljava/lang/Object;
.source "PassportLoginHome.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/q7;->c(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Lcom/netease/mpay/oversea/q7;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/q7;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/q7$n;->b:Lcom/netease/mpay/oversea/q7;

    iput-object p2, p0, Lcom/netease/mpay/oversea/q7$n;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/q7$n;->a:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const-string v0, "drawable"

    if-eqz p2, :cond_0

    const-string p2, "netease_mpay_oversea__login_inputbox_pressed"

    .line 3
    invoke-static {p2, v0}, Lcom/netease/mpay/oversea/g8;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    const-string p2, "netease_mpay_oversea__login_inputbox"

    .line 4
    invoke-static {p2, v0}, Lcom/netease/mpay/oversea/g8;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 5
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method
